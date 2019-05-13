OPENQASM 3.0;
include "stdgates.inc";

// AllXY 21-Pulse Gate Diagnostic Calibration Sequence

qubit $0;
bit[21] allxy_bits;

// Sequence 1: (id, id)
reset $0;
allxy_bits[0] = measure $0;

// Sequence 2: (x, x)
reset $0;
x $0;
x $0;
allxy_bits[1] = measure $0;

// Sequence 3: (y, y)
reset $0;
y $0;
y $0;
allxy_bits[2] = measure $0;

// Sequence 4: (x, y)
reset $0;
x $0;
y $0;
allxy_bits[3] = measure $0;

// Sequence 5: (y, x)
reset $0;
y $0;
x $0;
allxy_bits[4] = measure $0;

// Sequence 6: (sx, id)
reset $0;
sx $0;
allxy_bits[5] = measure $0;

// Sequence 7: (sy, id)
reset $0;
sy $0;
allxy_bits[6] = measure $0;

// Sequence 8: (sx, sy)
reset $0;
sx $0;
sy $0;
allxy_bits[7] = measure $0;

// Sequence 9: (sy, sx)
reset $0;
sy $0;
sx $0;
allxy_bits[8] = measure $0;

// Sequence 10: (sx, x)
reset $0;
sx $0;
x $0;
allxy_bits[9] = measure $0;

// Sequence 11: (sy, x)
reset $0;
sy $0;
x $0;
allxy_bits[10] = measure $0;

// Sequence 12: (sx, y)
reset $0;
sx $0;
y $0;
allxy_bits[11] = measure $0;

// Sequence 13: (sy, y)
reset $0;
sy $0;
y $0;
allxy_bits[12] = measure $0;

// Sequence 14: (x, sx)
reset $0;
x $0;
sx $0;
allxy_bits[13] = measure $0;

// Sequence 15: (x, sy)
reset $0;
x $0;
sy $0;
allxy_bits[14] = measure $0;

// Sequence 16: (y, sx)
reset $0;
y $0;
sx $0;
allxy_bits[15] = measure $0;

// Sequence 17: (y, sy)
reset $0;
y $0;
sy $0;
allxy_bits[16] = measure $0;

// Sequence 18: (x, id)
reset $0;
x $0;
allxy_bits[17] = measure $0;

// Sequence 19: (y, id)
reset $0;
y $0;
allxy_bits[18] = measure $0;

// Sequence 20: (x, y)
reset $0;
x $0;
y $0;
allxy_bits[19] = measure $0;

// Sequence 21: (sx, sx)
reset $0;
sx $0;
sx $0;
allxy_bits[20] = measure $0;
