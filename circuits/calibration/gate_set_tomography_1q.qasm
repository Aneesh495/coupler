OPENQASM 3.0;
include "stdgates.inc";

// 1-Qubit Gate Set Tomography (GST) Fiducial and Germ Sequences

qubit $0;
bit[64] gst_bits;

// GST Experiment 0: Prep [], Germ ['x'], Meas []
reset $0;
x $0;
x $0;
gst_bits[0] = measure $0;

// GST Experiment 1: Prep [], Germ ['x'], Meas ['x']
reset $0;
x $0;
x $0;
x $0;
gst_bits[1] = measure $0;

// GST Experiment 2: Prep [], Germ ['x'], Meas ['y']
reset $0;
x $0;
x $0;
y $0;
gst_bits[2] = measure $0;

// GST Experiment 3: Prep [], Germ ['x'], Meas ['h']
reset $0;
x $0;
x $0;
h $0;
gst_bits[3] = measure $0;

// GST Experiment 4: Prep [], Germ ['x'], Meas ['s']
reset $0;
x $0;
x $0;
s $0;
gst_bits[4] = measure $0;

// GST Experiment 5: Prep [], Germ ['x'], Meas ['sx']
reset $0;
x $0;
x $0;
sx $0;
gst_bits[5] = measure $0;

// GST Experiment 6: Prep [], Germ ['y'], Meas []
reset $0;
y $0;
y $0;
gst_bits[6] = measure $0;

// GST Experiment 7: Prep [], Germ ['y'], Meas ['x']
reset $0;
y $0;
y $0;
x $0;
gst_bits[7] = measure $0;

// GST Experiment 8: Prep [], Germ ['y'], Meas ['y']
reset $0;
y $0;
y $0;
y $0;
gst_bits[8] = measure $0;

// GST Experiment 9: Prep [], Germ ['y'], Meas ['h']
reset $0;
y $0;
y $0;
h $0;
gst_bits[9] = measure $0;

// GST Experiment 10: Prep [], Germ ['y'], Meas ['s']
reset $0;
y $0;
y $0;
s $0;
gst_bits[10] = measure $0;

// GST Experiment 11: Prep [], Germ ['y'], Meas ['sx']
reset $0;
y $0;
y $0;
sx $0;
gst_bits[11] = measure $0;

// GST Experiment 12: Prep [], Germ ['sx'], Meas []
reset $0;
sx $0;
sx $0;
gst_bits[12] = measure $0;

// GST Experiment 13: Prep [], Germ ['sx'], Meas ['x']
reset $0;
sx $0;
sx $0;
x $0;
gst_bits[13] = measure $0;

// GST Experiment 14: Prep [], Germ ['sx'], Meas ['y']
reset $0;
sx $0;
sx $0;
y $0;
gst_bits[14] = measure $0;

// GST Experiment 15: Prep [], Germ ['sx'], Meas ['h']
reset $0;
sx $0;
sx $0;
h $0;
gst_bits[15] = measure $0;

// GST Experiment 16: Prep [], Germ ['sx'], Meas ['s']
reset $0;
sx $0;
sx $0;
s $0;
gst_bits[16] = measure $0;

// GST Experiment 17: Prep [], Germ ['sx'], Meas ['sx']
reset $0;
sx $0;
sx $0;
sx $0;
gst_bits[17] = measure $0;

// GST Experiment 18: Prep [], Germ ['s'], Meas []
reset $0;
s $0;
s $0;
gst_bits[18] = measure $0;

// GST Experiment 19: Prep [], Germ ['s'], Meas ['x']
reset $0;
s $0;
s $0;
x $0;
gst_bits[19] = measure $0;

// GST Experiment 20: Prep [], Germ ['s'], Meas ['y']
reset $0;
s $0;
s $0;
y $0;
gst_bits[20] = measure $0;

// GST Experiment 21: Prep [], Germ ['s'], Meas ['h']
reset $0;
s $0;
s $0;
h $0;
gst_bits[21] = measure $0;

