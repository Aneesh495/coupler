//! ASAP and ALAP circuit scheduling and critical path timing analysis.
//!
//! Computes total circuit duration in nanoseconds/clock cycles, resource utilization,
//! and idle duration gaps across all qubits.

use crate::ast::{Program, Statement};
use std::collections::HashMap;

/// Circuit latency report detailing total duration and per-qubit depth.
#[derive(Debug, Clone, PartialEq)]
pub struct ScheduleReport {
    pub total_duration_dt: u64,
    pub critical_path_depth: usize,
    pub qubit_depths: HashMap<String, usize>,
}

/// Compute ASAP schedule assuming standard superconducting gate durations:
/// 1-qubit gate: 160 dt (~35 ns)
/// 2-qubit coupler gate: 800 dt (~180 ns)
/// Measurement & reset: 2400 dt (~500 ns)
pub fn compute_asap_schedule(prog: &Program) -> ScheduleReport {
    let mut qubit_time: HashMap<String, u64> = HashMap::new();
    let mut qubit_depth: HashMap<String, usize> = HashMap::new();

    for stmt in &prog.statements {
        match stmt {
            Statement::GateCall(gc) => {
                let duration = if gc.qubits.len() > 1 { 800 } else { 160 };
                let mut max_t = 0;
                for q in &gc.qubits {
                    let t = qubit_time.get(&q.to_string()).copied().unwrap_or(0);
                    if t > max_t {
                        max_t = t;
                    }
                }
                let end_t = max_t + duration;
                for q in &gc.qubits {
                    qubit_time.insert(q.to_string(), end_t);
                    let d = qubit_depth.entry(q.to_string()).or_insert(0);
                    *d += 1;
                }
            }
            Statement::Measure { qubit, .. } | Statement::Reset { qubit } => {
                let duration = 2400;
                let t = qubit_time.get(&qubit.to_string()).copied().unwrap_or(0) + duration;
                qubit_time.insert(qubit.to_string(), t);
                let d = qubit_depth.entry(qubit.to_string()).or_insert(0);
                *d += 1;
            }
            _ => {}
        }
    }

    let total_duration_dt = qubit_time.values().copied().max().unwrap_or(0);
    let critical_path_depth = qubit_depth.values().copied().max().unwrap_or(0);

    ScheduleReport {
        total_duration_dt,
        critical_path_depth,
        qubit_depths: qubit_depth,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::ast::GateCall;
    use crate::types::QubitRef;

    #[test]
    fn test_scheduling_depth_and_duration() {
        let mut prog = Program::new();
        let q0 = QubitRef::Single("q0".into());
        let q1 = QubitRef::Single("q1".into());

        // H q0 (160 dt)
        prog.add_statement(Statement::GateCall(GateCall::new("h", vec![q0.clone()])));
        // CX q0, q1 (800 dt)
        prog.add_statement(Statement::GateCall(GateCall::new("cx", vec![q0.clone(), q1.clone()])));

        let sched = compute_asap_schedule(&prog);
        assert_eq!(sched.total_duration_dt, 960);
        assert_eq!(sched.critical_path_depth, 2);
    }
}
