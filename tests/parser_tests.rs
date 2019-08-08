use coupler::ast::Statement;
use coupler::lexer::Lexer;
use coupler::parser::Parser;
use coupler::types::ClassicalType;

#[test]
fn test_parse_classical_declarations() {
    let src = r#"
        OPENQASM 3.0;
        bit b;
        bit[8] byte;
        int[32] count = 42;
        float[64] phase = 3.14159;
        angle[32] theta;
        bool flag;
    "#;
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();
    let mut parser = Parser::new(tokens);
    let prog = parser.parse_program().unwrap();

    assert_eq!(prog.statements.len(), 6);
    if let Statement::ClassicalDecl { var_type, name, .. } = &prog.statements[0] {
        assert_eq!(*var_type, ClassicalType::Bit);
        assert_eq!(name, "b");
    } else {
        panic!("Expected classical declaration");
    }
}

#[test]
fn test_parse_gate_modifiers() {
    let src = r#"
        OPENQASM 3.0;
        qubit[3] q;
        ctrl @ x q[0], q[1];
        negctrl @ z q[0], q[2];
        inv @ s q[1];
    "#;
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();
    let mut parser = Parser::new(tokens);
    let prog = parser.parse_program().unwrap();

    assert_eq!(prog.statements.len(), 4);
    assert_eq!(prog.count_gates(), 3);
}

#[test]
fn test_parse_delays_and_barriers() {
    let src = r#"
        OPENQASM 3.0;
        qubit[2] q;
        barrier q[0], q[1];
        delay[160dt] q[0];
    "#;
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();
    let mut parser = Parser::new(tokens);
    let prog = parser.parse_program().unwrap();

    assert_eq!(prog.statements.len(), 3);
}
