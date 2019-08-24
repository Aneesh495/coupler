use coupler::rhai_engine::runner::RhaiRunner;

#[test]
fn test_rhai_script_execution() {
    let runner = RhaiRunner::new();
    let script = r#"
        let code = "OPENQASM 3.0; qubit[2] q; h q[0]; cx q[0], q[1];";
        let count = qasm_gate_count(code);
        count * 2
    "#;
    let res = runner.run_script(script).unwrap();
    assert_eq!(res.as_int().unwrap(), 4);
}
