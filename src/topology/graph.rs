//! Physical qubit coupling graph representation and distance calculations.
//!
//! Models superconducting qubit connectivity, tunable couplers, and shortest-path routing matrices.

use std::collections::{HashMap, HashSet, VecDeque};

/// Physical qubit coupling architecture.
#[derive(Debug, Clone)]
pub struct CouplingGraph {
    pub num_qubits: usize,
    pub edges: HashSet<(usize, usize)>,
    pub adj: HashMap<usize, Vec<usize>>,
    dist_matrix: Vec<Vec<usize>>,
}

impl CouplingGraph {
    pub fn new(num_qubits: usize) -> Self {
        Self {
            num_qubits,
            edges: HashSet::new(),
            adj: HashMap::new(),
            dist_matrix: Vec::new(),
        }
    }

    /// Add an undirected edge representing a tunable coupler or fixed resonator link.
    pub fn add_edge(&mut self, q0: usize, q1: usize) {
        assert!(q0 < self.num_qubits && q1 < self.num_qubits && q0 != q1);
        let (min_q, max_q) = if q0 < q1 { (q0, q1) } else { (q1, q0) };
        self.edges.insert((min_q, max_q));
        self.adj.entry(q0).or_default().push(q1);
        self.adj.entry(q1).or_default().push(q0);
    }

    /// Check if two physical qubits are directly coupled.
    pub fn is_coupled(&self, q0: usize, q1: usize) -> bool {
        let (min_q, max_q) = if q0 < q1 { (q0, q1) } else { (q1, q0) };
        self.edges.contains(&(min_q, max_q))
    }

    /// Get adjacent physical neighbors.
    pub fn neighbors(&self, q: usize) -> &[usize] {
        self.adj.get(&q).map(|v| v.as_slice()).unwrap_or(&[])
    }

    /// Precompute all-pairs shortest paths using BFS for distance matrix lookups.
    pub fn compute_distances(&mut self) {
        let n = self.num_qubits;
        let mut dist = vec![vec![usize::MAX; n]; n];

        for start in 0..n {
            dist[start][start] = 0;
            let mut queue = VecDeque::new();
            queue.push_back(start);

            while let Some(u) = queue.pop_front() {
                let d = dist[start][u];
                if let Some(neighbors) = self.adj.get(&u) {
                    for &v in neighbors {
                        if dist[start][v] == usize::MAX {
                            dist[start][v] = d + 1;
                            queue.push_back(v);
                        }
                    }
                }
            }
        }

        self.dist_matrix = dist;
    }

    /// Get precomputed distance between two physical qubits in number of coupler hops.
    pub fn distance(&self, q0: usize, q1: usize) -> usize {
        if self.dist_matrix.is_empty() {
            // Compute on demand if not precomputed
            if q0 == q1 {
                return 0;
            }
            if self.is_coupled(q0, q1) {
                return 1;
            }
            return self.bfs_distance(q0, q1);
        }
        self.dist_matrix[q0][q1]
    }

    fn bfs_distance(&self, start: usize, target: usize) -> usize {
        let mut visited = HashSet::new();
        let mut queue = VecDeque::new();
        queue.push_back((start, 0));
        visited.insert(start);

        while let Some((curr, d)) = queue.pop_front() {
            if curr == target {
                return d;
            }
            if let Some(neighbors) = self.adj.get(&curr) {
                for &next in neighbors {
                    if visited.insert(next) {
                        queue.push_back((next, d + 1));
                    }
                }
            }
        }
        usize::MAX
    }

    /// Compute network diameter (maximum shortest path between any pair).
    pub fn diameter(&mut self) -> usize {
        if self.dist_matrix.is_empty() {
            self.compute_distances();
        }
        let mut max_d = 0;
        for i in 0..self.num_qubits {
            for j in 0..self.num_qubits {
                let d = self.dist_matrix[i][j];
                if d != usize::MAX && d > max_d {
                    max_d = d;
                }
            }
        }
        max_d
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_linear_chain_distances() {
        let mut g = CouplingGraph::new(4);
        g.add_edge(0, 1);
        g.add_edge(1, 2);
        g.add_edge(2, 3);
        g.compute_distances();

        assert_eq!(g.distance(0, 3), 3);
        assert_eq!(g.distance(1, 2), 1);
        assert_eq!(g.distance(0, 0), 0);
        assert!(g.is_coupled(0, 1));
        assert!(!g.is_coupled(0, 2));
    }
}
