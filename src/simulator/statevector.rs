//! High-performance dense statevector quantum simulator with dynamic mid-circuit feedback.
//!
//! Simulates multi-qubit wavefunctions up to 28 qubits, executing OpenQASM 3.0 gate streams,
//! projective measurements with state collapse, conditional branching, and resets.

use crate::ast::{GateCall, Program, Statement};
use crate::gates::{Complex64, GateKind};
use crate::types::{BinaryOp, ClassicalRef, Expression, QubitRef};
use std::collections::HashMap;

/// Dense statevector representation of an N-qubit quantum state.
pub struct StateVector {
    pub num_qubits: usize,
    pub amplitudes: Vec<Complex64>,
    pub classical_bits: HashMap<String, Vec<bool>>,
    pub classical_vars: HashMap<String, i64>,
}

impl StateVector {
    /// Initialize statevector in the all-zero ground state |0...0>.
    pub fn new(num_qubits: usize) -> Self {
        assert!(num_qubits <= 28, "StateVector limited to 28 qubits (256M amplitudes)");
        let size = 1usize << num_qubits;
        let mut amplitudes = vec![Complex64::ZERO; size];
        amplitudes[0] = Complex64::ONE;

        Self {
            num_qubits,
            amplitudes,
            classical_bits: HashMap::new(),
            classical_vars: HashMap::new(),
        }
    }

    /// Reset statevector to ground state |0...0>.
    pub fn reset_all(&mut self) {
        self.amplitudes.fill(Complex64::ZERO);
        self.amplitudes[0] = Complex64::ONE;
    }

    /// Apply a 1-qubit 2x2 unitary matrix to target qubit.
    pub fn apply_1q_matrix(&mut self, target: usize, u: &[[Complex64; 2]; 2]) {
        assert!(target < self.num_qubits);
        let stride = 1usize << target;
        let step = stride << 1;

        for base in (0..self.amplitudes.len()).step_by(step) {
            for i in 0..stride {
                let idx0 = base + i;
                let idx1 = idx0 + stride;

                let a0 = self.amplitudes[idx0];
                let a1 = self.amplitudes[idx1];

                // [u00, u01] [a0]
                // [u10, u11] [a1]
                let new_a0 = u[0][0].mul(a0).add(u[0][1].mul(a1));
                let new_a1 = u[1][0].mul(a0).add(u[1][1].mul(a1));

                self.amplitudes[idx0] = new_a0;
                self.amplitudes[idx1] = new_a1;
            }
        }
    }

    /// Apply standard Controlled-NOT (CX) gate.
    pub fn apply_cx(&mut self, control: usize, target: usize) {
        assert!(control < self.num_qubits && target < self.num_qubits && control != target);
        let ctrl_mask = 1usize << control;
        let targ_mask = 1usize << target;

        for i in 0..self.amplitudes.len() {
            if (i & ctrl_mask) != 0 && (i & targ_mask) == 0 {
                let j = i ^ targ_mask;
                self.amplitudes.swap(i, j);
            }
        }
    }

    /// Apply Controlled-Z (CZ) gate.
    pub fn apply_cz(&mut self, control: usize, target: usize) {
        assert!(control < self.num_qubits && target < self.num_qubits && control != target);
        let mask = (1usize << control) | (1usize << target);

        for i in 0..self.amplitudes.len() {
            if (i & mask) == mask {
                self.amplitudes[i] = self.amplitudes[i].scale(-1.0);
            }
        }
    }

    /// Apply SWAP gate between two qubits.
    pub fn apply_swap(&mut self, q0: usize, q1: usize) {
        assert!(q0 < self.num_qubits && q1 < self.num_qubits && q0 != q1);
        let mask0 = 1usize << q0;
        let mask1 = 1usize << q1;

        for i in 0..self.amplitudes.len() {
            let bit0 = (i & mask0) != 0;
            let bit1 = (i & mask1) != 0;
            if bit0 && !bit1 {
                let j = (i ^ mask0) | mask1;
                self.amplitudes.swap(i, j);
            }
        }
    }

