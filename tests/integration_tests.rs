use coupler::lexer::Lexer;
use coupler::parser::Parser;
use coupler::passes::commutation::cancel_redundant_gates;
use coupler::passes::decompose::decompose_to_native_basis;
use coupler::passes::scheduling::compute_asap_schedule;

#[test]
fn test_end_to_end_bell_pipeline() {
    let src = "OPENQASM 3.0; qubit[2] q; h q[0]; cx q[0], q[1];";
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();
    let mut parser = Parser::new(tokens);
    let prog = parser.parse_program().unwrap();

    let decomposed = decompose_to_native_basis(&prog);
    let optimized = cancel_redundant_gates(&decomposed);
    let sched = compute_asap_schedule(&optimized);

    assert!(sched.total_duration_dt > 0);
    assert!(sched.critical_path_depth > 0);
}
