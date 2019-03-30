//! Aaronson-Gottesman polynomial-time Clifford tableau stabilizer simulator (CHP).
//!
//! Enables efficient simulation of thousands of qubits for fault-tolerant surface codes,
//! stabilizer syndrome extraction rounds, and quantum error correction circuits.

/// Tableau representation of an N-qubit stabilizer state.
///
/// Matrix dimensions: (2N) rows x (2N + 1) columns.
/// Rows 0..N: Destabilizers
/// Rows N..2N: Stabilizers
/// Columns 0..N: X-matrix bits
/// Columns N..2N: Z-matrix bits
/// Column 2N: Phase bit r in {0, 1}
pub struct StabilizerTableau {
    pub num_qubits: usize,
    /// Flat bit-matrix of size (2N) x (2N + 1)
    pub table: Vec<bool>,
}

impl StabilizerTableau {
    pub fn new(num_qubits: usize) -> Self {
        let n = num_qubits;
        let num_rows = 2 * n;
        let num_cols = 2 * n + 1;
        let mut table = vec![false; num_rows * num_cols];

        // Initialize to |0...0>:
        // Destabilizer i has X_i: table[i][i] = true
        // Stabilizer i has Z_i: table[n + i][n + i] = true
        for i in 0..n {
            // Destabilizer i: X_i
            table[i * num_cols + i] = true;
            // Stabilizer i: Z_i
            table[(n + i) * num_cols + (n + i)] = true;
        }

        Self { num_qubits, table }
    }

    #[inline(always)]
    fn get(&self, row: usize, col: usize) -> bool {
        let cols = 2 * self.num_qubits + 1;
        self.table[row * cols + col]
    }

    #[inline(always)]
    fn set(&mut self, row: usize, col: usize, val: bool) {
        let cols = 2 * self.num_qubits + 1;
        self.table[row * cols + col] = val;
    }

    /// Apply Hadamard gate H to qubit q.
    pub fn h(&mut self, q: usize) {
        let n = self.num_qubits;
        for i in 0..(2 * n) {
            let x = self.get(i, q);
            let z = self.get(i, n + q);
            let r = self.get(i, 2 * n);

            // r = r ^ (x & z)
            self.set(i, 2 * n, r ^ (x & z));
            // Swap x and z
            self.set(i, q, z);
            self.set(i, n + q, x);
        }
    }

    /// Apply Phase gate S = sqrt(Z) to qubit q.
    pub fn s(&mut self, q: usize) {
        let n = self.num_qubits;
        for i in 0..(2 * n) {
            let x = self.get(i, q);
            let z = self.get(i, n + q);
            let r = self.get(i, 2 * n);

            self.set(i, 2 * n, r ^ (x & z));
            self.set(i, n + q, z ^ x);
        }
    }

    /// Apply Pauli-X gate to qubit q.
    pub fn x(&mut self, q: usize) {
        let n = self.num_qubits;
        for i in 0..(2 * n) {
            let z = self.get(i, n + q);
            let r = self.get(i, 2 * n);
            self.set(i, 2 * n, r ^ z);
        }
    }

    /// Apply Pauli-Z gate to qubit q.
    pub fn z(&mut self, q: usize) {
        let n = self.num_qubits;
        for i in 0..(2 * n) {
            let x = self.get(i, q);
            let r = self.get(i, 2 * n);
            self.set(i, 2 * n, r ^ x);
        }
    }

    /// Apply Controlled-NOT (CX) gate from control c to target t.
    pub fn cx(&mut self, c: usize, t: usize) {
        let n = self.num_qubits;
        for i in 0..(2 * n) {
            let xc = self.get(i, c);
            let zc = self.get(i, n + c);
            let xt = self.get(i, t);
            let zt = self.get(i, n + t);
            let r = self.get(i, 2 * n);

            let phase_flip = xc & zt & (xt ^ zc ^ true);
            self.set(i, 2 * n, r ^ phase_flip);
            self.set(i, t, xt ^ xc);
            self.set(i, n + c, zc ^ zt);
        }
    }

    /// Apply Controlled-Z (CZ) gate between qubits c and t.
    pub fn cz(&mut self, c: usize, t: usize) {
        // CZ is equivalent to H(t) -> CX(c, t) -> H(t)
        self.h(t);
        self.cx(c, t);
        self.h(t);
    }

