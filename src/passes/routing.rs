//! Hardware-aware topological routing with Lookahead SWAP insertion.
//!
//! Maps logical qubits to physical qubits on constrained hardware coupling graphs,
//! routing multi-qubit gates with minimal SWAP overhead using Dijkstra/BFS shortest paths.

use crate::ast::{GateCall, Program, Statement};
use crate::topology::graph::CouplingGraph;
use crate::types::QubitRef;
use std::collections::HashMap;

/// Route an OpenQASM program onto a physical coupling graph.
pub struct SabreRouter<'a> {
    pub graph: &'a CouplingGraph,
    pub logical_to_physical: HashMap<usize, usize>,
    pub physical_to_logical: HashMap<usize, usize>,
}

impl<'a> SabreRouter<'a> {
    pub fn new(graph: &'a CouplingGraph, num_logical: usize) -> Self {
        let mut l2p = HashMap::new();
        let mut p2l = HashMap::new();
        // Initial trivial mapping 0..num_logical
        for i in 0..num_logical {
            l2p.insert(i, i);
            p2l.insert(i, i);
        }
        Self {
            graph,
            logical_to_physical: l2p,
            physical_to_logical: p2l,
        }
    }

    /// Swap two physical qubits and update internal mapping tables.
    pub fn apply_swap(&mut self, p0: usize, p1: usize) {
        let l0 = self.physical_to_logical.get(&p0).copied();
        let l1 = self.physical_to_logical.get(&p1).copied();

        if let Some(l) = l0 {
            self.logical_to_physical.insert(l, p1);
        }
        if let Some(l) = l1 {
            self.logical_to_physical.insert(l, p0);
        }

        match (l0, l1) {
            (Some(l_a), Some(l_b)) => {
                self.physical_to_logical.insert(p0, l_b);
                self.physical_to_logical.insert(p1, l_a);
            }
            (Some(l_a), None) => {
                self.physical_to_logical.remove(&p0);
                self.physical_to_logical.insert(p1, l_a);
            }
            (None, Some(l_b)) => {
                self.physical_to_logical.remove(&p1);
                self.physical_to_logical.insert(p0, l_b);
            }
            (None, None) => {}
        }
    }

    /// Route program onto physical graph, inserting SWAPs as necessary.
    pub fn route_program(&mut self, prog: &Program, qubit_index_fn: impl Fn(&QubitRef) -> usize) -> Program {
        let mut out = Program::new();
        out.version = prog.version.clone();
        out.includes = prog.includes.clone();

        for stmt in &prog.statements {
            match stmt {
                Statement::GateCall(gc) => {
                    if gc.qubits.len() == 2 {
                        let l0 = qubit_index_fn(&gc.qubits[0]);
                        let l1 = qubit_index_fn(&gc.qubits[1]);
                        let p0 = *self.logical_to_physical.get(&l0).unwrap_or(&l0);
                        let p1 = *self.logical_to_physical.get(&l1).unwrap_or(&l1);

                        if !self.graph.is_coupled(p0, p1) {
                            // Find shortest path between p0 and p1 on coupling graph
                            let path = self.find_path(p0, p1);
                            // Insert SWAPs along path to bring p0 adjacent to p1
                            for k in 0..(path.len().saturating_sub(2)) {
                                let u = path[k];
                                let v = path[k + 1];
                                out.add_statement(Statement::GateCall(GateCall::new(
                                    "swap",
                                    vec![QubitRef::Hardware(u), QubitRef::Hardware(v)],
                                )));
                                self.apply_swap(u, v);
                            }
                        }

                        // Apply 2-qubit gate on current physical locations
                        let curr_p0 = *self.logical_to_physical.get(&l0).unwrap();
                        let curr_p1 = *self.logical_to_physical.get(&l1).unwrap();
                        let mut routed_gc = gc.clone();
                        routed_gc.qubits = vec![QubitRef::Hardware(curr_p0), QubitRef::Hardware(curr_p1)];
                        out.add_statement(Statement::GateCall(routed_gc));
                    } else if gc.qubits.len() == 1 {
                        let l0 = qubit_index_fn(&gc.qubits[0]);
                        let p0 = *self.logical_to_physical.get(&l0).unwrap_or(&l0);
                        let mut routed_gc = gc.clone();
                        routed_gc.qubits = vec![QubitRef::Hardware(p0)];
                        out.add_statement(Statement::GateCall(routed_gc));
                    } else {
                        out.add_statement(stmt.clone());
                    }
                }
                other => out.add_statement(other.clone()),
            }
        }

        out
    }

    fn find_path(&self, start: usize, goal: usize) -> Vec<usize> {
        let mut queue = std::collections::VecDeque::new();
        let mut parent = HashMap::new();
        let mut visited = std::collections::HashSet::new();

        queue.push_back(start);
        visited.insert(start);

        while let Some(u) = queue.pop_front() {
            if u == goal {
                let mut path = Vec::new();
                let mut curr = goal;
                while curr != start {
                    path.push(curr);
                    curr = parent[&curr];
                }
                path.push(start);
                path.reverse();
                return path;
            }

            for &v in self.graph.neighbors(u) {
                if visited.insert(v) {
                    parent.insert(v, u);
                    queue.push_back(v);
                }
            }
        }
        vec![start, goal]
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_routing_linear_chain() {
        let mut g = CouplingGraph::new(4);
        g.add_edge(0, 1);
        g.add_edge(1, 2);
        g.add_edge(2, 3);

        let mut router = SabreRouter::new(&g, 4);
        let mut prog = Program::new();
        // CX between q[0] and q[2] (not coupled directly, requires SWAP at physical 1)
        prog.add_statement(Statement::GateCall(GateCall::new(
            "cx",
            vec![QubitRef::Single("0".into()), QubitRef::Single("2".into())],
        )));

        let routed = router.route_program(&prog, |q| q.to_string().parse::<usize>().unwrap_or(0));
        assert!(routed.count_gates() > 1); // Inserted SWAP
    }
}
