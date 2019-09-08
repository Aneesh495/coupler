# Fault-Tolerant Rotated Surface Code Theory

The rotated planar surface code is the leading quantum error correction architecture for superconducting transmon processors due to its 2D nearest-neighbor layout, high fault-tolerance threshold (~1%), and low physical-to-logical qubit overhead.

## Geometry and Code Parameters

A rotated planar surface code patch with code distance $d$ encodes 1 logical qubit into:
- $n = d^2$ physical data qubits
- $m_x = (d^2 - 1) / 2$ physical X-type syndrome ancillae
- $m_z = (d^2 - 1) / 2$ physical Z-type syndrome ancillae
- Total physical qubits: $N = 2d^2 - 1$

| Distance $d$ | Logical Qubits | Data Qubits | Ancilla Qubits | Total Physical Qubits | Error Correction Guarantee |
|:------------:|:--------------:|:-----------:|:--------------:|:---------------------:|:--------------------------:|
| 3            | 1              | 9           | 8              | 17                    | Corrects any 1 error       |
| 5            | 1              | 25          | 24             | 49                    | Corrects any 2 errors      |
| 7            | 1              | 49          | 48             | 97                    | Corrects any 3 errors      |
| 9            | 1              | 81          | 80             | 161                   | Corrects any 4 errors      |

## Plaquette Stabilizers

Stabilizer generators are localized operators on faces of the rotated square lattice:
1. **Bulk X-Stabilizers (Weight 4)**:
   $$S_x = X_N X_E X_S X_W$$
2. **Bulk Z-Stabilizers (Weight 4)**:
   $$S_z = Z_N Z_E Z_S Z_W$$
3. **Boundary Stabilizers (Weight 2)**:
   Boundary plaquettes on the lattice edges have reduced weight 2 to terminate the code without leaking information.

## Syndrome Extraction Cycle

Each syndrome extraction round consists of an 8-stage pipelined schedule:
1. Ancilla reset to ground state $|0\rangle$
2. Hadamard gate on all X-ancillae to rotate into the $|+\rangle$ basis
3. North entangling CX step
4. East entangling CX step
5. South entangling CX step
6. West entangling CX step
7. Hadamard gate on all X-ancillae to rotate back to computational basis
8. Projective measurement of ancillae into classical syndrome registers

## Threshold and Logical Error Rate

Under depolarizing circuit noise with physical gate error rate $p$, the logical error rate per round scales as:
$$P_L \propto \left(\frac{p}{p_{\text{th}}}\right)^{\frac{d+1}{2}}$$
where $p_{\text{th}} \approx 0.7\% - 1.0\%$ for standard circuit-level depolarizing models.
