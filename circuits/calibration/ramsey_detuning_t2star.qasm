OPENQASM 3.0;
include "stdgates.inc";

// Ramsey Detuning Interferometry for T2* Dephasing Time Estimation

qubit $0;
bit[60] ramsey_outcomes;

// Delay point 1: 80 dt delay with phase offset 0.0
reset $0;
sx $0;
delay[80dt] $0;
rz(0.0) $0;
sx $0;
ramsey_outcomes[0] = measure $0;

// Delay point 2: 160 dt delay with phase offset 0.1
reset $0;
sx $0;
delay[160dt] $0;
rz(0.1) $0;
sx $0;
ramsey_outcomes[1] = measure $0;

// Delay point 3: 240 dt delay with phase offset 0.2
reset $0;
sx $0;
delay[240dt] $0;
rz(0.2) $0;
sx $0;
ramsey_outcomes[2] = measure $0;

// Delay point 4: 320 dt delay with phase offset 0.3
reset $0;
sx $0;
delay[320dt] $0;
rz(0.3) $0;
sx $0;
ramsey_outcomes[3] = measure $0;

// Delay point 5: 400 dt delay with phase offset 0.4
reset $0;
sx $0;
delay[400dt] $0;
rz(0.4) $0;
sx $0;
ramsey_outcomes[4] = measure $0;

// Delay point 6: 480 dt delay with phase offset 0.5
reset $0;
sx $0;
delay[480dt] $0;
rz(0.5) $0;
sx $0;
ramsey_outcomes[5] = measure $0;

// Delay point 7: 560 dt delay with phase offset 0.6
reset $0;
sx $0;
delay[560dt] $0;
rz(0.6) $0;
sx $0;
ramsey_outcomes[6] = measure $0;

// Delay point 8: 640 dt delay with phase offset 0.7
reset $0;
sx $0;
delay[640dt] $0;
rz(0.7) $0;
sx $0;
ramsey_outcomes[7] = measure $0;

// Delay point 9: 720 dt delay with phase offset 0.8
reset $0;
sx $0;
delay[720dt] $0;
rz(0.8) $0;
sx $0;
ramsey_outcomes[8] = measure $0;

// Delay point 10: 800 dt delay with phase offset 0.9
reset $0;
sx $0;
delay[800dt] $0;
rz(0.9) $0;
sx $0;
ramsey_outcomes[9] = measure $0;

// Delay point 11: 880 dt delay with phase offset 1.0
reset $0;
sx $0;
delay[880dt] $0;
rz(1.0) $0;
sx $0;
ramsey_outcomes[10] = measure $0;

// Delay point 12: 960 dt delay with phase offset 1.1
reset $0;
sx $0;
delay[960dt] $0;
rz(1.1) $0;
sx $0;
ramsey_outcomes[11] = measure $0;

// Delay point 13: 1040 dt delay with phase offset 1.2
reset $0;
sx $0;
delay[1040dt] $0;
rz(1.2) $0;
sx $0;
ramsey_outcomes[12] = measure $0;

// Delay point 14: 1120 dt delay with phase offset 1.3
reset $0;
sx $0;
delay[1120dt] $0;
rz(1.3) $0;
sx $0;
ramsey_outcomes[13] = measure $0;

// Delay point 15: 1200 dt delay with phase offset 1.4
reset $0;
sx $0;
delay[1200dt] $0;
rz(1.4) $0;
sx $0;
ramsey_outcomes[14] = measure $0;

// Delay point 16: 1280 dt delay with phase offset 1.5
reset $0;
sx $0;
delay[1280dt] $0;
rz(1.5) $0;
sx $0;
ramsey_outcomes[15] = measure $0;

// Delay point 17: 1360 dt delay with phase offset 1.6
reset $0;
sx $0;
delay[1360dt] $0;
rz(1.6) $0;
sx $0;
ramsey_outcomes[16] = measure $0;

// Delay point 18: 1440 dt delay with phase offset 1.7
reset $0;
sx $0;
delay[1440dt] $0;
rz(1.7) $0;
sx $0;
ramsey_outcomes[17] = measure $0;

// Delay point 19: 1520 dt delay with phase offset 1.8
reset $0;
sx $0;
delay[1520dt] $0;
rz(1.8) $0;
sx $0;
ramsey_outcomes[18] = measure $0;

