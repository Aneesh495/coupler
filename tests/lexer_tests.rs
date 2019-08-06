use coupler::lexer::{Lexer, Token};

#[test]
fn test_lexing_all_duration_units() {
    let src = "160dt 25ns 100us 5ms 2s";
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();

    assert_eq!(tokens[0].token, Token::DurationLit(160.0, "dt".into()));
    assert_eq!(tokens[1].token, Token::DurationLit(25.0, "ns".into()));
    assert_eq!(tokens[2].token, Token::DurationLit(100.0, "us".into()));
    assert_eq!(tokens[3].token, Token::DurationLit(5.0, "ms".into()));
    assert_eq!(tokens[4].token, Token::DurationLit(2.0, "s".into()));
}

#[test]
fn test_lexing_block_comments_and_whitespace() {
    let src = "/* Multi-line \n comment */ qubit[4] /* inline */ q;";
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();

    assert_eq!(tokens[0].token, Token::Qubit);
    assert_eq!(tokens[1].token, Token::LBracket);
    assert_eq!(tokens[2].token, Token::Integer(4));
    assert_eq!(tokens[3].token, Token::RBracket);
    assert_eq!(tokens[4].token, Token::Ident("q".into()));
    assert_eq!(tokens[5].token, Token::Semicolon);
}

#[test]
fn test_lexing_hardware_qubits_and_operators() {
    let src = "$0 $12 << >> <= >= == !=";
    let mut lexer = Lexer::new(src);
    let tokens = lexer.tokenize().unwrap();

    assert_eq!(tokens[0].token, Token::HardwareQubit(0));
    assert_eq!(tokens[1].token, Token::HardwareQubit(12));
    assert_eq!(tokens[2].token, Token::Shl);
    assert_eq!(tokens[3].token, Token::Shr);
    assert_eq!(tokens[4].token, Token::Lte);
    assert_eq!(tokens[5].token, Token::Gte);
    assert_eq!(tokens[6].token, Token::Eq);
    assert_eq!(tokens[7].token, Token::Neq);
}
