OPENQASM 3.0;
include "stdgates.inc";

// Quantum Process Tomography (QPT) for Tunable Coupler CZ Gate

qubit[2] q;
bit[32] qpt_bits;

// QPT Setting 1
reset q;
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[0] = measure q[0];
qpt_bits[1] = measure q[1];

// QPT Setting 2
reset q;
x q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[2] = measure q[0];
qpt_bits[3] = measure q[1];

// QPT Setting 3
reset q;
h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[4] = measure q[0];
qpt_bits[5] = measure q[1];

// QPT Setting 4
reset q;
sdg q[0]; h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[6] = measure q[0];
qpt_bits[7] = measure q[1];

// QPT Setting 5
reset q;
x q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[8] = measure q[0];
qpt_bits[9] = measure q[1];

// QPT Setting 6
reset q;
x q[0];
x q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[10] = measure q[0];
qpt_bits[11] = measure q[1];

// QPT Setting 7
reset q;
x q[0];
h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[12] = measure q[0];
qpt_bits[13] = measure q[1];

// QPT Setting 8
reset q;
x q[0];
sdg q[0]; h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[14] = measure q[0];
qpt_bits[15] = measure q[1];

// QPT Setting 9
reset q;
h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[16] = measure q[0];
qpt_bits[17] = measure q[1];

// QPT Setting 10
reset q;
h q[0];
x q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[18] = measure q[0];
qpt_bits[19] = measure q[1];

// QPT Setting 11
reset q;
h q[0];
h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[20] = measure q[0];
qpt_bits[21] = measure q[1];

// QPT Setting 12
reset q;
h q[0];
sdg q[0]; h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[22] = measure q[0];
qpt_bits[23] = measure q[1];

// QPT Setting 13
reset q;
sdg q[0]; h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[24] = measure q[0];
qpt_bits[25] = measure q[1];

// QPT Setting 14
reset q;
sdg q[0]; h q[0];
x q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[26] = measure q[0];
qpt_bits[27] = measure q[1];

// QPT Setting 15
reset q;
sdg q[0]; h q[0];
h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[28] = measure q[0];
qpt_bits[29] = measure q[1];

// QPT Setting 16
reset q;
sdg q[0]; h q[0];
sdg q[0]; h q[0];
barrier q;
cz q[0], q[1]; // Gate Under Test
barrier q;
qpt_bits[30] = measure q[0];
qpt_bits[31] = measure q[1];
