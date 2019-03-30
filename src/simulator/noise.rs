//! Quantum noise models and Kraus channel operations.
//!
//! Models physical transmon decay mechanisms: T1 energy relaxation (amplitude damping),
//! T2 pure dephasing (phase damping), depolarizing channels, and readout confusion matrices.

use crate::gates::Complex64;

/// Physical decoherence and gate error parameters for superconducting transmons.
#[derive(Debug, Clone, Copy, PartialEq)]
pub struct NoiseModel {
    /// 1-qubit depolarizing gate error rate.
    pub p1_error: f64,
    /// 2-qubit (coupler/cross-resonance) gate error rate.
    pub p2_error: f64,
    /// Amplitude damping parameter gamma = 1 - exp(-t_gate / T1).
    pub gamma_t1: f64,
    /// Phase damping parameter lambda = 1 - exp(-t_gate / T_phi).
    pub lambda_t2: f64,
    /// Readout measurement error p(1|0).
    pub p0_to_1: f64,
    /// Readout measurement error p(0|1).
    pub p1_to_0: f64,
}

impl NoiseModel {
    /// Ideal noiseless execution parameters.
    pub fn ideal() -> Self {
        Self {
            p1_error: 0.0,
            p2_error: 0.0,
            gamma_t1: 0.0,
            lambda_t2: 0.0,
            p0_to_1: 0.0,
            p1_to_0: 0.0,
        }
    }

    /// Typical IBM Quantum Heron / Google Sycamore physical transmon noise parameters.
    pub fn realistic_transmon() -> Self {
        Self {
            p1_error: 1.5e-4,  // 99.985% 1-qubit fidelity
            p2_error: 2.5e-3,  // 99.75% 2-qubit coupler fidelity
            gamma_t1: 1.2e-4,  // T1 ~ 200us with 20ns gate
            lambda_t2: 2.0e-4, // T2 ~ 120us
            p0_to_1: 0.012,    // 1.2% readout error
            p1_to_0: 0.018,    // 1.8% readout error
        }
    }

    /// Compute Kraus operators for amplitude damping channel.
    ///
    /// E0 = [[1, 0], [0, sqrt(1 - gamma)]]
    /// E1 = [[0, sqrt(gamma)], [0, 0]]
    pub fn amplitude_damping_kraus(&self) -> [[[Complex64; 2]; 2]; 2] {
        let gamma = self.gamma_t1.clamp(0.0, 1.0);
        let sqrt_1_minus_gamma = (1.0 - gamma).sqrt();
        let sqrt_gamma = gamma.sqrt();

        let e0 = [
            [Complex64::ONE, Complex64::ZERO],
            [Complex64::ZERO, Complex64::new(sqrt_1_minus_gamma, 0.0)],
        ];

        let e1 = [
            [Complex64::ZERO, Complex64::new(sqrt_gamma, 0.0)],
            [Complex64::ZERO, Complex64::ZERO],
        ];

        [e0, e1]
    }

    /// Corrupt an ideal measurement bit with readout assignment errors.
    pub fn apply_readout_error(&self, ideal_bit: bool, coin_flip: f64) -> bool {
        if !ideal_bit {
            // State |0>: flips to |1> with probability p0_to_1
            coin_flip < self.p0_to_1
        } else {
            // State |1>: flips to |0> with probability p1_to_0
            coin_flip >= self.p1_to_0
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_ideal_noise_preserves_measurement() {
        let noise = NoiseModel::ideal();
        assert_eq!(noise.apply_readout_error(false, 0.5), false);
        assert_eq!(noise.apply_readout_error(true, 0.5), true);
    }

    #[test]
    fn test_amplitude_damping_kraus_completeness() {
        let noise = NoiseModel::realistic_transmon();
        let [e0, e1] = noise.amplitude_damping_kraus();

        // Check E0^dagger * E0 + E1^dagger * E1 = I
        // E0_00^2 + E1_00^2 = 1 + 0 = 1
        let norm00 = e0[0][0].norm_sq() + e1[0][0].norm_sq();
        assert!((norm00 - 1.0).abs() < 1e-10);

        // E0_11^2 + E1_01^2 = (1 - gamma) + gamma = 1
        let norm11 = e0[1][1].norm_sq() + e1[0][1].norm_sq();
        assert!((norm11 - 1.0).abs() < 1e-10);
    }
}
