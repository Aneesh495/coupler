//! High-performance lexical analyzer for OpenQASM 3.0 and OpenQASM 2.0 source code.
//!
//! Converts raw quantum source strings into a stream of typed tokens with source span tracking.

use std::fmt;

/// Tokens produced by the OpenQASM 3.0 lexical analyzer.
#[derive(Debug, Clone, PartialEq)]
pub enum Token {
    // Keywords
    OpenQASM,
    Include,
    Qubit,
    Qreg,
    Bit,
    Creg,
    Int,
    Uint,
    Float,
    Angle,
    Bool,
    Duration,
    Stretch,
    Gate,
    Defcal,
    DefcalGrammar,
    Cal,
    Measure,
    Reset,
    Barrier,
    Delay,
    If,
    Else,
    For,
    In,
    While,
    Return,
    Extern,
    Pragma,
    Ctrl,
    NegCtrl,
    Inv,
    Pow,
    Pi,
    Tau,
    Euler,

    // Identifiers & Literals
    Ident(String),
    HardwareQubit(usize),
    Integer(i64),
    FloatLit(f64),
    StringLit(String),
    DurationLit(f64, String),

    // Symbols & Operators
    Semicolon,
    Comma,
    LParen,
    RParen,
    LBracket,
    RBracket,
    LBrace,
    RBrace,
    Arrow, // ->
    Assign, // =
    Eq,     // ==
    Neq,    // !=
    Lt,     // <
    Lte,    // <=
    Gt,     // >
    Gte,    // >=
    Plus,   // +
    Minus,  // -
    Star,   // *
    Slash,  // /
    Percent,// %
    Caret,  // ^
    At,     // @
    Amp,    // &
    Pipe,   // |
    Tilde,  // ~
    Bang,   // !
    Shl,    // <<
    Shr,    // >>
    Colon,  // :
    Dot,    // .

    // EOF
    Eof,
}

impl fmt::Display for Token {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:?}", self)
    }
}

/// Token with source position information.
#[derive(Debug, Clone, PartialEq)]
pub struct SpannedToken {
    pub token: Token,
    pub line: usize,
    pub column: usize,
}

pub struct Lexer<'a> {
    _input: &'a str,
    chars: Vec<(usize, char)>,
    pos: usize,
    line: usize,
    column: usize,
}

impl<'a> Lexer<'a> {
    pub fn new(input: &'a str) -> Self {
        let chars = input.char_indices().collect();
        Self {
            _input: input,
            chars,
            pos: 0,
            line: 1,
            column: 1,
        }
    }

    fn peek(&self) -> Option<char> {
        self.chars.get(self.pos).map(|&(_, ch)| ch)
    }

    fn peek_next(&self) -> Option<char> {
        self.chars.get(self.pos + 1).map(|&(_, ch)| ch)
    }

    fn advance(&mut self) -> Option<char> {
        if let Some(&(_, ch)) = self.chars.get(self.pos) {
            self.pos += 1;
            if ch == '\n' {
                self.line += 1;
                self.column = 1;
            } else {
                self.column += 1;
            }
            Some(ch)
        } else {
            None
        }
    }

    fn skip_whitespace_and_comments(&mut self) {
        while let Some(ch) = self.peek() {
            if ch.is_whitespace() {
                self.advance();
            } else if ch == '/' && self.peek_next() == Some('/') {
                // Line comment
                self.advance();
                self.advance();
                while let Some(c) = self.peek() {
                    self.advance();
                    if c == '\n' {
                        break;
                    }
                }
            } else if ch == '/' && self.peek_next() == Some('*') {
                // Block comment
                self.advance();
                self.advance();
                while let Some(c) = self.peek() {
                    if c == '*' && self.peek_next() == Some('/') {
                        self.advance();
                        self.advance();
                        break;
                    }
                    self.advance();
                }
            } else {
                break;
            }
        }
    }

