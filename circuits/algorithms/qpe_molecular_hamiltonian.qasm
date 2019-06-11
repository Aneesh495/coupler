OPENQASM 3.0;
include "stdgates.inc";

// Quantum Phase Estimation (QPE) for Molecular Hamiltonian Eigenvalues

qubit[8] phase;
qubit[4] state;
bit[8] phase_out;

h phase[0];
h phase[1];
h phase[2];
h phase[3];
h phase[4];
h phase[5];
h phase[6];
h phase[7];
x state[0];
barrier phase, state;

// Controlled-U^(2^0)
cp(0.125) phase[0], state[0];
cp(0.0625) phase[0], state[1];
// Controlled-U^(2^1)
cp(0.25) phase[1], state[0];
cp(0.125) phase[1], state[1];
// Controlled-U^(2^2)
cp(0.5) phase[2], state[0];
cp(0.25) phase[2], state[1];
// Controlled-U^(2^3)
cp(1.0) phase[3], state[0];
cp(0.5) phase[3], state[1];
// Controlled-U^(2^4)
cp(2.0) phase[4], state[0];
cp(1.0) phase[4], state[1];
// Controlled-U^(2^5)
cp(4.0) phase[5], state[0];
cp(2.0) phase[5], state[1];
// Controlled-U^(2^6)
cp(8.0) phase[6], state[0];
cp(4.0) phase[6], state[1];
// Controlled-U^(2^7)
cp(16.0) phase[7], state[0];
cp(8.0) phase[7], state[1];
barrier phase, state;

// Inverse Quantum Fourier Transform on Phase Register
h phase[7];
cp(-1.570796) phase[7], phase[6];
h phase[6];
cp(-0.785398) phase[7], phase[5];
cp(-1.570796) phase[6], phase[5];
h phase[5];
cp(-0.392699) phase[7], phase[4];
cp(-0.785398) phase[6], phase[4];
cp(-1.570796) phase[5], phase[4];
h phase[4];
cp(-0.19635) phase[7], phase[3];
cp(-0.392699) phase[6], phase[3];
cp(-0.785398) phase[5], phase[3];
cp(-1.570796) phase[4], phase[3];
h phase[3];
cp(-0.098175) phase[7], phase[2];
cp(-0.19635) phase[6], phase[2];
cp(-0.392699) phase[5], phase[2];
cp(-0.785398) phase[4], phase[2];
cp(-1.570796) phase[3], phase[2];
h phase[2];
cp(-0.049087) phase[7], phase[1];
cp(-0.098175) phase[6], phase[1];
cp(-0.19635) phase[5], phase[1];
cp(-0.392699) phase[4], phase[1];
cp(-0.785398) phase[3], phase[1];
cp(-1.570796) phase[2], phase[1];
h phase[1];
cp(-0.024544) phase[7], phase[0];
cp(-0.049087) phase[6], phase[0];
cp(-0.098175) phase[5], phase[0];
cp(-0.19635) phase[4], phase[0];
cp(-0.392699) phase[3], phase[0];
cp(-0.785398) phase[2], phase[0];
cp(-1.570796) phase[1], phase[0];
h phase[0];
barrier phase;
phase_out[0] = measure phase[0];
phase_out[1] = measure phase[1];
phase_out[2] = measure phase[2];
phase_out[3] = measure phase[3];
phase_out[4] = measure phase[4];
phase_out[5] = measure phase[5];
phase_out[6] = measure phase[6];
phase_out[7] = measure phase[7];