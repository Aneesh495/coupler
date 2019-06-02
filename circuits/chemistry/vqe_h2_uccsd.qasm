OPENQASM 3.0;
include "stdgates.inc";

// Variational Quantum Eigensolver (VQE) for H2
// Hardware-Efficient Entangling Ansatz with 12 Repetition Layers

qubit[4] q;
bit[4] c;

// Hartree-Fock Reference State Preparation
x q[0];
x q[1];
barrier q;

// --- Parametric Variational Layer 1 ---
ry(0.15) q[0];
rz(0.22) q[0];
ry(0.2) q[1];
rz(0.3) q[1];
ry(0.25) q[2];
rz(0.38) q[2];
ry(0.3) q[3];
rz(0.46) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 2 ---
ry(0.3) q[0];
rz(0.44) q[0];
ry(0.35) q[1];
rz(0.52) q[1];
ry(0.4) q[2];
rz(0.6) q[2];
ry(0.45) q[3];
rz(0.68) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 3 ---
ry(0.45) q[0];
rz(0.66) q[0];
ry(0.5) q[1];
rz(0.74) q[1];
ry(0.55) q[2];
rz(0.82) q[2];
ry(0.6) q[3];
rz(0.9) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 4 ---
ry(0.6) q[0];
rz(0.88) q[0];
ry(0.65) q[1];
rz(0.96) q[1];
ry(0.7) q[2];
rz(1.04) q[2];
ry(0.75) q[3];
rz(1.12) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 5 ---
ry(0.75) q[0];
rz(1.1) q[0];
ry(0.8) q[1];
rz(1.18) q[1];
ry(0.85) q[2];
rz(1.26) q[2];
ry(0.9) q[3];
rz(1.34) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 6 ---
ry(0.9) q[0];
rz(1.32) q[0];
ry(0.95) q[1];
rz(1.4) q[1];
ry(1.0) q[2];
rz(1.48) q[2];
ry(1.05) q[3];
rz(1.56) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 7 ---
ry(1.05) q[0];
rz(1.54) q[0];
ry(1.1) q[1];
rz(1.62) q[1];
ry(1.15) q[2];
rz(1.7) q[2];
ry(1.2) q[3];
rz(1.78) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 8 ---
ry(1.2) q[0];
rz(1.76) q[0];
ry(1.25) q[1];
rz(1.84) q[1];
ry(1.3) q[2];
rz(1.92) q[2];
ry(1.35) q[3];
rz(2.0) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 9 ---
ry(1.35) q[0];
rz(1.98) q[0];
ry(1.4) q[1];
rz(2.06) q[1];
ry(1.45) q[2];
rz(2.14) q[2];
ry(1.5) q[3];
rz(2.22) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 10 ---
ry(1.5) q[0];
rz(2.2) q[0];
ry(1.55) q[1];
rz(2.28) q[1];
ry(1.6) q[2];
rz(2.36) q[2];
ry(1.65) q[3];
rz(2.44) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 11 ---
ry(1.65) q[0];
rz(2.42) q[0];
ry(1.7) q[1];
rz(2.5) q[1];
ry(1.75) q[2];
rz(2.58) q[2];
ry(1.8) q[3];
rz(2.66) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// --- Parametric Variational Layer 12 ---
ry(1.8) q[0];
rz(2.64) q[0];
ry(1.85) q[1];
rz(2.72) q[1];
ry(1.9) q[2];
rz(2.8) q[2];
ry(1.95) q[3];
rz(2.88) q[3];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[0];
barrier q;

// Hamiltonian Pauli Expectation Measurement
c[0] = measure q[0];
c[1] = measure q[1];
c[2] = measure q[2];
c[3] = measure q[3];