// GST Experiment 22: Prep [], Germ ['s'], Meas ['s']
reset $0;
s $0;
s $0;
s $0;
gst_bits[22] = measure $0;

// GST Experiment 23: Prep [], Germ ['s'], Meas ['sx']
reset $0;
s $0;
s $0;
sx $0;
gst_bits[23] = measure $0;

// GST Experiment 24: Prep [], Germ ['x', 'y'], Meas []
reset $0;
x $0;
y $0;
x $0;
y $0;
gst_bits[24] = measure $0;

// GST Experiment 25: Prep [], Germ ['x', 'y'], Meas ['x']
reset $0;
x $0;
y $0;
x $0;
y $0;
x $0;
gst_bits[25] = measure $0;

// GST Experiment 26: Prep [], Germ ['x', 'y'], Meas ['y']
reset $0;
x $0;
y $0;
x $0;
y $0;
y $0;
gst_bits[26] = measure $0;

// GST Experiment 27: Prep [], Germ ['x', 'y'], Meas ['h']
reset $0;
x $0;
y $0;
x $0;
y $0;
h $0;
gst_bits[27] = measure $0;

// GST Experiment 28: Prep [], Germ ['x', 'y'], Meas ['s']
reset $0;
x $0;
y $0;
x $0;
y $0;
s $0;
gst_bits[28] = measure $0;

// GST Experiment 29: Prep [], Germ ['x', 'y'], Meas ['sx']
reset $0;
x $0;
y $0;
x $0;
y $0;
sx $0;
gst_bits[29] = measure $0;

// GST Experiment 30: Prep [], Germ ['sx', 's'], Meas []
reset $0;
sx $0;
s $0;
sx $0;
s $0;
gst_bits[30] = measure $0;

// GST Experiment 31: Prep [], Germ ['sx', 's'], Meas ['x']
reset $0;
sx $0;
s $0;
sx $0;
s $0;
x $0;
gst_bits[31] = measure $0;

// GST Experiment 32: Prep [], Germ ['sx', 's'], Meas ['y']
reset $0;
sx $0;
s $0;
sx $0;
s $0;
y $0;
gst_bits[32] = measure $0;

// GST Experiment 33: Prep [], Germ ['sx', 's'], Meas ['h']
reset $0;
sx $0;
s $0;
sx $0;
s $0;
h $0;
gst_bits[33] = measure $0;

// GST Experiment 34: Prep [], Germ ['sx', 's'], Meas ['s']
reset $0;
sx $0;
s $0;
sx $0;
s $0;
s $0;
gst_bits[34] = measure $0;

// GST Experiment 35: Prep [], Germ ['sx', 's'], Meas ['sx']
reset $0;
sx $0;
s $0;
sx $0;
s $0;
sx $0;
gst_bits[35] = measure $0;

// GST Experiment 36: Prep ['x'], Germ ['x'], Meas []
reset $0;
x $0;
x $0;
x $0;
gst_bits[36] = measure $0;

// GST Experiment 37: Prep ['x'], Germ ['x'], Meas ['x']
reset $0;
x $0;
x $0;
x $0;
x $0;
gst_bits[37] = measure $0;

// GST Experiment 38: Prep ['x'], Germ ['x'], Meas ['y']
reset $0;
x $0;
x $0;
x $0;
y $0;
gst_bits[38] = measure $0;

// GST Experiment 39: Prep ['x'], Germ ['x'], Meas ['h']
reset $0;
x $0;
x $0;
x $0;
h $0;
gst_bits[39] = measure $0;

// GST Experiment 40: Prep ['x'], Germ ['x'], Meas ['s']
reset $0;
x $0;
x $0;
x $0;
s $0;
gst_bits[40] = measure $0;

// GST Experiment 41: Prep ['x'], Germ ['x'], Meas ['sx']
reset $0;
x $0;
x $0;
x $0;
sx $0;
gst_bits[41] = measure $0;

// GST Experiment 42: Prep ['x'], Germ ['y'], Meas []
reset $0;
x $0;
y $0;
y $0;
gst_bits[42] = measure $0;

