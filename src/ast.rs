//! Abstract Syntax Tree representations for OpenQASM 3.0 programs.
//!
//! Models quantum gates, pulse calibration definitions, classical control flow,
//! timing annotations, and hardware-level operations.

use crate::types::{ClassicalRef, ClassicalType, Expression, GateModifier, QubitRef};
use serde::{Deserialize, Serialize};

/// Top-level OpenQASM 3.0 program structure.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Program {
    pub version: Option<String>,
    pub includes: Vec<String>,
    pub statements: Vec<Statement>,
}

impl Program {
    pub fn new() -> Self {
        Self {
            version: None,
            includes: Vec::new(),
            statements: Vec::new(),
        }
    }

    pub fn with_version(mut self, version: impl Into<String>) -> Self {
        self.version = Some(version.into());
        self
    }

    pub fn add_include(&mut self, include: impl Into<String>) {
        self.includes.push(include.into());
    }

    pub fn add_statement(&mut self, stmt: Statement) {
        self.statements.push(stmt);
    }

    /// Count total gate applications in the program.
    pub fn count_gates(&self) -> usize {
        let mut count = 0;
        for stmt in &self.statements {
            count += stmt.count_gates();
        }
        count
    }

    /// Collect all unique qubits referenced in the program.
    pub fn referenced_qubits(&self) -> Vec<QubitRef> {
        let mut qubits = Vec::new();
        for stmt in &self.statements {
            stmt.collect_qubits(&mut qubits);
        }
        qubits.sort_by(|a, b| a.to_string().cmp(&b.to_string()));
        qubits.dedup();
        qubits
    }
}

impl Default for Program {
    fn default() -> Self {
        Self::new()
    }
}

/// Abstract statement nodes in an OpenQASM 3.0 program.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub enum Statement {
    /// Qubit or qubit array declaration: `qubit q;` or `qubit[4] q;`.
    QubitDecl {
        name: String,
        size: Option<usize>,
    },
    /// Classical scalar or array declaration: `bit[4] c;` or `int[32] n = 10;`.
    ClassicalDecl {
        var_type: ClassicalType,
        name: String,
        init: Option<Expression>,
    },
    /// User-defined gate definition: `gate my_cnot a, b { cx a, b; }`.
    GateDecl {
        name: String,
        params: Vec<String>,
        qubits: Vec<String>,
        body: Vec<GateCall>,
    },
    /// Gate application: `cx q[0], q[1];` or `ctrl @ rz(pi/4) a, b;`.
    GateCall(GateCall),
    /// Mid-circuit measurement: `c[0] = measure q[0];` or `measure q -> c;`.
    Measure {
        qubit: QubitRef,
        target: ClassicalRef,
    },
    /// Quantum state reset to ground state |0>: `reset q;`.
    Reset {
        qubit: QubitRef,
    },
    /// Execution barrier preventing reordering: `barrier q[0], q[1];`.
    Barrier {
        qubits: Vec<QubitRef>,
    },
    /// Physical execution delay: `delay[160dt] q[0];`.
    Delay {
        duration: Expression,
        qubits: Vec<QubitRef>,
    },
    /// Classical conditional branching: `if (c[0] == 1) { x q[1]; }`.
    If {
        condition: Expression,
        then_branch: Vec<Statement>,
        else_branch: Option<Vec<Statement>>,
    },
    /// Iterative loop: `for i in [0:3] { h q[i]; }`.
    For {
        var_name: String,
        start: i64,
        step: i64,
        end: i64,
        body: Vec<Statement>,
    },
    /// Dynamic while loop: `while (flag) { ... }`.
    While {
        condition: Expression,
        body: Vec<Statement>,
    },
    /// Pulse-level calibration definition: `defcal rx(pi) $0 { ... }`.
    Defcal {
        name: String,
        params: Vec<String>,
        qubits: Vec<QubitRef>,
        body: Vec<CalStatement>,
    },
    /// Hardware or compiler pragma directive.
    Pragma {
        text: String,
    },
    /// Calibration grammar specification e.g. `defcalgrammar "openpulse";`.
    DefcalGrammar(String),
}

impl Statement {
    pub fn count_gates(&self) -> usize {
        match self {
            Statement::GateCall(_) => 1,
            Statement::If { then_branch, else_branch, .. } => {
                let mut c = then_branch.iter().map(|s| s.count_gates()).sum();
                if let Some(eb) = else_branch {
                    c += eb.iter().map(|s| s.count_gates()).sum::<usize>();
                }
                c
            }
            Statement::For { body, .. } | Statement::While { body, .. } => {
                body.iter().map(|s| s.count_gates()).sum()
            }
            _ => 0,
        }
    }

    pub fn collect_qubits(&self, out: &mut Vec<QubitRef>) {
        match self {
            Statement::GateCall(gc) => out.extend(gc.qubits.clone()),
            Statement::Measure { qubit, .. } | Statement::Reset { qubit } => out.push(qubit.clone()),
            Statement::Barrier { qubits } | Statement::Delay { qubits, .. } => out.extend(qubits.clone()),
            Statement::If { then_branch, else_branch, .. } => {
                for s in then_branch {
                    s.collect_qubits(out);
                }
                if let Some(eb) = else_branch {
                    for s in eb {
                        s.collect_qubits(out);
                    }
                }
            }
            Statement::For { body, .. } | Statement::While { body, .. } => {
                for s in body {
                    s.collect_qubits(out);
                }
            }
            Statement::Defcal { qubits, .. } => out.extend(qubits.clone()),
            _ => {}
        }
    }
}

/// Invocation of a quantum gate with optional parameters, modifiers, and targets.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GateCall {
    pub name: String,
    pub params: Vec<Expression>,
    pub qubits: Vec<QubitRef>,
    pub modifiers: Vec<GateModifier>,
}

impl GateCall {
    pub fn new(name: impl Into<String>, qubits: Vec<QubitRef>) -> Self {
        Self {
            name: name.into(),
            params: Vec::new(),
            qubits,
            modifiers: Vec::new(),
        }
    }

    pub fn with_params(mut self, params: Vec<Expression>) -> Self {
        self.params = params;
        self
    }

    pub fn with_modifiers(mut self, modifiers: Vec<GateModifier>) -> Self {
        self.modifiers = modifiers;
        self
    }
}

/// Low-level pulse calibration statements within `defcal` blocks.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub enum CalStatement {
    Play {
        channel: String,
        waveform: String,
        args: Vec<Expression>,
    },
    Delay {
        channel: String,
        duration: Expression,
    },
    SetPhase {
        channel: String,
        phase: Expression,
    },
    ShiftPhase {
        channel: String,
        phase: Expression,
    },
    Capture {
        channel: String,
        kernel: String,
        target: ClassicalRef,
    },
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_program_creation_and_stats() {
        let mut p = Program::new().with_version("3.0");
        p.add_include("stdgates.inc");
        p.add_statement(Statement::QubitDecl {
            name: "q".into(),
            size: Some(2),
        });
        p.add_statement(Statement::GateCall(GateCall::new(
            "h",
            vec![QubitRef::Register("q".into(), 0)],
        )));
        p.add_statement(Statement::GateCall(GateCall::new(
            "cx",
            vec![
                QubitRef::Register("q".into(), 0),
                QubitRef::Register("q".into(), 1),
            ],
        )));

        assert_eq!(p.count_gates(), 2);
        let refs = p.referenced_qubits();
        assert_eq!(refs.len(), 2);
    }
}
