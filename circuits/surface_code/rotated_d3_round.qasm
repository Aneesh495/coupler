OPENQASM 3.0;
include "stdgates.inc";

// Rotated Planar Surface Code [[9, 1, 3]]
// Distance: 3, Extraction Cycles: 15
// Data Qubits: 9, X Ancillae: 4, Z Ancillae: 4

qubit[9] data;
qubit[4] ancilla_x;
qubit[4] ancilla_z;
bit[4] syn_x;
bit[4] syn_z;

// === Round 1 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 2 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 3 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 4 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 5 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 6 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 7 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 8 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 9 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 10 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 11 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 12 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 13 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 14 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// === Round 15 Stabilizer Syndrome Extraction Cycle ===
// Pipelined Ancillae Reset
reset ancilla_x[0];
reset ancilla_x[1];
reset ancilla_x[2];
reset ancilla_x[3];
reset ancilla_z[0];
reset ancilla_z[1];
reset ancilla_z[2];
reset ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 1: Hadamard on X-stabilizer ancillae
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 1: Entangling CX gates (North)
cx ancilla_x[0], data[0];
cx ancilla_x[1], data[2];
cx ancilla_x[2], data[4];
cx ancilla_x[3], data[6];
cx data[1], ancilla_z[0];
cx data[3], ancilla_z[1];
cx data[5], ancilla_z[2];
cx data[7], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 2: Entangling CX gates (East)
cx ancilla_x[0], data[1];
cx ancilla_x[1], data[3];
cx ancilla_x[2], data[5];
cx ancilla_x[3], data[7];
cx data[2], ancilla_z[0];
cx data[4], ancilla_z[1];
cx data[6], ancilla_z[2];
cx data[8], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 3: Entangling CX gates (South)
cx ancilla_x[0], data[2];
cx ancilla_x[1], data[4];
cx ancilla_x[2], data[6];
cx ancilla_x[3], data[8];
cx data[3], ancilla_z[0];
cx data[5], ancilla_z[1];
cx data[7], ancilla_z[2];
cx data[0], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Sub-step 4: Entangling CX gates (West)
cx ancilla_x[0], data[3];
cx ancilla_x[1], data[5];
cx ancilla_x[2], data[7];
cx ancilla_x[3], data[0];
cx data[4], ancilla_z[0];
cx data[6], ancilla_z[1];
cx data[8], ancilla_z[2];
cx data[1], ancilla_z[3];
barrier data, ancilla_x, ancilla_z;

// Step 6: Hadamard on X-stabilizer ancillae prior to measurement
h ancilla_x[0];
h ancilla_x[1];
h ancilla_x[2];
h ancilla_x[3];
barrier data, ancilla_x, ancilla_z;

// Step 7: Mid-circuit syndrome readout and feedforward validation
syn_x[0] = measure ancilla_x[0];
syn_x[1] = measure ancilla_x[1];
syn_x[2] = measure ancilla_x[2];
syn_x[3] = measure ancilla_x[3];
syn_z[0] = measure ancilla_z[0];
syn_z[1] = measure ancilla_z[1];
syn_z[2] = measure ancilla_z[2];
syn_z[3] = measure ancilla_z[3];
barrier data, ancilla_x, ancilla_z;