    /// Perform projective measurement of a single qubit in the computational basis.
    /// Collapses the wavefunction and returns the measured classical boolean outcome.
    pub fn measure(&mut self, target: usize, pseudo_random: f64) -> bool {
        assert!(target < self.num_qubits);
        let mask = 1usize << target;

        // Compute probability of finding target qubit in state |1>
        let mut prob1 = 0.0;
        for i in 0..self.amplitudes.len() {
            if (i & mask) != 0 {
                prob1 += self.amplitudes[i].norm_sq();
            }
        }

        let outcome = pseudo_random < prob1;
        let norm = if outcome { prob1.sqrt() } else { (1.0 - prob1).max(0.0).sqrt() };

        if norm > 1e-15 {
            let inv_norm = 1.0 / norm;
            for i in 0..self.amplitudes.len() {
                let bit = (i & mask) != 0;
                if bit == outcome {
                    self.amplitudes[i] = self.amplitudes[i].scale(inv_norm);
                } else {
                    self.amplitudes[i] = Complex64::ZERO;
                }
            }
        }

        outcome
    }

    /// Reset target qubit to |0> ground state.
    pub fn reset_qubit(&mut self, target: usize) {
        // Measure qubit first
        let outcome = self.measure(target, 0.0);
        if outcome {
            // Apply X gate to flip |1> back to |0>
            let x_matrix = GateKind::X.unitary_1q(&[]).unwrap();
            self.apply_1q_matrix(target, &x_matrix);
        }
    }

    /// Compute full statevector probability distribution.
    pub fn probabilities(&self) -> Vec<f64> {
        self.amplitudes.iter().map(|a| a.norm_sq()).collect()
    }

    /// Evaluate classical boolean condition for dynamic OpenQASM 3.0 control flow.
    pub fn eval_condition(&self, cond: &Expression) -> bool {
        match cond {
            Expression::Boolean(b) => *b,
            Expression::Binary(BinaryOp::Eq, left, right) => {
                self.eval_expr(left) == self.eval_expr(right)
            }
            Expression::Binary(BinaryOp::Neq, left, right) => {
                self.eval_expr(left) != self.eval_expr(right)
            }
            Expression::Binary(BinaryOp::Lt, left, right) => {
                self.eval_expr(left) < self.eval_expr(right)
            }
            Expression::Binary(BinaryOp::Gt, left, right) => {
                self.eval_expr(left) > self.eval_expr(right)
            }
            _ => false,
        }
    }

    fn eval_expr(&self, expr: &Expression) -> i64 {
        match expr {
            Expression::Integer(n) => *n,
            Expression::IndexedIdentifier(reg, idx) => {
                if let Some(bits) = self.classical_bits.get(reg) {
                    if let Some(&b) = bits.get(*idx) {
                        return if b { 1 } else { 0 };
                    }
                }
                0
            }
            Expression::Identifier(var) => {
                self.classical_vars.get(var).copied().unwrap_or(0)
            }
            _ => 0,
        }
    }

    /// Execute an OpenQASM 3.0 program against this statevector.
    pub fn execute_program(&mut self, prog: &Program, qubit_map: &HashMap<String, usize>) -> Result<(), String> {
        self.execute_statements(&prog.statements, qubit_map)
    }

    fn execute_statements(&mut self, stmts: &[Statement], qubit_map: &HashMap<String, usize>) -> Result<(), String> {
        for stmt in stmts {
            match stmt {
                Statement::ClassicalDecl { var_type: _, name, init: _ } => {
                    self.classical_bits.entry(name.clone()).or_insert_with(|| vec![false; 64]);
                }
                Statement::GateCall(gc) => {
                    self.execute_gate_call(gc, qubit_map)?;
                }
                Statement::Measure { qubit, target } => {
                    let q_idx = self.resolve_qubit(qubit, qubit_map)?;
                    let outcome = self.measure(q_idx, 0.499); // Deterministic simulation midpoint
                    match target {
                        ClassicalRef::Single(name) => {
                            let reg = self.classical_bits.entry(name.clone()).or_insert_with(|| vec![false]);
                            reg[0] = outcome;
                        }
                        ClassicalRef::Register(name, idx) => {
                            let reg = self.classical_bits.entry(name.clone()).or_insert_with(|| vec![false; *idx + 1]);
                            if reg.len() <= *idx {
                                reg.resize(*idx + 1, false);
                            }
                            reg[*idx] = outcome;
                        }
                        _ => {}
                    }
                }
                Statement::Reset { qubit } => {
                    let q_idx = self.resolve_qubit(qubit, qubit_map)?;
                    self.reset_qubit(q_idx);
                }
                Statement::If { condition, then_branch, else_branch } => {
                    if self.eval_condition(condition) {
                        self.execute_statements(then_branch, qubit_map)?;
                    } else if let Some(eb) = else_branch {
                        self.execute_statements(eb, qubit_map)?;
                    }
                }
                Statement::Barrier { .. } | Statement::Delay { .. } | Statement::Pragma { .. } => {
                    // Timing and barrier directives do not alter ideal statevector amplitudes
                }
                _ => {}
            }
        }
        Ok(())
    }