// Delay point 20: 1600 dt delay with phase offset 1.9
reset $0;
sx $0;
delay[1600dt] $0;
rz(1.9) $0;
sx $0;
ramsey_outcomes[19] = measure $0;

// Delay point 21: 1680 dt delay with phase offset 2.0
reset $0;
sx $0;
delay[1680dt] $0;
rz(2.0) $0;
sx $0;
ramsey_outcomes[20] = measure $0;

// Delay point 22: 1760 dt delay with phase offset 2.1
reset $0;
sx $0;
delay[1760dt] $0;
rz(2.1) $0;
sx $0;
ramsey_outcomes[21] = measure $0;

// Delay point 23: 1840 dt delay with phase offset 2.2
reset $0;
sx $0;
delay[1840dt] $0;
rz(2.2) $0;
sx $0;
ramsey_outcomes[22] = measure $0;

// Delay point 24: 1920 dt delay with phase offset 2.3
reset $0;
sx $0;
delay[1920dt] $0;
rz(2.3) $0;
sx $0;
ramsey_outcomes[23] = measure $0;

// Delay point 25: 2000 dt delay with phase offset 2.4
reset $0;
sx $0;
delay[2000dt] $0;
rz(2.4) $0;
sx $0;
ramsey_outcomes[24] = measure $0;

// Delay point 26: 2080 dt delay with phase offset 2.5
reset $0;
sx $0;
delay[2080dt] $0;
rz(2.5) $0;
sx $0;
ramsey_outcomes[25] = measure $0;

// Delay point 27: 2160 dt delay with phase offset 2.6
reset $0;
sx $0;
delay[2160dt] $0;
rz(2.6) $0;
sx $0;
ramsey_outcomes[26] = measure $0;

// Delay point 28: 2240 dt delay with phase offset 2.7
reset $0;
sx $0;
delay[2240dt] $0;
rz(2.7) $0;
sx $0;
ramsey_outcomes[27] = measure $0;

// Delay point 29: 2320 dt delay with phase offset 2.8
reset $0;
sx $0;
delay[2320dt] $0;
rz(2.8) $0;
sx $0;
ramsey_outcomes[28] = measure $0;

// Delay point 30: 2400 dt delay with phase offset 2.9
reset $0;
sx $0;
delay[2400dt] $0;
rz(2.9) $0;
sx $0;
ramsey_outcomes[29] = measure $0;

// Delay point 31: 2480 dt delay with phase offset 3.0
reset $0;
sx $0;
delay[2480dt] $0;
rz(3.0) $0;
sx $0;
ramsey_outcomes[30] = measure $0;

// Delay point 32: 2560 dt delay with phase offset 3.1
reset $0;
sx $0;
delay[2560dt] $0;
rz(3.1) $0;
sx $0;
ramsey_outcomes[31] = measure $0;

// Delay point 33: 2640 dt delay with phase offset 3.2
reset $0;
sx $0;
delay[2640dt] $0;
rz(3.2) $0;
sx $0;
ramsey_outcomes[32] = measure $0;

// Delay point 34: 2720 dt delay with phase offset 3.3
reset $0;
sx $0;
delay[2720dt] $0;
rz(3.3) $0;
sx $0;
ramsey_outcomes[33] = measure $0;

// Delay point 35: 2800 dt delay with phase offset 3.4
reset $0;
sx $0;
delay[2800dt] $0;
rz(3.4) $0;
sx $0;
ramsey_outcomes[34] = measure $0;

// Delay point 36: 2880 dt delay with phase offset 3.5
reset $0;
sx $0;
delay[2880dt] $0;
rz(3.5) $0;
sx $0;
ramsey_outcomes[35] = measure $0;

// Delay point 37: 2960 dt delay with phase offset 3.6
reset $0;
sx $0;
delay[2960dt] $0;
rz(3.6) $0;
sx $0;
ramsey_outcomes[36] = measure $0;

// Delay point 38: 3040 dt delay with phase offset 3.7
reset $0;
sx $0;
delay[3040dt] $0;
rz(3.7) $0;
sx $0;
ramsey_outcomes[37] = measure $0;

// Delay point 39: 3120 dt delay with phase offset 3.8
reset $0;
sx $0;
delay[3120dt] $0;
rz(3.8) $0;
sx $0;
ramsey_outcomes[38] = measure $0;

// Delay point 40: 3200 dt delay with phase offset 3.9
reset $0;
sx $0;
delay[3200dt] $0;
rz(3.9) $0;
sx $0;
ramsey_outcomes[39] = measure $0;

