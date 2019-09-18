# Physical Hardware Topologies & Topological Routing

Superconducting quantum processors exhibit physical connectivity constraints dictated by chip microwave layout, transmission lines, and frequency multiplexing.

## Topologies Supported in Coupler

### 1. IBM Quantum Heavy-Hex Lattice
The Heavy-Hex lattice layout consists of hexagonal unit cells with vertices connected by additional bridge qubits on edges. This lowers maximum qubit degree from 4 to 3 (or 2 for bridge qubits), significantly reducing frequency crowding and crosstalk.

Key characteristics:
- **Average Qubit Degree**: ~2.2
- **Processors**: IBM Falcon (27Q), Hummingbird (65Q), Eagle (127Q), Osprey (433Q), Heron (133Q)
- **Advantages**: Minimal parasitic ZZ coupling, suitable for Heavy-Hex surface code variants.

### 2. Google Sycamore 2D Square Grid
A planar 2D grid where qubits are arranged on Cartesian vertices with 4-way nearest-neighbor couplers.

Key characteristics:
- **Average Qubit Degree**: ~3.5
- **Processors**: Google Foxtail (22Q), Sycamore (54Q), Willow (105Q)
- **Advantages**: Direct rotated surface code embedding, short graph diameter.

## SABRE Routing Heuristic

Coupler implements the SWAP-based Bidirectional Heuristic Search (SABRE) algorithm to map arbitrary logical circuits onto physical coupling graphs $G = (V, E)$.

The objective function minimizes total SWAP overhead by scoring candidate SWAP gates $(u, v) \in E$ using a lookahead window over pending two-qubit gates in the circuit DAG:
$$\text{Cost}(u, v) = \frac{1}{|F|} \sum_{g \in F} D(\pi(q_1^g), \pi(q_2^g)) + W \cdot \frac{1}{|E|} \sum_{g' \in E} D(\pi(q_1^{g'}), \pi(q_2^{g'}))$$
where:
- $F$ is the front layer of executable gates
- $E$ is the lookahead extended set
- $D(p_1, p_2)$ is the precomputed shortest-path hop distance on the coupling graph
- $W \approx 0.5$ is the decay weight for lookahead gates
