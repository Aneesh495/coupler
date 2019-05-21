OPENQASM 3.0;
include "stdgates.inc";

// Cross-Entropy Benchmarking (XEB) for Multi-Qubit Processor Supremacy Validation

qubit[16] q;
bit[16] xeb_outcomes;

reset q;
// Layer 0: Initial Hadamard layer
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
barrier q;

// --- XEB Cycle 1 ---
// Non-commuting single-qubit rotations
sx q[0];
sy q[1];
rz(pi/4) q[2];
rz(pi/2) q[3];
x q[4];
h q[5];
sx q[6];
sy q[7];
rz(pi/4) q[8];
rz(pi/2) q[9];
x q[10];
h q[11];
sx q[12];
sy q[13];
rz(pi/4) q[14];
rz(pi/2) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 2 ---
// Non-commuting single-qubit rotations
sy q[0];
rz(pi/4) q[1];
rz(pi/2) q[2];
x q[3];
h q[4];
sx q[5];
sy q[6];
rz(pi/4) q[7];
rz(pi/2) q[8];
x q[9];
h q[10];
sx q[11];
sy q[12];
rz(pi/4) q[13];
rz(pi/2) q[14];
x q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 3 ---
// Non-commuting single-qubit rotations
rz(pi/4) q[0];
rz(pi/2) q[1];
x q[2];
h q[3];
sx q[4];
sy q[5];
rz(pi/4) q[6];
rz(pi/2) q[7];
x q[8];
h q[9];
sx q[10];
sy q[11];
rz(pi/4) q[12];
rz(pi/2) q[13];
x q[14];
h q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 4 ---
// Non-commuting single-qubit rotations
rz(pi/2) q[0];
x q[1];
h q[2];
sx q[3];
sy q[4];
rz(pi/4) q[5];
rz(pi/2) q[6];
x q[7];
h q[8];
sx q[9];
sy q[10];
rz(pi/4) q[11];
rz(pi/2) q[12];
x q[13];
h q[14];
sx q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 5 ---
// Non-commuting single-qubit rotations
x q[0];
h q[1];
sx q[2];
sy q[3];
rz(pi/4) q[4];
rz(pi/2) q[5];
x q[6];
h q[7];
sx q[8];
sy q[9];
rz(pi/4) q[10];
rz(pi/2) q[11];
x q[12];
h q[13];
sx q[14];
sy q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 6 ---
// Non-commuting single-qubit rotations
h q[0];
sx q[1];
sy q[2];
rz(pi/4) q[3];
rz(pi/2) q[4];
x q[5];
h q[6];
sx q[7];
sy q[8];
rz(pi/4) q[9];
rz(pi/2) q[10];
x q[11];
h q[12];
sx q[13];
sy q[14];
rz(pi/4) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 7 ---
// Non-commuting single-qubit rotations
sx q[0];
sy q[1];
rz(pi/4) q[2];
rz(pi/2) q[3];
x q[4];
h q[5];
sx q[6];
sy q[7];
rz(pi/4) q[8];
rz(pi/2) q[9];
x q[10];
h q[11];
sx q[12];
sy q[13];
rz(pi/4) q[14];
rz(pi/2) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 8 ---
// Non-commuting single-qubit rotations
sy q[0];
rz(pi/4) q[1];
rz(pi/2) q[2];
x q[3];
h q[4];
sx q[5];
sy q[6];
rz(pi/4) q[7];
rz(pi/2) q[8];
x q[9];
h q[10];
sx q[11];
sy q[12];
rz(pi/4) q[13];
rz(pi/2) q[14];
x q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 9 ---
// Non-commuting single-qubit rotations
rz(pi/4) q[0];
rz(pi/2) q[1];
x q[2];
h q[3];
sx q[4];
sy q[5];
rz(pi/4) q[6];
rz(pi/2) q[7];
x q[8];
h q[9];
sx q[10];
sy q[11];
rz(pi/4) q[12];
rz(pi/2) q[13];
x q[14];
h q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 10 ---
// Non-commuting single-qubit rotations
rz(pi/2) q[0];
x q[1];
h q[2];
sx q[3];
sy q[4];
rz(pi/4) q[5];
rz(pi/2) q[6];
x q[7];
h q[8];
sx q[9];
sy q[10];
rz(pi/4) q[11];
rz(pi/2) q[12];
x q[13];
h q[14];
sx q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 11 ---
// Non-commuting single-qubit rotations
x q[0];
h q[1];
sx q[2];
sy q[3];
rz(pi/4) q[4];
rz(pi/2) q[5];
x q[6];
h q[7];
sx q[8];
sy q[9];
rz(pi/4) q[10];
rz(pi/2) q[11];
x q[12];
h q[13];
sx q[14];
sy q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 12 ---
// Non-commuting single-qubit rotations
h q[0];
sx q[1];
sy q[2];
rz(pi/4) q[3];
rz(pi/2) q[4];
x q[5];
h q[6];
sx q[7];
sy q[8];
rz(pi/4) q[9];
rz(pi/2) q[10];
x q[11];
h q[12];
sx q[13];
sy q[14];
rz(pi/4) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 13 ---
// Non-commuting single-qubit rotations
sx q[0];
sy q[1];
rz(pi/4) q[2];
rz(pi/2) q[3];
x q[4];
h q[5];
sx q[6];
sy q[7];
rz(pi/4) q[8];
rz(pi/2) q[9];
x q[10];
h q[11];
sx q[12];
sy q[13];
rz(pi/4) q[14];
rz(pi/2) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 14 ---
// Non-commuting single-qubit rotations
sy q[0];
rz(pi/4) q[1];
rz(pi/2) q[2];
x q[3];
h q[4];
sx q[5];
sy q[6];
rz(pi/4) q[7];
rz(pi/2) q[8];
x q[9];
h q[10];
sx q[11];
sy q[12];
rz(pi/4) q[13];
rz(pi/2) q[14];
x q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 15 ---
// Non-commuting single-qubit rotations
rz(pi/4) q[0];
rz(pi/2) q[1];
x q[2];
h q[3];
sx q[4];
sy q[5];
rz(pi/4) q[6];
rz(pi/2) q[7];
x q[8];
h q[9];
sx q[10];
sy q[11];
rz(pi/4) q[12];
rz(pi/2) q[13];
x q[14];
h q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 16 ---
// Non-commuting single-qubit rotations
rz(pi/2) q[0];
x q[1];
h q[2];
sx q[3];
sy q[4];
rz(pi/4) q[5];
rz(pi/2) q[6];
x q[7];
h q[8];
sx q[9];
sy q[10];
rz(pi/4) q[11];
rz(pi/2) q[12];
x q[13];
h q[14];
sx q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 17 ---
// Non-commuting single-qubit rotations
x q[0];
h q[1];
sx q[2];
sy q[3];
rz(pi/4) q[4];
rz(pi/2) q[5];
x q[6];
h q[7];
sx q[8];
sy q[9];
rz(pi/4) q[10];
rz(pi/2) q[11];
x q[12];
h q[13];
sx q[14];
sy q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 18 ---
// Non-commuting single-qubit rotations
h q[0];
sx q[1];
sy q[2];
rz(pi/4) q[3];
rz(pi/2) q[4];
x q[5];
h q[6];
sx q[7];
sy q[8];
rz(pi/4) q[9];
rz(pi/2) q[10];
x q[11];
h q[12];
sx q[13];
sy q[14];
rz(pi/4) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 19 ---
// Non-commuting single-qubit rotations
sx q[0];
sy q[1];
rz(pi/4) q[2];
rz(pi/2) q[3];
x q[4];
h q[5];
sx q[6];
sy q[7];
rz(pi/4) q[8];
rz(pi/2) q[9];
x q[10];
h q[11];
sx q[12];
sy q[13];
rz(pi/4) q[14];
rz(pi/2) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 20 ---
// Non-commuting single-qubit rotations
sy q[0];
rz(pi/4) q[1];
rz(pi/2) q[2];
x q[3];
h q[4];
sx q[5];
sy q[6];
rz(pi/4) q[7];
rz(pi/2) q[8];
x q[9];
h q[10];
sx q[11];
sy q[12];
rz(pi/4) q[13];
rz(pi/2) q[14];
x q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 21 ---
// Non-commuting single-qubit rotations
rz(pi/4) q[0];
rz(pi/2) q[1];
x q[2];
h q[3];
sx q[4];
sy q[5];
rz(pi/4) q[6];
rz(pi/2) q[7];
x q[8];
h q[9];
sx q[10];
sy q[11];
rz(pi/4) q[12];
rz(pi/2) q[13];
x q[14];
h q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// --- XEB Cycle 22 ---
// Non-commuting single-qubit rotations
rz(pi/2) q[0];
x q[1];
h q[2];
sx q[3];
sy q[4];
rz(pi/4) q[5];
rz(pi/2) q[6];
x q[7];
h q[8];
sx q[9];
sy q[10];
rz(pi/4) q[11];
rz(pi/2) q[12];
x q[13];
h q[14];
sx q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[1], q[2];
cz q[3], q[4];
cz q[5], q[6];
cz q[7], q[8];
cz q[9], q[10];
cz q[11], q[12];
cz q[13], q[14];
barrier q;