    pub fn tokenize(&mut self) -> Result<Vec<SpannedToken>, String> {
        let mut tokens = Vec::new();
        loop {
            self.skip_whitespace_and_comments();
            let start_line = self.line;
            let start_col = self.column;

            let ch = match self.peek() {
                Some(c) => c,
                None => {
                    tokens.push(SpannedToken {
                        token: Token::Eof,
                        line: start_line,
                        column: start_col,
                    });
                    break;
                }
            };

            // Hardware qubit index: $0, $12
            if ch == '$' {
                self.advance();
                let mut num_str = String::new();
                while let Some(c) = self.peek() {
                    if c.is_ascii_digit() {
                        num_str.push(c);
                        self.advance();
                    } else {
                        break;
                    }
                }
                if num_str.is_empty() {
                    return Err(format!("Expected integer after '$' at {}:{}", start_line, start_col));
                }
                let idx = num_str.parse::<usize>().map_err(|e| e.to_string())?;
                tokens.push(SpannedToken {
                    token: Token::HardwareQubit(idx),
                    line: start_line,
                    column: start_col,
                });
                continue;
            }

            // String literal
            if ch == '"' {
                self.advance();
                let mut s = String::new();
                while let Some(c) = self.peek() {
                    if c == '"' {
                        self.advance();
                        break;
                    }
                    s.push(c);
                    self.advance();
                }
                tokens.push(SpannedToken {
                    token: Token::StringLit(s),
                    line: start_line,
                    column: start_col,
                });
                continue;
            }

            // Numbers: integer, float, or duration
            if ch.is_ascii_digit() {
                let mut s = String::new();
                while let Some(c) = self.peek() {
                    if c.is_ascii_digit() || c == '.' {
                        s.push(c);
                        self.advance();
                    } else {
                        break;
                    }
                }

                // Check for duration unit suffix: dt, ns, us, ms, s
                let mut unit = String::new();
                while let Some(c) = self.peek() {
                    if c.is_alphabetic() {
                        unit.push(c);
                        self.advance();
                    } else {
                        break;
                    }
                }

                if !unit.is_empty() {
                    let val = s.parse::<f64>().map_err(|e| e.to_string())?;
                    tokens.push(SpannedToken {
                        token: Token::DurationLit(val, unit),
                        line: start_line,
                        column: start_col,
                    });
                } else if s.contains('.') {
                    let val = s.parse::<f64>().map_err(|e| e.to_string())?;
                    tokens.push(SpannedToken {
                        token: Token::FloatLit(val),
                        line: start_line,
                        column: start_col,
                    });
                } else {
                    let val = s.parse::<i64>().map_err(|e| e.to_string())?;
                    tokens.push(SpannedToken {
                        token: Token::Integer(val),
                        line: start_line,
                        column: start_col,
                    });
                }
                continue;
            }

            // Identifiers and keywords
            if ch.is_alphabetic() || ch == '_' {
                let mut ident = String::new();
                while let Some(c) = self.peek() {
                    if c.is_alphanumeric() || c == '_' {
                        ident.push(c);
                        self.advance();
                    } else {
                        break;
                    }
                }

                let token = match ident.as_str() {
                    "OPENQASM" => Token::OpenQASM,
                    "include" => Token::Include,
                    "qubit" => Token::Qubit,
                    "qreg" => Token::Qreg,
                    "bit" => Token::Bit,
                    "creg" => Token::Creg,
                    "int" => Token::Int,
                    "uint" => Token::Uint,
                    "float" => Token::Float,
                    "angle" => Token::Angle,
                    "bool" => Token::Bool,
                    "duration" => Token::Duration,
                    "stretch" => Token::Stretch,
                    "gate" => Token::Gate,
                    "defcal" => Token::Defcal,
                    "defcalgrammar" => Token::DefcalGrammar,
                    "cal" => Token::Cal,
                    "measure" => Token::Measure,
                    "reset" => Token::Reset,
                    "barrier" => Token::Barrier,
                    "delay" => Token::Delay,
                    "if" => Token::If,
                    "else" => Token::Else,
                    "for" => Token::For,
                    "in" => Token::In,
                    "while" => Token::While,
                    "return" => Token::Return,
                    "extern" => Token::Extern,
                    "pragma" => Token::Pragma,
                    "ctrl" => Token::Ctrl,
                    "negctrl" => Token::NegCtrl,
                    "inv" => Token::Inv,
                    "pow" => Token::Pow,
                    "pi" => Token::Pi,
                    "tau" => Token::Tau,
                    "euler" => Token::Euler,
                    _ => Token::Ident(ident),
                };

                tokens.push(SpannedToken {
                    token,
                    line: start_line,
                    column: start_col,
                });
                continue;
            }

            // Two-character operators
            if ch == '-' && self.peek_next() == Some('>') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Arrow, line: start_line, column: start_col });
                continue;
            }
            if ch == '=' && self.peek_next() == Some('=') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Eq, line: start_line, column: start_col });
                continue;
            }
            if ch == '!' && self.peek_next() == Some('=') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Neq, line: start_line, column: start_col });
                continue;
            }
            if ch == '<' && self.peek_next() == Some('=') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Lte, line: start_line, column: start_col });
                continue;
            }
            if ch == '>' && self.peek_next() == Some('=') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Gte, line: start_line, column: start_col });
                continue;
            }
            if ch == '<' && self.peek_next() == Some('<') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Shl, line: start_line, column: start_col });
                continue;
            }
            if ch == '>' && self.peek_next() == Some('>') {
                self.advance();
                self.advance();
                tokens.push(SpannedToken { token: Token::Shr, line: start_line, column: start_col });
                continue;
            }

            // Single-character symbols
            self.advance();
            let token = match ch {
                ';' => Token::Semicolon,
                ',' => Token::Comma,
                '(' => Token::LParen,
                ')' => Token::RParen,
                '[' => Token::LBracket,
                ']' => Token::RBracket,
                '{' => Token::LBrace,
                '}' => Token::RBrace,
                '=' => Token::Assign,
                '<' => Token::Lt,
                '>' => Token::Gt,
                '+' => Token::Plus,
                '-' => Token::Minus,
                '*' => Token::Star,
                '/' => Token::Slash,
                '%' => Token::Percent,
                '^' => Token::Caret,
                '@' => Token::At,
                '&' => Token::Amp,
                '|' => Token::Pipe,
                '~' => Token::Tilde,
                '!' => Token::Bang,
                ':' => Token::Colon,
                '.' => Token::Dot,
                _ => return Err(format!("Unexpected character '{}' at {}:{}", ch, start_line, start_col)),
            };

            tokens.push(SpannedToken {
                token,
                line: start_line,
                column: start_col,
            });
        }

        Ok(tokens)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_lexer_openqasm_header() {
        let mut lexer = Lexer::new("OPENQASM 3.0;\ninclude \"stdgates.inc\";");
        let tokens = lexer.tokenize().unwrap();
        assert_eq!(tokens[0].token, Token::OpenQASM);
        assert_eq!(tokens[1].token, Token::FloatLit(3.0));
        assert_eq!(tokens[2].token, Token::Semicolon);
        assert_eq!(tokens[3].token, Token::Include);
        assert_eq!(tokens[4].token, Token::StringLit("stdgates.inc".into()));
        assert_eq!(tokens[5].token, Token::Semicolon);
        assert_eq!(tokens[6].token, Token::Eof);
    }

    #[test]
    fn test_lexer_qubit_decl_and_gates() {
        let mut lexer = Lexer::new("qubit[2] q;\nh q[0];\ncx q[0], q[1];");
        let tokens = lexer.tokenize().unwrap();
        assert_eq!(tokens[0].token, Token::Qubit);
        assert_eq!(tokens[1].token, Token::LBracket);
        assert_eq!(tokens[2].token, Token::Integer(2));
        assert_eq!(tokens[3].token, Token::RBracket);
        assert_eq!(tokens[4].token, Token::Ident("q".into()));
    }

    #[test]
    fn test_lexer_hardware_qubits_and_durations() {
        let mut lexer = Lexer::new("delay[160dt] $0;");
        let tokens = lexer.tokenize().unwrap();
        assert_eq!(tokens[0].token, Token::Delay);
        assert_eq!(tokens[1].token, Token::LBracket);
        assert_eq!(tokens[2].token, Token::DurationLit(160.0, "dt".into()));
        assert_eq!(tokens[3].token, Token::RBracket);
        assert_eq!(tokens[4].token, Token::HardwareQubit(0));
    }
}
