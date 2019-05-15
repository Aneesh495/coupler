OPENQASM 3.0;
include "stdgates.inc";

// Two-Qubit Interleaved Randomized Benchmarking for Coupler CZ Fidelity

qubit $0;
qubit $1;
bit[30] rb2_c0;
bit[30] rb2_c1;

// Interleaved 2-Qubit RB Run 1: Depth 5
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[0] = measure $0;
rb2_c1[0] = measure $1;

// Interleaved 2-Qubit RB Run 2: Depth 10
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[1] = measure $0;
rb2_c1[1] = measure $1;

// Interleaved 2-Qubit RB Run 3: Depth 15
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[2] = measure $0;
rb2_c1[2] = measure $1;

// Interleaved 2-Qubit RB Run 4: Depth 20
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[3] = measure $0;
rb2_c1[3] = measure $1;

// Interleaved 2-Qubit RB Run 5: Depth 25
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[4] = measure $0;
rb2_c1[4] = measure $1;

// Interleaved 2-Qubit RB Run 6: Depth 30
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[5] = measure $0;
rb2_c1[5] = measure $1;

// Interleaved 2-Qubit RB Run 7: Depth 35
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[6] = measure $0;
rb2_c1[6] = measure $1;

// Interleaved 2-Qubit RB Run 8: Depth 40
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[7] = measure $0;
rb2_c1[7] = measure $1;

// Interleaved 2-Qubit RB Run 9: Depth 45
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[8] = measure $0;
rb2_c1[8] = measure $1;

// Interleaved 2-Qubit RB Run 10: Depth 50
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[9] = measure $0;
rb2_c1[9] = measure $1;

// Interleaved 2-Qubit RB Run 11: Depth 55
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[10] = measure $0;
rb2_c1[10] = measure $1;

// Interleaved 2-Qubit RB Run 12: Depth 60
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[11] = measure $0;
rb2_c1[11] = measure $1;

// Interleaved 2-Qubit RB Run 13: Depth 65
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[12] = measure $0;
rb2_c1[12] = measure $1;

// Interleaved 2-Qubit RB Run 14: Depth 70
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[13] = measure $0;
rb2_c1[13] = measure $1;

// Interleaved 2-Qubit RB Run 15: Depth 75
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[14] = measure $0;
rb2_c1[14] = measure $1;

// Interleaved 2-Qubit RB Run 16: Depth 80
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[15] = measure $0;
rb2_c1[15] = measure $1;

// Interleaved 2-Qubit RB Run 17: Depth 85
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[16] = measure $0;
rb2_c1[16] = measure $1;

// Interleaved 2-Qubit RB Run 18: Depth 90
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[17] = measure $0;
rb2_c1[17] = measure $1;

// Interleaved 2-Qubit RB Run 19: Depth 95
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[18] = measure $0;
rb2_c1[18] = measure $1;

// Interleaved 2-Qubit RB Run 20: Depth 100
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[19] = measure $0;
rb2_c1[19] = measure $1;

// Interleaved 2-Qubit RB Run 21: Depth 105
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[20] = measure $0;
rb2_c1[20] = measure $1;

// Interleaved 2-Qubit RB Run 22: Depth 110
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[21] = measure $0;
rb2_c1[21] = measure $1;

// Interleaved 2-Qubit RB Run 23: Depth 115
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[22] = measure $0;
rb2_c1[22] = measure $1;

// Interleaved 2-Qubit RB Run 24: Depth 120
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[23] = measure $0;
rb2_c1[23] = measure $1;

// Interleaved 2-Qubit RB Run 25: Depth 125
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[24] = measure $0;
rb2_c1[24] = measure $1;

// Interleaved 2-Qubit RB Run 26: Depth 130
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[25] = measure $0;
rb2_c1[25] = measure $1;

// Interleaved 2-Qubit RB Run 27: Depth 135
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[26] = measure $0;
rb2_c1[26] = measure $1;

// Interleaved 2-Qubit RB Run 28: Depth 140
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[27] = measure $0;
rb2_c1[27] = measure $1;

// Interleaved 2-Qubit RB Run 29: Depth 145
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[28] = measure $0;
rb2_c1[28] = measure $1;

// Interleaved 2-Qubit RB Run 30: Depth 150
reset $0;
reset $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
h $0;
sx $1;
cz $0, $1; // Interleaved gate under test
rz(pi/2) $0;
h $1;
barrier $0, $1;
rb2_c0[29] = measure $0;
rb2_c1[29] = measure $1;
