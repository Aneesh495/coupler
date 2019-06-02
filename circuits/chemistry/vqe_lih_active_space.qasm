OPENQASM 3.0;
include "stdgates.inc";

// Variational Quantum Eigensolver (VQE) for LiH
// Hardware-Efficient Entangling Ansatz with 15 Repetition Layers

qubit[8] q;
bit[8] c;

// Hartree-Fock Reference State Preparation
x q[0];
x q[1];
x q[2];
x q[3];
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
ry(0.35) q[4];
rz(0.54) q[4];
ry(0.4) q[5];
rz(0.62) q[5];
ry(0.45) q[6];
rz(0.7) q[6];
ry(0.5) q[7];
rz(0.78) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(0.5) q[4];
rz(0.76) q[4];
ry(0.55) q[5];
rz(0.84) q[5];
ry(0.6) q[6];
rz(0.92) q[6];
ry(0.65) q[7];
rz(1.0) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(0.65) q[4];
rz(0.98) q[4];
ry(0.7) q[5];
rz(1.06) q[5];
ry(0.75) q[6];
rz(1.14) q[6];
ry(0.8) q[7];
rz(1.22) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(0.8) q[4];
rz(1.2) q[4];
ry(0.85) q[5];
rz(1.28) q[5];
ry(0.9) q[6];
rz(1.36) q[6];
ry(0.95) q[7];
rz(1.44) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(0.95) q[4];
rz(1.42) q[4];
ry(1.0) q[5];
rz(1.5) q[5];
ry(1.05) q[6];
rz(1.58) q[6];
ry(1.1) q[7];
rz(1.66) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.1) q[4];
rz(1.64) q[4];
ry(1.15) q[5];
rz(1.72) q[5];
ry(1.2) q[6];
rz(1.8) q[6];
ry(1.25) q[7];
rz(1.88) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.25) q[4];
rz(1.86) q[4];
ry(1.3) q[5];
rz(1.94) q[5];
ry(1.35) q[6];
rz(2.02) q[6];
ry(1.4) q[7];
rz(2.1) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.4) q[4];
rz(2.08) q[4];
ry(1.45) q[5];
rz(2.16) q[5];
ry(1.5) q[6];
rz(2.24) q[6];
ry(1.55) q[7];
rz(2.32) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.55) q[4];
rz(2.3) q[4];
ry(1.6) q[5];
rz(2.38) q[5];
ry(1.65) q[6];
rz(2.46) q[6];
ry(1.7) q[7];
rz(2.54) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.7) q[4];
rz(2.52) q[4];
ry(1.75) q[5];
rz(2.6) q[5];
ry(1.8) q[6];
rz(2.68) q[6];
ry(1.85) q[7];
rz(2.76) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(1.85) q[4];
rz(2.74) q[4];
ry(1.9) q[5];
rz(2.82) q[5];
ry(1.95) q[6];
rz(2.9) q[6];
ry(2.0) q[7];
rz(2.98) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
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
ry(2.0) q[4];
rz(2.96) q[4];
ry(2.05) q[5];
rz(3.04) q[5];
ry(2.1) q[6];
rz(3.12) q[6];
ry(2.15) q[7];
rz(3.2) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
barrier q;

// --- Parametric Variational Layer 13 ---
ry(1.95) q[0];
rz(2.86) q[0];
ry(2.0) q[1];
rz(2.94) q[1];
ry(2.05) q[2];
rz(3.02) q[2];
ry(2.1) q[3];
rz(3.1) q[3];
ry(2.15) q[4];
rz(3.18) q[4];
ry(2.2) q[5];
rz(3.26) q[5];
ry(2.25) q[6];
rz(3.34) q[6];
ry(2.3) q[7];
rz(3.42) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
barrier q;

// --- Parametric Variational Layer 14 ---
ry(2.1) q[0];
rz(3.08) q[0];
ry(2.15) q[1];
rz(3.16) q[1];
ry(2.2) q[2];
rz(3.24) q[2];
ry(2.25) q[3];
rz(3.32) q[3];
ry(2.3) q[4];
rz(3.4) q[4];
ry(2.35) q[5];
rz(3.48) q[5];
ry(2.4) q[6];
rz(3.56) q[6];
ry(2.45) q[7];
rz(3.64) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
barrier q;

// --- Parametric Variational Layer 15 ---
ry(2.25) q[0];
rz(3.3) q[0];
ry(2.3) q[1];
rz(3.38) q[1];
ry(2.35) q[2];
rz(3.46) q[2];
ry(2.4) q[3];
rz(3.54) q[3];
ry(2.45) q[4];
rz(3.62) q[4];
ry(2.5) q[5];
rz(3.7) q[5];
ry(2.55) q[6];
rz(3.78) q[6];
ry(2.6) q[7];
rz(3.86) q[7];
barrier q;
// Entangling CZ/CX ladder
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[3];
cx q[3], q[4];
cx q[4], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[0];
barrier q;

// Hamiltonian Pauli Expectation Measurement
c[0] = measure q[0];
c[1] = measure q[1];
c[2] = measure q[2];
c[3] = measure q[3];
c[4] = measure q[4];
c[5] = measure q[5];
c[6] = measure q[6];
c[7] = measure q[7];