// GST Experiment 43: Prep ['x'], Germ ['y'], Meas ['x']
reset $0;
x $0;
y $0;
y $0;
x $0;
gst_bits[43] = measure $0;

// GST Experiment 44: Prep ['x'], Germ ['y'], Meas ['y']
reset $0;
x $0;
y $0;
y $0;
y $0;
gst_bits[44] = measure $0;

// GST Experiment 45: Prep ['x'], Germ ['y'], Meas ['h']
reset $0;
x $0;
y $0;
y $0;
h $0;
gst_bits[45] = measure $0;

// GST Experiment 46: Prep ['x'], Germ ['y'], Meas ['s']
reset $0;
x $0;
y $0;
y $0;
s $0;
gst_bits[46] = measure $0;

// GST Experiment 47: Prep ['x'], Germ ['y'], Meas ['sx']
reset $0;
x $0;
y $0;
y $0;
sx $0;
gst_bits[47] = measure $0;

// GST Experiment 48: Prep ['x'], Germ ['sx'], Meas []
reset $0;
x $0;
sx $0;
sx $0;
gst_bits[48] = measure $0;

// GST Experiment 49: Prep ['x'], Germ ['sx'], Meas ['x']
reset $0;
x $0;
sx $0;
sx $0;
x $0;
gst_bits[49] = measure $0;

// GST Experiment 50: Prep ['x'], Germ ['sx'], Meas ['y']
reset $0;
x $0;
sx $0;
sx $0;
y $0;
gst_bits[50] = measure $0;

// GST Experiment 51: Prep ['x'], Germ ['sx'], Meas ['h']
reset $0;
x $0;
sx $0;
sx $0;
h $0;
gst_bits[51] = measure $0;

// GST Experiment 52: Prep ['x'], Germ ['sx'], Meas ['s']
reset $0;
x $0;
sx $0;
sx $0;
s $0;
gst_bits[52] = measure $0;

// GST Experiment 53: Prep ['x'], Germ ['sx'], Meas ['sx']
reset $0;
x $0;
sx $0;
sx $0;
sx $0;
gst_bits[53] = measure $0;

// GST Experiment 54: Prep ['x'], Germ ['s'], Meas []
reset $0;
x $0;
s $0;
s $0;
gst_bits[54] = measure $0;

// GST Experiment 55: Prep ['x'], Germ ['s'], Meas ['x']
reset $0;
x $0;
s $0;
s $0;
x $0;
gst_bits[55] = measure $0;

// GST Experiment 56: Prep ['x'], Germ ['s'], Meas ['y']
reset $0;
x $0;
s $0;
s $0;
y $0;
gst_bits[56] = measure $0;

// GST Experiment 57: Prep ['x'], Germ ['s'], Meas ['h']
reset $0;
x $0;
s $0;
s $0;
h $0;
gst_bits[57] = measure $0;

// GST Experiment 58: Prep ['x'], Germ ['s'], Meas ['s']
reset $0;
x $0;
s $0;
s $0;
s $0;
gst_bits[58] = measure $0;

// GST Experiment 59: Prep ['x'], Germ ['s'], Meas ['sx']
reset $0;
x $0;
s $0;
s $0;
sx $0;
gst_bits[59] = measure $0;

// GST Experiment 60: Prep ['x'], Germ ['x', 'y'], Meas []
reset $0;
x $0;
x $0;
y $0;
x $0;
y $0;
gst_bits[60] = measure $0;

// GST Experiment 61: Prep ['x'], Germ ['x', 'y'], Meas ['x']
reset $0;
x $0;
x $0;
y $0;
x $0;
y $0;
x $0;
gst_bits[61] = measure $0;

// GST Experiment 62: Prep ['x'], Germ ['x', 'y'], Meas ['y']
reset $0;
x $0;
x $0;
y $0;
x $0;
y $0;
y $0;
gst_bits[62] = measure $0;

// GST Experiment 63: Prep ['x'], Germ ['x', 'y'], Meas ['h']
reset $0;
x $0;
x $0;
y $0;
x $0;
y $0;
h $0;
gst_bits[63] = measure $0;
