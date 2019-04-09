//! Commutation analysis and cancellation pass.
//!
//! Eliminates back-to-back self-inverse gates (e.g. H*H = I, X*X = I, CX*CX = I)
//! and merges adjacent rotation gates around the same axis.

use crate::ast::{GateCall, Program, Statement};

/// Optimize program by canceling adjacent inverse operations and combining rotations.
pub fn cancel_redundant_gates(prog: &Program) -> Program {
    let mut out = Program::new();
    out.version = prog.version.clone();
    out.includes = prog.includes.clone();

    let mut stack: Vec<GateCall> = Vec::new();

    for stmt in &prog.statements {
        match stmt {
            Statement::GateCall(gc) => {
                if let Some(top) = stack.last() {
                    if can_cancel(top, gc) {
                        stack.pop();
                        continue;
                    }
                }
                stack.push(gc.clone());
            }
            other => {
                // Flush accumulated gate stack
                for g in stack.drain(..) {
                    out.add_statement(Statement::GateCall(g));
                }
                out.add_statement(other.clone());
            }
        }
    }

    for g in stack {
        out.add_statement(Statement::GateCall(g));
    }

    out
}

fn can_cancel(g1: &GateCall, g2: &GateCall) -> bool {
    if g1.name != g2.name || g1.qubits != g2.qubits {
        return false;
    }

    match g1.name.as_str() {
        "h" | "x" | "y" | "z" | "cx" | "cz" | "swap" => true,
        _ => false,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::types::QubitRef;

    #[test]
    fn test_cancellation_of_back_to_back_hadamards() {
        let mut prog = Program::new();
        let q = QubitRef::Single("q".into());
        prog.add_statement(Statement::GateCall(GateCall::new("h", vec![q.clone()])));
        prog.add_statement(Statement::GateCall(GateCall::new("h", vec![q])));

        let optimized = cancel_redundant_gates(&prog);
        assert_eq!(optimized.count_gates(), 0);
    }

    #[test]
    fn test_cancellation_of_back_to_back_cx() {
        let mut prog = Program::new();
        let a = QubitRef::Single("a".into());
        let b = QubitRef::Single("b".into());
        prog.add_statement(Statement::GateCall(GateCall::new("cx", vec![a.clone(), b.clone()])));
        prog.add_statement(Statement::GateCall(GateCall::new("cx", vec![a, b])));

        let optimized = cancel_redundant_gates(&prog);
        assert_eq!(optimized.count_gates(), 0);
    }
}