// Delay point 41: 3280 dt delay with phase offset 4.0
reset $0;
sx $0;
delay[3280dt] $0;
rz(4.0) $0;
sx $0;
ramsey_outcomes[40] = measure $0;

// Delay point 42: 3360 dt delay with phase offset 4.1
reset $0;
sx $0;
delay[3360dt] $0;
rz(4.1) $0;
sx $0;
ramsey_outcomes[41] = measure $0;

// Delay point 43: 3440 dt delay with phase offset 4.2
reset $0;
sx $0;
delay[3440dt] $0;
rz(4.2) $0;
sx $0;
ramsey_outcomes[42] = measure $0;

// Delay point 44: 3520 dt delay with phase offset 4.3
reset $0;
sx $0;
delay[3520dt] $0;
rz(4.3) $0;
sx $0;
ramsey_outcomes[43] = measure $0;

// Delay point 45: 3600 dt delay with phase offset 4.4
reset $0;
sx $0;
delay[3600dt] $0;
rz(4.4) $0;
sx $0;
ramsey_outcomes[44] = measure $0;

// Delay point 46: 3680 dt delay with phase offset 4.5
reset $0;
sx $0;
delay[3680dt] $0;
rz(4.5) $0;
sx $0;
ramsey_outcomes[45] = measure $0;

// Delay point 47: 3760 dt delay with phase offset 4.6
reset $0;
sx $0;
delay[3760dt] $0;
rz(4.6) $0;
sx $0;
ramsey_outcomes[46] = measure $0;

// Delay point 48: 3840 dt delay with phase offset 4.7
reset $0;
sx $0;
delay[3840dt] $0;
rz(4.7) $0;
sx $0;
ramsey_outcomes[47] = measure $0;

// Delay point 49: 3920 dt delay with phase offset 4.8
reset $0;
sx $0;
delay[3920dt] $0;
rz(4.8) $0;
sx $0;
ramsey_outcomes[48] = measure $0;

// Delay point 50: 4000 dt delay with phase offset 4.9
reset $0;
sx $0;
delay[4000dt] $0;
rz(4.9) $0;
sx $0;
ramsey_outcomes[49] = measure $0;

// Delay point 51: 4080 dt delay with phase offset 5.0
reset $0;
sx $0;
delay[4080dt] $0;
rz(5.0) $0;
sx $0;
ramsey_outcomes[50] = measure $0;

// Delay point 52: 4160 dt delay with phase offset 5.1
reset $0;
sx $0;
delay[4160dt] $0;
rz(5.1) $0;
sx $0;
ramsey_outcomes[51] = measure $0;

// Delay point 53: 4240 dt delay with phase offset 5.2
reset $0;
sx $0;
delay[4240dt] $0;
rz(5.2) $0;
sx $0;
ramsey_outcomes[52] = measure $0;

// Delay point 54: 4320 dt delay with phase offset 5.3
reset $0;
sx $0;
delay[4320dt] $0;
rz(5.3) $0;
sx $0;
ramsey_outcomes[53] = measure $0;

// Delay point 55: 4400 dt delay with phase offset 5.4
reset $0;
sx $0;
delay[4400dt] $0;
rz(5.4) $0;
sx $0;
ramsey_outcomes[54] = measure $0;

// Delay point 56: 4480 dt delay with phase offset 5.5
reset $0;
sx $0;
delay[4480dt] $0;
rz(5.5) $0;
sx $0;
ramsey_outcomes[55] = measure $0;

// Delay point 57: 4560 dt delay with phase offset 5.6
reset $0;
sx $0;
delay[4560dt] $0;
rz(5.6) $0;
sx $0;
ramsey_outcomes[56] = measure $0;

// Delay point 58: 4640 dt delay with phase offset 5.7
reset $0;
sx $0;
delay[4640dt] $0;
rz(5.7) $0;
sx $0;
ramsey_outcomes[57] = measure $0;

// Delay point 59: 4720 dt delay with phase offset 5.8
reset $0;
sx $0;
delay[4720dt] $0;
rz(5.8) $0;
sx $0;
ramsey_outcomes[58] = measure $0;

// Delay point 60: 4800 dt delay with phase offset 5.9
reset $0;
sx $0;
delay[4800dt] $0;
rz(5.9) $0;
sx $0;
ramsey_outcomes[59] = measure $0;
