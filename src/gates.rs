//! Standard OpenQASM 3.0 gate definitions, unitary representations, and metadata.
//!
//! Provides unitary matrix calculation for single-, two-, and three-qubit gates,
//! Clifford classification, and inverse relations.

use std::f64::consts::{FRAC_1_SQRT_2, PI};

/// Representation of a complex scalar with arithmetic operations.
#[derive(Debug, Clone, Copy, PartialEq)]
pub struct Complex64 {
    pub re: f64,
    pub im: f64,
}

impl Complex64 {
    pub const ZERO: Self = Self { re: 0.0, im: 0.0 };
    pub const ONE: Self = Self { re: 1.0, im: 0.0 };
    pub const I: Self = Self { re: 0.0, im: 1.0 };

    pub fn new(re: f64, im: f64) -> Self {
        Self { re, im }
    }

    pub fn from_polar(r: f64, theta: f64) -> Self {
        Self {
            re: r * theta.cos(),
            im: r * theta.sin(),
        }
    }

    pub fn norm_sq(&self) -> f64 {
        self.re * self.re + self.im * self.im
    }

    pub fn norm(&self) -> f64 {
        self.norm_sq().sqrt()
    }

    pub fn conj(&self) -> Self {
        Self { re: self.re, im: -self.im }
    }

    pub fn add(&self, other: Self) -> Self {
        Self { re: self.re + other.re, im: self.im + other.im }
    }

    pub fn sub(&self, other: Self) -> Self {
        Self { re: self.re - other.re, im: self.im - other.im }
    }

    pub fn mul(&self, other: Self) -> Self {
        Self {
            re: self.re * other.re - self.im * other.im,
            im: self.re * other.im + self.im * other.re,
        }
    }

    pub fn scale(&self, s: f64) -> Self {
        Self { re: self.re * s, im: self.im * s }
    }
}

/// Known standard gate classifications.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum GateKind {
    // 1-qubit Clifford
    I,
    X,
    Y,
    Z,
    H,
    S,
    Sdg,
    Sx,
    Sxdg,
    // 1-qubit Non-Clifford
    T,
    Tdg,
    Rx,
    Ry,
    Rz,
    P,
    U1,
    U2,
    U3,
    // 2-qubit Clifford
    Cx,
    Cz,
    Cy,
    Ch,
    Swap,
    // 2-qubit Non-Clifford
    ISwap,
    Cp,
    Crx,
    Cry,
    Crz,
    Ecr,
    // 3-qubit
    Ccx,
    Cswap,
}

impl GateKind {
    pub fn from_str(name: &str) -> Option<Self> {
        match name.to_lowercase().as_str() {
            "id" | "i" => Some(GateKind::I),
            "x" => Some(GateKind::X),
            "y" => Some(GateKind::Y),
            "z" => Some(GateKind::Z),
            "h" => Some(GateKind::H),
            "s" => Some(GateKind::S),
            "sdg" => Some(GateKind::Sdg),
            "sx" => Some(GateKind::Sx),
            "sxdg" => Some(GateKind::Sxdg),
            "t" => Some(GateKind::T),
            "tdg" => Some(GateKind::Tdg),
            "rx" => Some(GateKind::Rx),
            "ry" => Some(GateKind::Ry),
            "rz" => Some(GateKind::Rz),
            "p" | "phase" => Some(GateKind::P),
            "u1" => Some(GateKind::U1),
            "u2" => Some(GateKind::U2),
            "u3" | "u" => Some(GateKind::U3),
            "cx" | "cnot" => Some(GateKind::Cx),
            "cz" => Some(GateKind::Cz),
            "cy" => Some(GateKind::Cy),
            "ch" => Some(GateKind::Ch),
            "swap" => Some(GateKind::Swap),
            "iswap" => Some(GateKind::ISwap),
            "cp" => Some(GateKind::Cp),
            "crx" => Some(GateKind::Crx),
            "cry" => Some(GateKind::Cry),
            "crz" => Some(GateKind::Crz),
            "ecr" => Some(GateKind::Ecr),
            "ccx" | "toffoli" => Some(GateKind::Ccx),
            "cswap" | "fredkin" => Some(GateKind::Cswap),
            _ => None,
        }
    }

    pub fn num_qubits(&self) -> usize {
        match self {
            GateKind::I | GateKind::X | GateKind::Y | GateKind::Z | GateKind::H | GateKind::S |
            GateKind::Sdg | GateKind::Sx | GateKind::Sxdg | GateKind::T | GateKind::Tdg |
            GateKind::Rx | GateKind::Ry | GateKind::Rz | GateKind::P | GateKind::U1 |
            GateKind::U2 | GateKind::U3 => 1,

            GateKind::Cx | GateKind::Cz | GateKind::Cy | GateKind::Ch | GateKind::Swap |
            GateKind::ISwap | GateKind::Cp | GateKind::Crx | GateKind::Cry | GateKind::Crz |
            GateKind::Ecr => 2,

            GateKind::Ccx | GateKind::Cswap => 3,
        }
    }

    pub fn is_clifford(&self) -> bool {
        match self {
            GateKind::I | GateKind::X | GateKind::Y | GateKind::Z | GateKind::H | GateKind::S |
            GateKind::Sdg | GateKind::Sx | GateKind::Sxdg | GateKind::Cx | GateKind::Cz |
            GateKind::Cy | GateKind::Swap => true,
            _ => false,
        }
    }

