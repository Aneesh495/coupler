//! Recursive-descent parser for OpenQASM 3.0 and OpenQASM 2.0 quantum source code.
//!
//! Transforms streams of spanned lexical tokens into fully typed Abstract Syntax Trees.

use crate::ast::{CalStatement, GateCall, Program, Statement};
use crate::lexer::{SpannedToken, Token};
use crate::types::{
    BinaryOp, ClassicalRef, ClassicalType, DurationUnit, Expression, GateModifier, QubitRef,
    UnaryOp,
};

pub struct Parser {
    tokens: Vec<SpannedToken>,
    pos: usize,
}

impl Parser {
    pub fn new(tokens: Vec<SpannedToken>) -> Self {
        Self { tokens, pos: 0 }
    }

    fn peek(&self) -> &Token {
        self.tokens.get(self.pos).map(|st| &st.token).unwrap_or(&Token::Eof)
    }

    fn current_span(&self) -> (usize, usize) {
        if let Some(st) = self.tokens.get(self.pos) {
            (st.line, st.column)
        } else {
            (0, 0)
        }
    }

    fn advance(&mut self) -> Token {
        if self.pos < self.tokens.len() {
            let tok = self.tokens[self.pos].token.clone();
            self.pos += 1;
            tok
        } else {
            Token::Eof
        }
    }

    fn check(&self, expected: &Token) -> bool {
        self.peek() == expected
    }

    fn expect(&mut self, expected: Token) -> Result<(), String> {
        let (line, col) = self.current_span();
        let tok = self.advance();
        if tok == expected {
            Ok(())
        } else {
            Err(format!(
                "Parse error at {}:{}: expected {:?}, found {:?}",
                line, col, expected, tok
            ))
        }
    }

    pub fn parse_program(&mut self) -> Result<Program, String> {
        let mut program = Program::new();

        // Optional OPENQASM version header
        if self.check(&Token::OpenQASM) {
            self.advance();
            let version = match self.advance() {
                Token::FloatLit(v) => format!("{:.1}", v),
                Token::Integer(v) => format!("{}.0", v),
                other => {
                    return Err(format!("Expected OpenQASM version number, found {:?}", other))
                }
            };
            self.expect(Token::Semicolon)?;
            program.version = Some(version);
        }

        while !self.check(&Token::Eof) {
            if self.check(&Token::Include) {
                self.advance();
                match self.advance() {
                    Token::StringLit(path) => {
                        self.expect(Token::Semicolon)?;
                        program.add_include(path);
                    }
                    other => return Err(format!("Expected include string literal, found {:?}", other)),
                }
            } else {
                let stmt = self.parse_statement()?;
                program.add_statement(stmt);
            }
        }

        Ok(program)
    }

