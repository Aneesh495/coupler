//! Types system for OpenQASM 3.0 classical and quantum data representations.
//!
//! Provides scalar and register types, physical and virtual qubit references,
//! classical values, arithmetic expressions, and quantum gate modifier metadata.

use serde::{Deserialize, Serialize};
use std::fmt;

/// Classical scalar and fixed-width register types defined in OpenQASM 3.0.
#[derive(Debug, Clone, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum ClassicalType {
    /// Single classical measurement bit.
    Bit,
    /// Bit register of specified width.
    BitArray(usize),
    /// Signed integer with specified bit width (e.g., int[32]).
    Int(usize),
    /// Unsigned integer with specified bit width (e.g., uint[32]).
    Uint(usize),
    /// IEEE-754 floating point scalar (e.g., float[64]).
    Float(usize),
    /// Fixed-point angle type modulo 2*pi (e.g., angle[32]).
    Angle(usize),
    /// Boolean condition flag.
    Bool,
    /// Physical timing duration (e.g., 160dt or 20ns).
    Duration,
    /// Variable stretch duration for pulse alignment.
    Stretch,
}

impl fmt::Display for ClassicalType {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            ClassicalType::Bit => write!(f, "bit"),
            ClassicalType::BitArray(w) => write!(f, "bit[{}]", w),
            ClassicalType::Int(w) => write!(f, "int[{}]", w),
            ClassicalType::Uint(w) => write!(f, "uint[{}]", w),
            ClassicalType::Float(w) => write!(f, "float[{}]", w),
            ClassicalType::Angle(w) => write!(f, "angle[{}]", w),
            ClassicalType::Bool => write!(f, "bool"),
            ClassicalType::Duration => write!(f, "duration"),
            ClassicalType::Stretch => write!(f, "stretch"),
        }
    }
}

/// Runtime evaluation values for classical expressions and registers.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub enum ClassicalValue {
    Bit(bool),
    BitArray(Vec<bool>),
    Int(i64),
    Uint(u64),
    Float(f64),
    Bool(bool),
    DurationFs(u64), // Stored in femtoseconds for integer precision
}

impl ClassicalValue {
    pub fn as_bool(&self) -> Option<bool> {
        match self {
            ClassicalValue::Bool(b) | ClassicalValue::Bit(b) => Some(*b),
            ClassicalValue::Int(i) => Some(*i != 0),
            ClassicalValue::Uint(u) => Some(*u != 0),
            _ => None,
        }
    }

    pub fn as_f64(&self) -> Option<f64> {
        match self {
            ClassicalValue::Float(v) => Some(*v),
            ClassicalValue::Int(i) => Some(*i as f64),
            ClassicalValue::Uint(u) => Some(*u as f64),
            _ => None,
        }
    }
}

/// Binary operators for classical computations.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum BinaryOp {
    Add,
    Sub,
    Mul,
    Div,
    Mod,
    Pow,
    Eq,
    Neq,
    Lt,
    Lte,
    Gt,
    Gte,
    And,
    Or,
    BitAnd,
    BitOr,
    BitXor,
    Shl,
    Shr,
}

/// Unary operators for classical computations.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum UnaryOp {
    Neg,
    Not,
    BitNot,
}

/// Classical arithmetic and logical expressions.
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub enum Expression {
    Integer(i64),
    Float(f64),
    Boolean(bool),
    Identifier(String),
    IndexedIdentifier(String, usize),
    VariableIndexed(String, String),
    Binary(BinaryOp, Box<Expression>, Box<Expression>),
    Unary(UnaryOp, Box<Expression>),
    Pi,
    Euler,
    Tau,
    Duration(f64, DurationUnit),
}

/// Physical duration units supported by OpenQASM 3.0.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum DurationUnit {
    Dt,
    Ns,
    Us,
    Ms,
    S,
}

/// Reference to a physical or virtual qubit.
#[derive(Debug, Clone, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum QubitRef {
    Single(String),
    Register(String, usize),
    Variable(String, String), // e.g. q[i]
    Hardware(usize),          // Direct hardware qubit index e.g. $0, $1
}

impl fmt::Display for QubitRef {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            QubitRef::Single(name) => write!(f, "{}", name),
            QubitRef::Register(name, idx) => write!(f, "{}[{}]", name, idx),
            QubitRef::Variable(name, var) => write!(f, "{}[{}]", name, var),
            QubitRef::Hardware(idx) => write!(f, "${}", idx),
        }
    }
}

/// Reference to a classical storage destination.
#[derive(Debug, Clone, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum ClassicalRef {
    Single(String),
    Register(String, usize),
    Variable(String, String),
}

impl fmt::Display for ClassicalRef {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            ClassicalRef::Single(name) => write!(f, "{}", name),
            ClassicalRef::Register(name, idx) => write!(f, "{}[{}]", name, idx),
            ClassicalRef::Variable(name, var) => write!(f, "{}[{}]", name, var),
        }
    }
}

/// Quantum gate modifiers (ctrl, negctrl, inv, pow).
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub enum GateModifier {
    Ctrl,
    NegCtrl,
    Inv,
    Pow(Expression),
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_classical_type_display() {
        assert_eq!(ClassicalType::Bit.to_string(), "bit");
        assert_eq!(ClassicalType::BitArray(4).to_string(), "bit[4]");
        assert_eq!(ClassicalType::Angle(32).to_string(), "angle[32]");
    }

    #[test]
    fn test_qubit_ref_display() {
        assert_eq!(QubitRef::Single("q".into()).to_string(), "q");
        assert_eq!(QubitRef::Register("data".into(), 5).to_string(), "data[5]");
        assert_eq!(QubitRef::Variable("data".into(), "i".into()).to_string(), "data[i]");
        assert_eq!(QubitRef::Hardware(12).to_string(), "$12");
    }

    #[test]
    fn test_classical_values() {
        let b = ClassicalValue::Bit(true);
        assert_eq!(b.as_bool(), Some(true));
        let f = ClassicalValue::Float(3.14159);
        assert_eq!(f.as_f64(), Some(3.14159));
    }
}