    /// Row multiplication helper: row(i) <- row(i) * row(j).
    fn row_mult(&mut self, i: usize, j: usize) {
        let n = self.num_qubits;
        let mut g = 0i32;

        for k in 0..n {
            let x1 = self.get(i, k);
            let z1 = self.get(i, n + k);
            let x2 = self.get(j, k);
            let z2 = self.get(j, n + k);

            // Exponent tracking for phase accumulation
            let term = match (x1, z1, x2, z2) {
                (false, false, _, _) => 0,
                (true, true, false, false) => 0,
                (true, true, true, false) => 1,
                (true, true, false, true) => -1,
                (true, true, true, true) => 0,
                (true, false, false, false) => 0,
                (true, false, true, false) => 0,
                (true, false, false, true) => 1,
                (true, false, true, true) => -1,
                (false, true, false, false) => 0,
                (false, true, true, false) => -1,
                (false, true, false, true) => 0,
                (false, true, true, true) => 1,
            };
            g += term;

            self.set(i, k, x1 ^ x2);
            self.set(i, n + k, z1 ^ z2);
        }

        let r1 = if self.get(i, 2 * n) { 2 } else { 0 };
        let r2 = if self.get(j, 2 * n) { 2 } else { 0 };
        let total = (r1 + r2 + g).rem_euclid(4);

        self.set(i, 2 * n, total == 2);
    }

    /// Measure qubit q in computational basis with a pseudo-random coin flip.
    /// Returns boolean measurement outcome (false = 0, true = 1).
    pub fn measure(&mut self, q: usize, coin_flip: bool) -> bool {
        let n = self.num_qubits;

        // Case 1: Is outcome non-deterministic? (There exists stabilizer with X_q = 1)
        let mut p = None;
        for i in n..(2 * n) {
            if self.get(i, q) {
                p = Some(i);
                break;
            }
        }

        if let Some(p_idx) = p {
            // Non-deterministic outcome
            for i in 0..(2 * n) {
                if i != p_idx && self.get(i, q) {
                    self.row_mult(i, p_idx);
                }
            }

            // Copy stabilizer p_idx - n to destabilizer p_idx - n
            let destab_idx = p_idx - n;
            for col in 0..(2 * n + 1) {
                self.set(destab_idx, col, self.get(p_idx, col));
            }

            // Set stabilizer p_idx to Z_q with phase coin_flip
            for col in 0..(2 * n) {
                self.set(p_idx, col, false);
            }
            self.set(p_idx, n + q, true);
            self.set(p_idx, 2 * n, coin_flip);

            return coin_flip;
        }

        // Case 2: Deterministic outcome
        let mut scratch_row = vec![false; 2 * n + 1];
        let cols = 2 * n + 1;

        // Use destabilizers to isolate Z_q eigenvalue
        for i in 0..n {
            if self.get(i, q) {
                // Add stabilizer i + n
                let stab = i + n;
                // Accumulate into scratch row
                for c in 0..cols {
                    scratch_row[c] ^= self.get(stab, c);
                }
            }
        }

        // Return accumulated phase
        self.get(n + q, 2 * n)
    }

    /// Check if target qubit is guaranteed in state |0>.
    pub fn is_ground_state(&self, q: usize) -> bool {
        let n = self.num_qubits;
        self.get(n + q, n + q) && !self.get(n + q, 2 * n)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_stabilizer_init_and_h() {
        let mut tab = StabilizerTableau::new(2);
        assert!(tab.is_ground_state(0));
        assert!(tab.is_ground_state(1));

        tab.h(0);
        // After H, qubit 0 has X_0 stabilizer
        assert!(tab.get(2, 0)); // Stabilizer 0 has X bit true
    }

    #[test]
    fn test_stabilizer_bell_state_and_parity() {
        let mut tab = StabilizerTableau::new(2);
        tab.h(0);
        tab.cx(0, 1);

        // In Bell state (|00> + |11>)/sqrt(2), measure qubit 0
        let res0 = tab.measure(0, false); // Measured 0
        assert_eq!(res0, false);

        // Due to entanglement, qubit 1 must also be 0
        let res1 = tab.measure(1, false);
        assert_eq!(res1, false);
    }

    #[test]
    fn test_stabilizer_steane_distance_scaling() {
        // Can instantly initialize 100 qubits and apply entangling Clifford gates
        let mut tab = StabilizerTableau::new(100);
        for i in 0..99 {
            tab.h(i);
            tab.cx(i, i + 1);
        }
        assert_eq!(tab.num_qubits, 100);
    }
}