// --- XEB Cycle 23 ---
// Non-commuting single-qubit rotations
x q[0];
h q[1];
sx q[2];
sy q[3];
rz(pi/4) q[4];
rz(pi/2) q[5];
x q[6];
h q[7];
sx q[8];
sy q[9];
rz(pi/4) q[10];
rz(pi/2) q[11];
x q[12];
h q[13];
sx q[14];
sy q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[8];
cz q[1], q[9];
cz q[2], q[10];
cz q[3], q[11];
cz q[4], q[12];
cz q[5], q[13];
cz q[6], q[14];
cz q[7], q[15];
barrier q;

// --- XEB Cycle 24 ---
// Non-commuting single-qubit rotations
h q[0];
sx q[1];
sy q[2];
rz(pi/4) q[3];
rz(pi/2) q[4];
x q[5];
h q[6];
sx q[7];
sy q[8];
rz(pi/4) q[9];
rz(pi/2) q[10];
x q[11];
h q[12];
sx q[13];
sy q[14];
rz(pi/4) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[8], q[0];
cz q[9], q[1];
cz q[10], q[2];
cz q[11], q[3];
cz q[12], q[4];
cz q[13], q[5];
cz q[14], q[6];
cz q[15], q[7];
barrier q;

// --- XEB Cycle 25 ---
// Non-commuting single-qubit rotations
sx q[0];
sy q[1];
rz(pi/4) q[2];
rz(pi/2) q[3];
x q[4];
h q[5];
sx q[6];
sy q[7];
rz(pi/4) q[8];
rz(pi/2) q[9];
x q[10];
h q[11];
sx q[12];
sy q[13];
rz(pi/4) q[14];
rz(pi/2) q[15];
barrier q;
// Entangling two-qubit CZ layer on coupling pairs
cz q[0], q[1];
cz q[2], q[3];
cz q[4], q[5];
cz q[6], q[7];
cz q[8], q[9];
cz q[10], q[11];
cz q[12], q[13];
cz q[14], q[15];
barrier q;

// Final readouts
xeb_outcomes[0] = measure q[0];
xeb_outcomes[1] = measure q[1];
xeb_outcomes[2] = measure q[2];
xeb_outcomes[3] = measure q[3];
xeb_outcomes[4] = measure q[4];
xeb_outcomes[5] = measure q[5];
xeb_outcomes[6] = measure q[6];
xeb_outcomes[7] = measure q[7];
xeb_outcomes[8] = measure q[8];
xeb_outcomes[9] = measure q[9];
xeb_outcomes[10] = measure q[10];
xeb_outcomes[11] = measure q[11];
xeb_outcomes[12] = measure q[12];
xeb_outcomes[13] = measure q[13];
xeb_outcomes[14] = measure q[14];
xeb_outcomes[15] = measure q[15];