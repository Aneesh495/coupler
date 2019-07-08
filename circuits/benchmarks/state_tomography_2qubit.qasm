OPENQASM 3.0;
include "stdgates.inc";

// 2-Qubit Full Quantum State Tomography Across Pauli Bases {X, Y, Z}^2

qubit[2] q;
bit[18] tomo_bits;

// Basis (Z, Z) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
tomo_bits[0] = measure q[0];
tomo_bits[1] = measure q[1];

// Basis (Z, X) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
h q[1];
tomo_bits[2] = measure q[0];
tomo_bits[3] = measure q[1];

// Basis (Z, Y) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
sdg q[1];
h q[1];
tomo_bits[4] = measure q[0];
tomo_bits[5] = measure q[1];

// Basis (X, Z) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
h q[0];
tomo_bits[6] = measure q[0];
tomo_bits[7] = measure q[1];

// Basis (X, X) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
h q[0];
h q[1];
tomo_bits[8] = measure q[0];
tomo_bits[9] = measure q[1];

// Basis (X, Y) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
h q[0];
sdg q[1];
h q[1];
tomo_bits[10] = measure q[0];
tomo_bits[11] = measure q[1];

// Basis (Y, Z) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
sdg q[0];
h q[0];
tomo_bits[12] = measure q[0];
tomo_bits[13] = measure q[1];

// Basis (Y, X) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
sdg q[0];
h q[0];
h q[1];
tomo_bits[14] = measure q[0];
tomo_bits[15] = measure q[1];

// Basis (Y, Y) Measurement
reset q;
h q[0];
cx q[0], q[1];
barrier q;
sdg q[0];
h q[0];
sdg q[1];
h q[1];
tomo_bits[16] = measure q[0];
tomo_bits[17] = measure q[1];
