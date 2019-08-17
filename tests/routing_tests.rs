use coupler::ast::{GateCall, Program, Statement};
use coupler::passes::routing::SabreRouter;
use coupler::topology::grid::generate_2d_grid;
use coupler::types::QubitRef;

#[test]
fn test_sabre_routing_on_grid() {
    let grid = generate_2d_grid(3, 3); // 9 qubits
    let mut router = SabreRouter::new(&grid, 9);

    let mut prog = Program::new();
    // CX between diagonal corners: (0,0) -> qubit 0, (2,2) -> qubit 8
    prog.add_statement(Statement::GateCall(GateCall::new(
        "cx",
        vec![QubitRef::Single("0".into()), QubitRef::Single("8".into())],
    )));

    let routed = router.route_program(&prog, |q| q.to_string().parse::<usize>().unwrap_or(0));
    // Verify that SWAPs were inserted
    assert!(routed.count_gates() > 1);
}
