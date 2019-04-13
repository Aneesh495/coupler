//! Rhai scripting bindings for Coupler quantum engine primitives.
//!
//! Exposes OpenQASM compilation, simulation, routing, and circuit generation
//! to embedded Rhai automation pipelines.

use crate::lexer::Lexer;
use crate::parser::Parser;
use crate::passes::scheduling::compute_asap_schedule;
use crate::simulator::statevector::StateVector;
use rhai::{Dynamic, Engine, EvalAltResult, Map};
use std::collections::HashMap;

/// Configure Rhai engine with Coupler quantum compilation and simulation functions.
pub fn register_coupler_api(engine: &mut Engine) {
    // Parse QASM source string and return gate count
    engine.register_fn("qasm_gate_count", |src: &str| -> Result<i64, Box<EvalAltResult>> {
        let mut lexer = Lexer::new(src);
        let tokens = lexer.tokenize().map_err(|e| e.to_string())?;
        let mut parser = Parser::new(tokens);
        let prog = parser.parse_program().map_err(|e| e.to_string())?;
        Ok(prog.count_gates() as i64)
    });

    // Compute ASAP schedule critical path and duration
    engine.register_fn("qasm_schedule_asap", |src: &str| -> Result<Map, Box<EvalAltResult>> {
        let mut lexer = Lexer::new(src);
        let tokens = lexer.tokenize().map_err(|e| e.to_string())?;
        let mut parser = Parser::new(tokens);
        let prog = parser.parse_program().map_err(|e| e.to_string())?;
        let report = compute_asap_schedule(&prog);

        let mut map = Map::new();
        map.insert("total_duration_dt".into(), Dynamic::from(report.total_duration_dt as i64));
        map.insert("critical_path_depth".into(), Dynamic::from(report.critical_path_depth as i64));
        Ok(map)
    });

    // Simulate simple statevector circuit and return state probabilities
    engine.register_fn("qasm_simulate_statevector", |src: &str, num_qubits: i64| -> Result<rhai::Array, Box<EvalAltResult>> {
        let mut lexer = Lexer::new(src);
        let tokens = lexer.tokenize().map_err(|e| e.to_string())?;
        let mut parser = Parser::new(tokens);
        let prog = parser.parse_program().map_err(|e| e.to_string())?;

        let mut sim = StateVector::new(num_qubits as usize);
        let mut qmap = HashMap::new();
        for i in 0..(num_qubits as usize) {
            qmap.insert(format!("q[{}]", i), i);
            qmap.insert(format!("{}", i), i);
        }
        qmap.insert("q".into(), 0);

        sim.execute_program(&prog, &qmap).map_err(|e| e.to_string())?;
        let probs = sim.probabilities();
        let arr: rhai::Array = probs.into_iter().map(|p| Dynamic::from(p)).collect();
        Ok(arr)
    });
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_rhai_qasm_bindings() {
        let mut engine = Engine::new();
        register_coupler_api(&mut engine);

        let script = r#"
            let src = "OPENQASM 3.0; qubit[2] q; h q[0]; cx q[0], q[1];";
            let gates = qasm_gate_count(src);
            gates
        "#;
        let result: i64 = engine.eval(script).unwrap();
        assert_eq!(result, 2);
    }
}