    /// Computes the 2x2 complex unitary matrix for 1-qubit gates.
    pub fn unitary_1q(&self, params: &[f64]) -> Result<[[Complex64; 2]; 2], String> {
        let zero = Complex64::ZERO;
        let one = Complex64::ONE;
        let i = Complex64::I;

        match self {
            GateKind::I => Ok([[one, zero], [zero, one]]),
            GateKind::X => Ok([[zero, one], [one, zero]]),
            GateKind::Y => Ok([[zero, Complex64::new(0.0, -1.0)], [i, zero]]),
            GateKind::Z => Ok([[one, zero], [zero, Complex64::new(-1.0, 0.0)]]),
            GateKind::H => {
                let s = Complex64::new(FRAC_1_SQRT_2, 0.0);
                Ok([[s, s], [s, Complex64::new(-FRAC_1_SQRT_2, 0.0)]])
            }
            GateKind::S => Ok([[one, zero], [zero, i]]),
            GateKind::Sdg => Ok([[one, zero], [zero, Complex64::new(0.0, -1.0)]]),
            GateKind::Sx => {
                let half = Complex64::new(0.5, 0.5);
                let half_m = Complex64::new(0.5, -0.5);
                Ok([[half, half_m], [half_m, half]])
            }
            GateKind::Sxdg => {
                let half = Complex64::new(0.5, -0.5);
                let half_p = Complex64::new(0.5, 0.5);
                Ok([[half, half_p], [half_p, half]])
            }
            GateKind::T => {
                let phase = Complex64::from_polar(1.0, PI / 4.0);
                Ok([[one, zero], [zero, phase]])
            }
            GateKind::Tdg => {
                let phase = Complex64::from_polar(1.0, -PI / 4.0);
                Ok([[one, zero], [zero, phase]])
            }
            GateKind::Rx => {
                let theta = params.first().copied().unwrap_or(0.0);
                let c = Complex64::new((theta / 2.0).cos(), 0.0);
                let s = Complex64::new(0.0, -(theta / 2.0).sin());
                Ok([[c, s], [s, c]])
            }
            GateKind::Ry => {
                let theta = params.first().copied().unwrap_or(0.0);
                let c = Complex64::new((theta / 2.0).cos(), 0.0);
                let s = Complex64::new((theta / 2.0).sin(), 0.0);
                let s_neg = Complex64::new(-(theta / 2.0).sin(), 0.0);
                Ok([[c, s_neg], [s, c]])
            }
            GateKind::Rz => {
                let theta = params.first().copied().unwrap_or(0.0);
                let p1 = Complex64::from_polar(1.0, -theta / 2.0);
                let p2 = Complex64::from_polar(1.0, theta / 2.0);
                Ok([[p1, zero], [zero, p2]])
            }
            GateKind::P | GateKind::U1 => {
                let lambda = params.first().copied().unwrap_or(0.0);
                let p = Complex64::from_polar(1.0, lambda);
                Ok([[one, zero], [zero, p]])
            }
            GateKind::U2 => {
                let phi = params.get(0).copied().unwrap_or(0.0);
                let lambda = params.get(1).copied().unwrap_or(0.0);
                let inv_sqrt2 = Complex64::new(FRAC_1_SQRT_2, 0.0);
                let m00 = inv_sqrt2;
                let m01 = Complex64::from_polar(FRAC_1_SQRT_2, lambda).scale(-1.0);
                let m10 = Complex64::from_polar(FRAC_1_SQRT_2, phi);
                let m11 = Complex64::from_polar(FRAC_1_SQRT_2, phi + lambda);
                Ok([[m00, m01], [m10, m11]])
            }
            GateKind::U3 => {
                let theta = params.get(0).copied().unwrap_or(0.0);
                let phi = params.get(1).copied().unwrap_or(0.0);
                let lambda = params.get(2).copied().unwrap_or(0.0);
                let cos_half = (theta / 2.0).cos();
                let sin_half = (theta / 2.0).sin();
                let m00 = Complex64::new(cos_half, 0.0);
                let m01 = Complex64::from_polar(sin_half, lambda).scale(-1.0);
                let m10 = Complex64::from_polar(sin_half, phi);
                let m11 = Complex64::from_polar(cos_half, phi + lambda);
                Ok([[m00, m01], [m10, m11]])
            }
            other => Err(format!("{:?} is not a 1-qubit gate", other)),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_hadamard_unitary() {
        let h = GateKind::H.unitary_1q(&[]).unwrap();
        let expected_val = FRAC_1_SQRT_2;
        assert!((h[0][0].re - expected_val).abs() < 1e-10);
        assert!((h[1][1].re + expected_val).abs() < 1e-10);
    }

    #[test]
    fn test_pauli_x_flips() {
        let x = GateKind::X.unitary_1q(&[]).unwrap();
        assert_eq!(x[0][0], Complex64::ZERO);
        assert_eq!(x[0][1], Complex64::ONE);
        assert_eq!(x[1][0], Complex64::ONE);
        assert_eq!(x[1][1], Complex64::ZERO);
    }

    #[test]
    fn test_rx_pi() {
        let rx_pi = GateKind::Rx.unitary_1q(&[PI]).unwrap();
        // Rx(pi) = -i * X
        assert!(rx_pi[0][0].norm() < 1e-10);
        assert!((rx_pi[0][1].im - (-1.0)).abs() < 1e-10);
    }
}