    fn execute_gate_call(&mut self, gc: &GateCall, qubit_map: &HashMap<String, usize>) -> Result<(), String> {
        let kind = GateKind::from_str(&gc.name)
            .ok_or_else(|| format!("Unknown gate: {}", gc.name))?;

        let mut resolved_qubits = Vec::new();
        for q in &gc.qubits {
            resolved_qubits.push(self.resolve_qubit(q, qubit_map)?);
        }

        let params: Vec<f64> = gc.params.iter().map(|p| match p {
            Expression::Float(f) => *f,
            Expression::Integer(i) => *i as f64,
            _ => 0.0,
        }).collect();

        match kind.num_qubits() {
            1 => {
                let target = resolved_qubits[0];
                let u = kind.unitary_1q(&params)?;
                self.apply_1q_matrix(target, &u);
            }
            2 => {
                let q0 = resolved_qubits[0];
                let q1 = resolved_qubits[1];
                match kind {
                    GateKind::Cx => self.apply_cx(q0, q1),
                    GateKind::Cz => self.apply_cz(q0, q1),
                    GateKind::Swap => self.apply_swap(q0, q1),
                    _ => {
                        // Decompose or unsupported 2-qubit primitive
                    }
                }
            }
            _ => {}
        }
        Ok(())
    }

    fn resolve_qubit(&self, qref: &QubitRef, qubit_map: &HashMap<String, usize>) -> Result<usize, String> {
        match qref {
            QubitRef::Hardware(idx) => Ok(*idx),
            QubitRef::Single(name) => qubit_map.get(name).copied().ok_or_else(|| format!("Unmapped qubit {}", name)),
            QubitRef::Register(name, idx) => {
                let key = format!("{}[{}]", name, idx);
                if let Some(&i) = qubit_map.get(&key) {
                    return Ok(i);
                }
                if let Some(&base) = qubit_map.get(name) {
                    return Ok(base + idx);
                }
                Err(format!("Unmapped register qubit {}", key))
            }
            QubitRef::Variable(name, var) => {
                let var_val = self.classical_vars.get(var).copied().unwrap_or(0) as usize;
                let key = format!("{}[{}]", name, var_val);
                if let Some(&i) = qubit_map.get(&key) {
                    return Ok(i);
                }
                if let Some(&base) = qubit_map.get(name) {
                    return Ok(base + var_val);
                }
                Err(format!("Unmapped variable register qubit {}", key))
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_bell_state_creation() {
        let mut sim = StateVector::new(2);
        let h_u = GateKind::H.unitary_1q(&[]).unwrap();
        sim.apply_1q_matrix(0, &h_u);
        sim.apply_cx(0, 1);

        let probs = sim.probabilities();
        // |00> has amplitude 1/sqrt(2), |11> has amplitude 1/sqrt(2)
        assert!((probs[0] - 0.5).abs() < 1e-10);
        assert!((probs[1] - 0.0).abs() < 1e-10);
        assert!((probs[2] - 0.0).abs() < 1e-10);
        assert!((probs[3] - 0.5).abs() < 1e-10);
    }

    #[test]
    fn test_mid_circuit_measurement_and_collapse() {
        let mut sim = StateVector::new(1);
        let h_u = GateKind::H.unitary_1q(&[]).unwrap();
        sim.apply_1q_matrix(0, &h_u);

        // Measure with pseudo-random 0.2 (< 0.5) -> collapses to |1>
        let outcome = sim.measure(0, 0.2);
        assert!(outcome);
        let probs = sim.probabilities();
        assert!((probs[1] - 1.0).abs() < 1e-10);
        assert!(probs[0].abs() < 1e-10);
    }
}
