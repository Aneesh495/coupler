OPENQASM 3.0;
include "stdgates.inc";

// Topological Anyon Braiding Sequence on Toric Code Defect Lattice

qubit[36] lattice;
bit[18] defect_syndrome;

// Initialize defect pair (gamma_1, gamma_2) and (gamma_3, gamma_4)
h lattice[0];
h lattice[1];
h lattice[2];
h lattice[3];
h lattice[4];
h lattice[5];
h lattice[6];
h lattice[7];
h lattice[8];
h lattice[9];
h lattice[10];
h lattice[11];
h lattice[12];
h lattice[13];
h lattice[14];
h lattice[15];
h lattice[16];
h lattice[17];
h lattice[18];
h lattice[19];
h lattice[20];
h lattice[21];
h lattice[22];
h lattice[23];
h lattice[24];
h lattice[25];
h lattice[26];
h lattice[27];
h lattice[28];
h lattice[29];
h lattice[30];
h lattice[31];
h lattice[32];
h lattice[33];
h lattice[34];
h lattice[35];
barrier lattice;

// Braiding motion step 1: moving endpoint along loop
cz lattice[0], lattice[1];
cx lattice[1], lattice[2];
s lattice[1];
barrier lattice;

// Braiding motion step 2: moving endpoint along loop
cz lattice[2], lattice[3];
cx lattice[3], lattice[4];
s lattice[3];
barrier lattice;

// Braiding motion step 3: moving endpoint along loop
cz lattice[4], lattice[5];
cx lattice[5], lattice[6];
s lattice[5];
barrier lattice;

// Braiding motion step 4: moving endpoint along loop
cz lattice[6], lattice[7];
cx lattice[7], lattice[8];
s lattice[7];
barrier lattice;

// Braiding motion step 5: moving endpoint along loop
cz lattice[8], lattice[9];
cx lattice[9], lattice[10];
s lattice[9];
barrier lattice;

// Braiding motion step 6: moving endpoint along loop
cz lattice[10], lattice[11];
cx lattice[11], lattice[12];
s lattice[11];
barrier lattice;

// Braiding motion step 7: moving endpoint along loop
cz lattice[12], lattice[13];
cx lattice[13], lattice[14];
s lattice[13];
barrier lattice;

// Braiding motion step 8: moving endpoint along loop
cz lattice[14], lattice[15];
cx lattice[15], lattice[16];
s lattice[15];
barrier lattice;

// Braiding motion step 9: moving endpoint along loop
cz lattice[16], lattice[17];
cx lattice[17], lattice[18];
s lattice[17];
barrier lattice;

// Braiding motion step 10: moving endpoint along loop
cz lattice[18], lattice[19];
cx lattice[19], lattice[20];
s lattice[19];
barrier lattice;

// Braiding motion step 11: moving endpoint along loop
cz lattice[20], lattice[21];
cx lattice[21], lattice[22];
s lattice[21];
barrier lattice;

// Braiding motion step 12: moving endpoint along loop
cz lattice[22], lattice[23];
cx lattice[23], lattice[24];
s lattice[23];
barrier lattice;

// Braiding motion step 13: moving endpoint along loop
cz lattice[24], lattice[25];
cx lattice[25], lattice[26];
s lattice[25];
barrier lattice;

// Braiding motion step 14: moving endpoint along loop
cz lattice[26], lattice[27];
cx lattice[27], lattice[28];
s lattice[27];
barrier lattice;

// Braiding motion step 15: moving endpoint along loop
cz lattice[28], lattice[29];
cx lattice[29], lattice[30];
s lattice[29];
barrier lattice;

// Braiding motion step 16: moving endpoint along loop
cz lattice[30], lattice[31];
cx lattice[31], lattice[32];
s lattice[31];
barrier lattice;