    pub fn parse_statement(&mut self) -> Result<Statement, String> {
        match self.peek() {
            Token::Qubit | Token::Qreg => self.parse_qubit_decl(),
            Token::Bit | Token::Creg | Token::Int | Token::Uint | Token::Float | Token::Angle | Token::Bool => {
                self.parse_classical_decl()
            }
            Token::Gate => self.parse_gate_decl(),
            Token::DefcalGrammar => {
                self.advance();
                match self.advance() {
                    Token::StringLit(grammar) => {
                        self.expect(Token::Semicolon)?;
                        Ok(Statement::DefcalGrammar(grammar))
                    }
                    other => Err(format!("Expected string for defcalgrammar, found {:?}", other)),
                }
            }
            Token::Cal => {
                self.advance();
                self.expect(Token::LBrace)?;
                let mut text = String::new();
                while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
                    text.push_str(&format!("{:?} ", self.advance()));
                }
                self.expect(Token::RBrace)?;
                Ok(Statement::Pragma { text: format!("cal {{ {} }}", text.trim()) })
            }
            Token::Defcal => self.parse_defcal(),
            Token::Measure => self.parse_measure_statement(),
            Token::Reset => {
                self.advance();
                let qubit = self.parse_qubit_ref()?;
                self.expect(Token::Semicolon)?;
                Ok(Statement::Reset { qubit })
            }
            Token::Barrier => {
                self.advance();
                let mut qubits = Vec::new();
                while !self.check(&Token::Semicolon) && !self.check(&Token::Eof) {
                    qubits.push(self.parse_qubit_ref()?);
                    if self.check(&Token::Comma) {
                        self.advance();
                    } else {
                        break;
                    }
                }
                self.expect(Token::Semicolon)?;
                Ok(Statement::Barrier { qubits })
            }
            Token::Delay => {
                self.advance();
                self.expect(Token::LBracket)?;
                let duration = self.parse_expression()?;
                self.expect(Token::RBracket)?;
                let mut qubits = Vec::new();
                while !self.check(&Token::Semicolon) && !self.check(&Token::Eof) {
                    qubits.push(self.parse_qubit_ref()?);
                    if self.check(&Token::Comma) {
                        self.advance();
                    } else {
                        break;
                    }
                }
                self.expect(Token::Semicolon)?;
                Ok(Statement::Delay { duration, qubits })
            }
            Token::If => self.parse_if(),
            Token::For => self.parse_for(),
            Token::While => self.parse_while(),
            Token::Pragma => {
                self.advance();
                let mut text = String::new();
                while !self.check(&Token::Semicolon) && !self.check(&Token::Eof) {
                    text.push_str(&format!("{:?} ", self.advance()));
                }
                self.expect(Token::Semicolon)?;
                Ok(Statement::Pragma { text: text.trim().into() })
            }
            Token::Ident(_) | Token::Ctrl | Token::NegCtrl | Token::Inv | Token::Pow => {
                // Could be `c[0] = measure q[0];` or a gate call
                if self.is_assignment_lookahead() {
                    self.parse_assignment_or_measure()
                } else {
                    let gc = self.parse_gate_call()?;
                    self.expect(Token::Semicolon)?;
                    Ok(Statement::GateCall(gc))
                }
            }
            other => Err(format!("Unexpected token in statement: {:?}", other)),
        }
    }

    fn is_assignment_lookahead(&self) -> bool {
        // Look ahead for `ident =` or `ident[...] =`
        let mut idx = self.pos;
        if let Some(SpannedToken { token: Token::Ident(_), .. }) = self.tokens.get(idx) {
            idx += 1;
            if let Some(SpannedToken { token: Token::LBracket, .. }) = self.tokens.get(idx) {
                idx += 1;
                while idx < self.tokens.len() {
                    if let Some(SpannedToken { token: Token::RBracket, .. }) = self.tokens.get(idx) {
                        idx += 1;
                        break;
                    }
                    idx += 1;
                }
            }
            if let Some(SpannedToken { token: Token::Assign, .. }) = self.tokens.get(idx) {
                return true;
            }
        }
        false
    }

    fn parse_assignment_or_measure(&mut self) -> Result<Statement, String> {
        let target = self.parse_classical_ref()?;
        self.expect(Token::Assign)?;
        if self.check(&Token::Measure) {
            self.advance();
            let qubit = self.parse_qubit_ref()?;
            self.expect(Token::Semicolon)?;
            Ok(Statement::Measure { qubit, target })
        } else {
            let _expr = self.parse_expression()?;
            self.expect(Token::Semicolon)?;
            // Classical assignment
            Ok(Statement::Pragma { text: format!("assign {}", target) })
        }
    }

    fn parse_measure_statement(&mut self) -> Result<Statement, String> {
        self.advance(); // consume measure
        let qubit = self.parse_qubit_ref()?;
        self.expect(Token::Arrow)?;
        let target = self.parse_classical_ref()?;
        self.expect(Token::Semicolon)?;
        Ok(Statement::Measure { qubit, target })
    }

    fn parse_qubit_decl(&mut self) -> Result<Statement, String> {
        let is_qreg = self.advance() == Token::Qreg;
        let mut size = None;
        if !is_qreg && self.check(&Token::LBracket) {
            self.advance();
            match self.advance() {
                Token::Integer(n) => size = Some(n as usize),
                other => return Err(format!("Expected integer register size, found {:?}", other)),
            }
            self.expect(Token::RBracket)?;
        }
        let name = match self.advance() {
            Token::Ident(id) => id,
            Token::HardwareQubit(idx) => format!("${}", idx),
            other => return Err(format!("Expected qubit register name, found {:?}", other)),
        };
        if is_qreg && self.check(&Token::LBracket) {
            self.advance();
            match self.advance() {
                Token::Integer(n) => size = Some(n as usize),
                other => return Err(format!("Expected integer register size, found {:?}", other)),
            }
            self.expect(Token::RBracket)?;
        }
        self.expect(Token::Semicolon)?;
        Ok(Statement::QubitDecl { name, size })
    }

    fn parse_classical_decl(&mut self) -> Result<Statement, String> {
        let tok = self.advance();
        let var_type = match tok {
            Token::Bit => {
                if self.check(&Token::LBracket) {
                    self.advance();
                    let n = match self.advance() {
                        Token::Integer(val) => val as usize,
                        other => return Err(format!("Expected integer array size, found {:?}", other)),
                    };
                    self.expect(Token::RBracket)?;
                    ClassicalType::BitArray(n)
                } else {
                    ClassicalType::Bit
                }
            }
            Token::Creg => {
                // OpenQASM 2.0 creg c[size];
                let name = match self.advance() {
                    Token::Ident(id) => id,
                    other => return Err(format!("Expected creg name, found {:?}", other)),
                };
                self.expect(Token::LBracket)?;
                let n = match self.advance() {
                    Token::Integer(val) => val as usize,
                    other => return Err(format!("Expected creg size, found {:?}", other)),
                };
                self.expect(Token::RBracket)?;
                self.expect(Token::Semicolon)?;
                return Ok(Statement::ClassicalDecl {
                    var_type: ClassicalType::BitArray(n),
                    name,
                    init: None,
                });
            }
            Token::Int => {
                let width = self.parse_optional_bracket_width()?.unwrap_or(32);
                ClassicalType::Int(width)
            }
            Token::Uint => {
                let width = self.parse_optional_bracket_width()?.unwrap_or(32);
                ClassicalType::Uint(width)
            }
            Token::Float => {
                let width = self.parse_optional_bracket_width()?.unwrap_or(64);
                ClassicalType::Float(width)
            }
            Token::Angle => {
                let width = self.parse_optional_bracket_width()?.unwrap_or(32);
                ClassicalType::Angle(width)
            }
            Token::Bool => ClassicalType::Bool,
            other => return Err(format!("Unexpected classical type token {:?}", other)),
        };

        let name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected classical variable name, found {:?}", other)),
        };

        let mut init = None;
        if self.check(&Token::Assign) {
            self.advance();
            init = Some(self.parse_expression()?);
        }

        self.expect(Token::Semicolon)?;
        Ok(Statement::ClassicalDecl { var_type, name, init })
    }

    fn parse_optional_bracket_width(&mut self) -> Result<Option<usize>, String> {
        if self.check(&Token::LBracket) {
            self.advance();
            let width = match self.advance() {
                Token::Integer(n) => n as usize,
                other => return Err(format!("Expected integer width, found {:?}", other)),
            };
            self.expect(Token::RBracket)?;
            Ok(Some(width))
        } else {
            Ok(None)
        }
    }

    fn parse_gate_decl(&mut self) -> Result<Statement, String> {
        self.advance(); // consume gate
        let name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected gate name, found {:?}", other)),
        };

        let mut params = Vec::new();
        if self.check(&Token::LParen) {
            self.advance();
            while !self.check(&Token::RParen) && !self.check(&Token::Eof) {
                match self.advance() {
                    Token::Ident(p) => params.push(p),
                    other => return Err(format!("Expected parameter identifier, found {:?}", other)),
                }
                if self.check(&Token::Comma) {
                    self.advance();
                } else {
                    break;
                }
            }
            self.expect(Token::RParen)?;
        }

        let mut qubits = Vec::new();
        while !self.check(&Token::LBrace) && !self.check(&Token::Eof) {
            match self.advance() {
                Token::Ident(q) => qubits.push(q),
                other => return Err(format!("Expected qubit argument in gate declaration, found {:?}", other)),
            }
            if self.check(&Token::Comma) {
                self.advance();
            } else {
                break;
            }
        }

        self.expect(Token::LBrace)?;
        let mut body = Vec::new();
        while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
            let gc = self.parse_gate_call()?;
            self.expect(Token::Semicolon)?;
            body.push(gc);
        }
        self.expect(Token::RBrace)?;

        Ok(Statement::GateDecl { name, params, qubits, body })
    }

    fn parse_gate_call(&mut self) -> Result<GateCall, String> {
        let mut modifiers = Vec::new();
        while self.check(&Token::Ctrl) || self.check(&Token::NegCtrl) || self.check(&Token::Inv) || self.check(&Token::Pow) {
            match self.advance() {
                Token::Ctrl => {
                    self.expect(Token::At)?;
                    modifiers.push(GateModifier::Ctrl);
                }
                Token::NegCtrl => {
                    self.expect(Token::At)?;
                    modifiers.push(GateModifier::NegCtrl);
                }
                Token::Inv => {
                    self.expect(Token::At)?;
                    modifiers.push(GateModifier::Inv);
                }
                Token::Pow => {
                    self.expect(Token::LParen)?;
                    let expr = self.parse_expression()?;
                    self.expect(Token::RParen)?;
                    self.expect(Token::At)?;
                    modifiers.push(GateModifier::Pow(expr));
                }
                _ => break,
            }
        }

        let name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected gate name identifier, found {:?}", other)),
        };

        let mut params = Vec::new();
        if self.check(&Token::LParen) {
            self.advance();
            while !self.check(&Token::RParen) && !self.check(&Token::Eof) {
                params.push(self.parse_expression()?);
                if self.check(&Token::Comma) {
                    self.advance();
                } else {
                    break;
                }
            }
            self.expect(Token::RParen)?;
        }

        let mut qubits = Vec::new();
        while !self.check(&Token::Semicolon) && !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
            qubits.push(self.parse_qubit_ref()?);
            if self.check(&Token::Comma) {
                self.advance();
            } else {
                break;
            }
        }

        Ok(GateCall { name, params, qubits, modifiers })
    }

    fn parse_qubit_ref(&mut self) -> Result<QubitRef, String> {
        match self.peek() {
            Token::HardwareQubit(idx) => {
                let i = *idx;
                self.advance();
                Ok(QubitRef::Hardware(i))
            }
            Token::Ident(id) => {
                let name = id.clone();
                self.advance();
                if self.check(&Token::LBracket) {
                    self.advance();
                    let qref = match self.advance() {
                        Token::Integer(n) => QubitRef::Register(name, n as usize),
                        Token::Ident(var) => QubitRef::Variable(name, var),
                        other => return Err(format!("Expected index or variable, found {:?}", other)),
                    };
                    self.expect(Token::RBracket)?;
                    Ok(qref)
                } else {
                    Ok(QubitRef::Single(name))
                }
            }
            other => Err(format!("Expected qubit reference, found {:?}", other)),
        }
    }

    fn parse_classical_ref(&mut self) -> Result<ClassicalRef, String> {
        let name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected classical identifier, found {:?}", other)),
        };
        if self.check(&Token::LBracket) {
            self.advance();
            let cref = match self.advance() {
                Token::Integer(n) => ClassicalRef::Register(name, n as usize),
                Token::Ident(var) => ClassicalRef::Variable(name, var),
                other => return Err(format!("Expected integer or variable bit index, found {:?}", other)),
            };
            self.expect(Token::RBracket)?;
            Ok(cref)
        } else {
            Ok(ClassicalRef::Single(name))
        }
    }

    fn parse_if(&mut self) -> Result<Statement, String> {
        self.advance(); // consume if
        self.expect(Token::LParen)?;
        let condition = self.parse_expression()?;
        self.expect(Token::RParen)?;

        let mut then_branch = Vec::new();
        if self.check(&Token::LBrace) {
            self.advance();
            while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
                then_branch.push(self.parse_statement()?);
            }
            self.expect(Token::RBrace)?;
        } else {
            // Single-statement body
            then_branch.push(self.parse_statement()?);
        }

        let mut else_branch = None;
        if self.check(&Token::Else) {
            self.advance();
            let mut branch = Vec::new();
            if self.check(&Token::LBrace) {
                self.advance();
                while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
                    branch.push(self.parse_statement()?);
                }
                self.expect(Token::RBrace)?;
            } else {
                branch.push(self.parse_statement()?);
            }
            else_branch = Some(branch);
        }

        Ok(Statement::If { condition, then_branch, else_branch })
    }

    fn parse_for(&mut self) -> Result<Statement, String> {
        self.advance(); // consume for
        let var_name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected loop variable identifier, found {:?}", other)),
        };
        self.expect(Token::In)?;
        self.expect(Token::LBracket)?;

        let start = match self.advance() {
            Token::Integer(n) => n,
            other => return Err(format!("Expected integer loop start, found {:?}", other)),
        };
        self.expect(Token::Colon)?;

        let (step, end) = match self.advance() {
            Token::Integer(first) => {
                if self.check(&Token::Colon) {
                    self.advance();
                    match self.advance() {
                        Token::Integer(second) => (first, second),
                        other => return Err(format!("Expected integer loop end, found {:?}", other)),
                    }
                } else {
                    (1, first)
                }
            }
            other => return Err(format!("Expected integer loop bound, found {:?}", other)),
        };
        self.expect(Token::RBracket)?;

        self.expect(Token::LBrace)?;
        let mut body = Vec::new();
        while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
            body.push(self.parse_statement()?);
        }
        self.expect(Token::RBrace)?;

        Ok(Statement::For { var_name, start, step, end, body })
    }

    fn parse_while(&mut self) -> Result<Statement, String> {
        self.advance(); // consume while
        self.expect(Token::LParen)?;
        let condition = self.parse_expression()?;
        self.expect(Token::RParen)?;

        self.expect(Token::LBrace)?;
        let mut body = Vec::new();
        while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
            body.push(self.parse_statement()?);
        }
        self.expect(Token::RBrace)?;

        Ok(Statement::While { condition, body })
    }

    fn parse_defcal(&mut self) -> Result<Statement, String> {
        self.advance(); // consume defcal
        let name = match self.advance() {
            Token::Ident(id) => id,
            other => return Err(format!("Expected defcal name, found {:?}", other)),
        };

        let mut params = Vec::new();
        if self.check(&Token::LParen) {
            self.advance();
            if !self.check(&Token::RParen) {
                while !self.check(&Token::RParen) && !self.check(&Token::Eof) {
                    let mut p = String::new();
                    while !self.check(&Token::Comma) && !self.check(&Token::RParen) && !self.check(&Token::Eof) {
                        p.push_str(&format!("{:?} ", self.advance()));
                    }
                    params.push(p.trim().into());
                    if self.check(&Token::Comma) {
                        self.advance();
                    } else {
                        break;
                    }
                }
            }
            self.expect(Token::RParen)?;
        }

        let mut qubits = Vec::new();
        while !self.check(&Token::LBrace) && !self.check(&Token::Eof) {
            qubits.push(self.parse_qubit_ref()?);
            if self.check(&Token::Comma) {
                self.advance();
            } else {
                break;
            }
        }

        self.expect(Token::LBrace)?;
        let mut body = Vec::new();
        while !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
            let mut stmt_text = String::new();
            while !self.check(&Token::Semicolon) && !self.check(&Token::RBrace) && !self.check(&Token::Eof) {
                stmt_text.push_str(&format!("{:?} ", self.advance()));
            }
            if self.check(&Token::Semicolon) {
                self.advance();
            }
            body.push(CalStatement::Play {
                channel: "tx".into(),
                waveform: stmt_text.trim().into(),
                args: Vec::new(),
            });
        }
        self.expect(Token::RBrace)?;

        Ok(Statement::Defcal { name, params, qubits, body })
    }

    pub fn parse_expression(&mut self) -> Result<Expression, String> {
        self.parse_equality()
    }

    fn parse_equality(&mut self) -> Result<Expression, String> {
        let mut expr = self.parse_relational()?;
        while self.check(&Token::Eq) || self.check(&Token::Neq) {
            let op = match self.advance() {
                Token::Eq => BinaryOp::Eq,
                Token::Neq => BinaryOp::Neq,
                _ => unreachable!(),
            };
            let right = self.parse_relational()?;
            expr = Expression::Binary(op, Box::new(expr), Box::new(right));
        }
        Ok(expr)
    }

    fn parse_relational(&mut self) -> Result<Expression, String> {
        let mut expr = self.parse_additive()?;
        while self.check(&Token::Lt) || self.check(&Token::Lte) || self.check(&Token::Gt) || self.check(&Token::Gte) {
            let op = match self.advance() {
                Token::Lt => BinaryOp::Lt,
                Token::Lte => BinaryOp::Lte,
                Token::Gt => BinaryOp::Gt,
                Token::Gte => BinaryOp::Gte,
                _ => unreachable!(),
            };
            let right = self.parse_additive()?;
            expr = Expression::Binary(op, Box::new(expr), Box::new(right));
        }
        Ok(expr)
    }

    fn parse_additive(&mut self) -> Result<Expression, String> {
        let mut expr = self.parse_multiplicative()?;
        while self.check(&Token::Plus) || self.check(&Token::Minus) {
            let op = match self.advance() {
                Token::Plus => BinaryOp::Add,
                Token::Minus => BinaryOp::Sub,
                _ => unreachable!(),
            };
            let right = self.parse_multiplicative()?;
            expr = Expression::Binary(op, Box::new(expr), Box::new(right));
        }
        Ok(expr)
    }

    fn parse_multiplicative(&mut self) -> Result<Expression, String> {
        let mut expr = self.parse_primary()?;
        while self.check(&Token::Star) || self.check(&Token::Slash) || self.check(&Token::Percent) {
            let op = match self.advance() {
                Token::Star => BinaryOp::Mul,
                Token::Slash => BinaryOp::Div,
                Token::Percent => BinaryOp::Mod,
                _ => unreachable!(),
            };
            let right = self.parse_primary()?;
            expr = Expression::Binary(op, Box::new(expr), Box::new(right));
        }
        Ok(expr)
    }

    fn parse_primary(&mut self) -> Result<Expression, String> {
        match self.peek() {
            Token::Integer(n) => {
                let val = *n;
                self.advance();
                Ok(Expression::Integer(val))
            }
            Token::FloatLit(f) => {
                let val = *f;
                self.advance();
                Ok(Expression::Float(val))
            }
            Token::Pi => {
                self.advance();
                Ok(Expression::Pi)
            }
            Token::Tau => {
                self.advance();
                Ok(Expression::Tau)
            }
            Token::Euler => {
                self.advance();
                Ok(Expression::Euler)
            }
            Token::DurationLit(val, unit_str) => {
                let v = *val;
                let u_str = unit_str.clone();
                self.advance();
                let unit = match u_str.as_str() {
                    "dt" => DurationUnit::Dt,
                    "ns" => DurationUnit::Ns,
                    "us" => DurationUnit::Us,
                    "ms" => DurationUnit::Ms,
                    _ => DurationUnit::S,
                };
                Ok(Expression::Duration(v, unit))
            }
            Token::Ident(id) => {
                let name = id.clone();
                self.advance();
                if self.check(&Token::LBracket) {
                    self.advance();
                    let idx = match self.advance() {
                        Token::Integer(n) => n as usize,
                        other => return Err(format!("Expected integer register index, found {:?}", other)),
                    };
                    self.expect(Token::RBracket)?;
                    Ok(Expression::IndexedIdentifier(name, idx))
                } else {
                    Ok(Expression::Identifier(name))
                }
            }
            Token::Minus => {
                self.advance();
                let sub = self.parse_primary()?;
                Ok(Expression::Unary(UnaryOp::Neg, Box::new(sub)))
            }
            Token::LParen => {
                self.advance();
                let expr = self.parse_expression()?;
                self.expect(Token::RParen)?;
                Ok(expr)
            }
            other => Err(format!("Unexpected token in expression: {:?}", other)),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::lexer::Lexer;

    #[test]
    fn test_parse_simple_circuit() {
        let src = r#"
            OPENQASM 3.0;
            include "stdgates.inc";
            qubit[2] q;
            bit[2] c;
            h q[0];
            cx q[0], q[1];
            c[0] = measure q[0];
            c[1] = measure q[1];
        "#;
        let mut lexer = Lexer::new(src);
        let tokens = lexer.tokenize().unwrap();
        let mut parser = Parser::new(tokens);
        let prog = parser.parse_program().unwrap();

        assert_eq!(prog.version, Some("3.0".into()));
        assert_eq!(prog.includes, vec!["stdgates.inc"]);
        assert_eq!(prog.statements.len(), 6);
        assert_eq!(prog.count_gates(), 2);
    }

    #[test]
    fn test_parse_conditional_and_loop() {
        let src = r#"
            OPENQASM 3.0;
            qubit[4] q;
            bit[4] c;
            for i in [0:3] {
                h q[i];
            }
            if (c[0] == 1) {
                x q[1];
            } else {
                z q[1];
            }
        "#;
        let mut lexer = Lexer::new(src);
        let tokens = lexer.tokenize().unwrap();
        let mut parser = Parser::new(tokens);
        let prog = parser.parse_program().unwrap();

        assert_eq!(prog.statements.len(), 4);
    }
}
