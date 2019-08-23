use coupler::ast::{GateCall, Program, Statement};
use coupler::passes::scheduling::compute_asap_schedule;
use coupler::types::QubitRef;

#[test]
fn test_asap_timing_parallel_operations() {
    let mut prog = Program::new();
    let q0 = QubitRef::Single("q0".into());
    let q1 = QubitRef::Single("q1".into());

    // Two parallel 1-qubit gates on separate qubits should execute concurrently
    prog.add_statement(Statement::GateCall(GateCall::new("h", vec![q0])));
    prog.add_statement(Statement::GateCall(GateCall::new("h", vec![q1])));

    let sched = compute_asap_schedule(&prog);
    assert_eq!(sched.total_duration_dt, 160);
    assert_eq!(sched.critical_path_depth, 1);
}
