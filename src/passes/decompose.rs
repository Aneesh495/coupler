//! Universal gate decomposition pass for native transmon hardware execution.
//!
//! Decomposes high-level multi-qubit and single-qubit gates into native hardware basis:
//! {cx, rz, sx, x} or {cz, rz, sx, x}.

use crate::ast::{GateCall, Program, Statement};
use crate::types::Expression;
use std::f64::consts::PI;

/// Decompose all high-level gates in an OpenQASM program into the native transmon basis.
pub fn decompose_to_native_basis(prog: &Program) -> Program {
    let mut out = Program::new();
    out.version = prog.version.clone();
    out.includes = prog.includes.clone();

    for stmt in &prog.statements {
        match stmt {
            Statement::GateCall(gc) => {
                let decomposed = decompose_gate(gc);
                for d_gc in decomposed {
                    out.add_statement(Statement::GateCall(d_gc));
                }
            }
            Statement::If { condition, then_branch, else_branch } => {
                let mut new_then = Vec::new();
                for s in then_branch {
                    match s {
                        Statement::GateCall(gc) => {
                            for d in decompose_gate(gc) {
                                new_then.push(Statement::GateCall(d));
                            }
                        }
                        other => new_then.push(other.clone()),
                    }
                }
                let new_else = else_branch.as_ref().map(|eb| {
                    let mut eb_out = Vec::new();
                    for s in eb {
                        match s {
                            Statement::GateCall(gc) => {
                                for d in decompose_gate(gc) {
                                    eb_out.push(Statement::GateCall(d));
                                }
                            }
                            other => eb_out.push(other.clone()),
                        }
                    }
                    eb_out
                });
                out.add_statement(Statement::If {
                    condition: condition.clone(),
                    then_branch: new_then,
                    else_branch: new_else,
                });
            }
            other => out.add_statement(other.clone()),
        }
    }

    out
}

/// Decompose an individual gate call into native gates.
pub fn decompose_gate(gc: &GateCall) -> Vec<GateCall> {
    match gc.name.to_lowercase().as_str() {
        "h" => {
            // H = Rz(pi/2) * Sx * Rz(pi/2)
            let q = gc.qubits[0].clone();
            vec![
                GateCall::new("rz", vec![q.clone()]).with_params(vec![Expression::Float(PI / 2.0)]),
                GateCall::new("sx", vec![q.clone()]),
                GateCall::new("rz", vec![q]).with_params(vec![Expression::Float(PI / 2.0)]),
            ]
        }
        "swap" => {
            // SWAP(a, b) = CX(a, b) * CX(b, a) * CX(a, b)
            let a = gc.qubits[0].clone();
            let b = gc.qubits[1].clone();
            vec![
                GateCall::new("cx", vec![a.clone(), b.clone()]),
                GateCall::new("cx", vec![b.clone(), a.clone()]),
                GateCall::new("cx", vec![a, b]),
            ]
        }
        "cz" => {
            // CZ(a, b) = H(b) * CX(a, b) * H(b)
            let a = gc.qubits[0].clone();
            let b = gc.qubits[1].clone();
            let mut gates = Vec::new();
            gates.extend(decompose_gate(&GateCall::new("h", vec![b.clone()])));
            gates.push(GateCall::new("cx", vec![a, b.clone()]));
            gates.extend(decompose_gate(&GateCall::new("h", vec![b])));
            gates
        }
        "t" => {
            // T = Rz(pi/4)
            let q = gc.qubits[0].clone();
            vec![GateCall::new("rz", vec![q]).with_params(vec![Expression::Float(PI / 4.0)])]
        }
        "s" => {
            // S = Rz(pi/2)
            let q = gc.qubits[0].clone();
            vec![GateCall::new("rz", vec![q]).with_params(vec![Expression::Float(PI / 2.0)])]
        }
        _ => vec![gc.clone()],
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_hadamard_decomposition() {
        let gc = GateCall::new("h", vec![QubitRef::Single("q".into())]);
        let decomposed = decompose_gate(&gc);
        assert_eq!(decomposed.len(), 3);
        assert_eq!(decomposed[0].name, "rz");
        assert_eq!(decomposed[1].name, "sx");
        assert_eq!(decomposed[2].name, "rz");
    }

    #[test]
    fn test_swap_decomposition() {
        let gc = GateCall::new("swap", vec![QubitRef::Single("a".into()), QubitRef::Single("b".into())]);
        let decomposed = decompose_gate(&gc);
        assert_eq!(decomposed.len(), 3);
        assert_eq!(decomposed[0].name, "cx");
        assert_eq!(decomposed[1].name, "cx");
        assert_eq!(decomposed[2].name, "cx");
    }
}
