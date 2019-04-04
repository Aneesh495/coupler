//! Heavy-Hex topology generator for IBM Quantum Falcon, Eagle, and Heron processors.
//!
//! Generates hexagonal lattices with bridge qubits positioned on edges to minimize
//! frequency collisions, microwave crosstalk, and parasitic ZZ couplings.

use super::graph::CouplingGraph;

/// Generate a simplified Heavy-Hex lattice with specified hexagonal cell count.
pub fn generate_heavy_hex(cells: usize) -> CouplingGraph {
    // Each heavy-hex unit cell contains 6 vertex qubits and 6 edge bridge qubits
    // For n cells, we assemble connected hexagons with shared vertices
    let qubits_per_hex = 12;
    let num_qubits = (cells * qubits_per_hex).max(16);
    let mut g = CouplingGraph::new(num_qubits);

    for cell in 0..cells {
        let base = cell * 10;
        if base + 11 < num_qubits {
            // Hexagon vertices: 0, 2, 4, 6, 8, 10
            // Edge bridge qubits: 1, 3, 5, 7, 9, 11
            for k in 0..6 {
                let v_curr = base + k * 2;
                let b_curr = base + k * 2 + 1;
                let v_next = base + ((k + 1) % 6) * 2;
                g.add_edge(v_curr, b_curr);
                g.add_edge(b_curr, v_next);
            }
        }
    }

    // Connect adjacent cells
    for cell in 0..(cells.saturating_sub(1)) {
        let q1 = cell * 10 + 4;
        let q2 = (cell + 1) * 10;
        if q1 < num_qubits && q2 < num_qubits {
            g.add_edge(q1, q2);
        }
    }

    g.compute_distances();
    g
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_heavy_hex_construction() {
        let hex = generate_heavy_hex(2);
        assert!(hex.num_qubits >= 20);
        assert!(!hex.edges.is_empty());
        assert!(hex.distance(0, 1) == 1);
    }
}
