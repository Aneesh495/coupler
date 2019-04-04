//! 2D square grid topology generator for superconducting quantum processors.
//!
//! Generates planar nearest-neighbor coupling architectures (e.g., Google Sycamore 54-qubit grid).

use super::graph::CouplingGraph;

/// Generate an (rows x cols) 2D square grid coupling graph.
pub fn generate_2d_grid(rows: usize, cols: usize) -> CouplingGraph {
    let num_qubits = rows * cols;
    let mut g = CouplingGraph::new(num_qubits);

    for r in 0..rows {
        for c in 0..cols {
            let idx = r * cols + c;
            // Right neighbor
            if c + 1 < cols {
                g.add_edge(idx, idx + 1);
            }
            // Bottom neighbor
            if r + 1 < rows {
                g.add_edge(idx, idx + cols);
            }
        }
    }

    g.compute_distances();
    g
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_3x3_grid_topology() {
        let mut grid = generate_2d_grid(3, 3);
        assert_eq!(grid.num_qubits, 9);
        assert_eq!(grid.edges.len(), 12);
        assert_eq!(grid.distance(0, 8), 4); // (0,0) to (2,2) Manhattan distance = 2 + 2 = 4
        assert_eq!(grid.diameter(), 4);
    }
}
