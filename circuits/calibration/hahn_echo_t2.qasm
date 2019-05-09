OPENQASM 3.0;
include "stdgates.inc";

// Hahn Echo Spin Refocusing for Transmon T2 Coherence Measurement

qubit $0;
bit[50] echo_outcomes;

// Coherence step 1: tau = 100 dt
reset $0;
sx $0;
delay[100dt] $0;
x $0; // Refocusing pi-pulse
delay[100dt] $0;
sx $0;
echo_outcomes[0] = measure $0;

// Coherence step 2: tau = 200 dt
reset $0;
sx $0;
delay[200dt] $0;
x $0; // Refocusing pi-pulse
delay[200dt] $0;
sx $0;
echo_outcomes[1] = measure $0;

// Coherence step 3: tau = 300 dt
reset $0;
sx $0;
delay[300dt] $0;
x $0; // Refocusing pi-pulse
delay[300dt] $0;
sx $0;
echo_outcomes[2] = measure $0;

// Coherence step 4: tau = 400 dt
reset $0;
sx $0;
delay[400dt] $0;
x $0; // Refocusing pi-pulse
delay[400dt] $0;
sx $0;
echo_outcomes[3] = measure $0;

// Coherence step 5: tau = 500 dt
reset $0;
sx $0;
delay[500dt] $0;
x $0; // Refocusing pi-pulse
delay[500dt] $0;
sx $0;
echo_outcomes[4] = measure $0;

// Coherence step 6: tau = 600 dt
reset $0;
sx $0;
delay[600dt] $0;
x $0; // Refocusing pi-pulse
delay[600dt] $0;
sx $0;
echo_outcomes[5] = measure $0;

// Coherence step 7: tau = 700 dt
reset $0;
sx $0;
delay[700dt] $0;
x $0; // Refocusing pi-pulse
delay[700dt] $0;
sx $0;
echo_outcomes[6] = measure $0;

// Coherence step 8: tau = 800 dt
reset $0;
sx $0;
delay[800dt] $0;
x $0; // Refocusing pi-pulse
delay[800dt] $0;
sx $0;
echo_outcomes[7] = measure $0;

// Coherence step 9: tau = 900 dt
reset $0;
sx $0;
delay[900dt] $0;
x $0; // Refocusing pi-pulse
delay[900dt] $0;
sx $0;
echo_outcomes[8] = measure $0;

// Coherence step 10: tau = 1000 dt
reset $0;
sx $0;
delay[1000dt] $0;
x $0; // Refocusing pi-pulse
delay[1000dt] $0;
sx $0;
echo_outcomes[9] = measure $0;

// Coherence step 11: tau = 1100 dt
reset $0;
sx $0;
delay[1100dt] $0;
x $0; // Refocusing pi-pulse
delay[1100dt] $0;
sx $0;
echo_outcomes[10] = measure $0;

// Coherence step 12: tau = 1200 dt
reset $0;
sx $0;
delay[1200dt] $0;
x $0; // Refocusing pi-pulse
delay[1200dt] $0;
sx $0;
echo_outcomes[11] = measure $0;

// Coherence step 13: tau = 1300 dt
reset $0;
sx $0;
delay[1300dt] $0;
x $0; // Refocusing pi-pulse
delay[1300dt] $0;
sx $0;
echo_outcomes[12] = measure $0;

// Coherence step 14: tau = 1400 dt
reset $0;
sx $0;
delay[1400dt] $0;
x $0; // Refocusing pi-pulse
delay[1400dt] $0;
sx $0;
echo_outcomes[13] = measure $0;

// Coherence step 15: tau = 1500 dt
reset $0;
sx $0;
delay[1500dt] $0;
x $0; // Refocusing pi-pulse
delay[1500dt] $0;
sx $0;
echo_outcomes[14] = measure $0;

// Coherence step 16: tau = 1600 dt
reset $0;
sx $0;
delay[1600dt] $0;
x $0; // Refocusing pi-pulse
delay[1600dt] $0;
sx $0;
echo_outcomes[15] = measure $0;

// Coherence step 17: tau = 1700 dt
reset $0;
sx $0;
delay[1700dt] $0;
x $0; // Refocusing pi-pulse
delay[1700dt] $0;
sx $0;
echo_outcomes[16] = measure $0;

// Coherence step 18: tau = 1800 dt
reset $0;
sx $0;
delay[1800dt] $0;
x $0; // Refocusing pi-pulse
delay[1800dt] $0;
sx $0;
echo_outcomes[17] = measure $0;

// Coherence step 19: tau = 1900 dt
reset $0;
sx $0;
delay[1900dt] $0;
x $0; // Refocusing pi-pulse
delay[1900dt] $0;
sx $0;
echo_outcomes[18] = measure $0;

// Coherence step 20: tau = 2000 dt
reset $0;
sx $0;
delay[2000dt] $0;
x $0; // Refocusing pi-pulse
delay[2000dt] $0;
sx $0;
echo_outcomes[19] = measure $0;

// Coherence step 21: tau = 2100 dt
reset $0;
sx $0;
delay[2100dt] $0;
x $0; // Refocusing pi-pulse
delay[2100dt] $0;
sx $0;
echo_outcomes[20] = measure $0;

// Coherence step 22: tau = 2200 dt
reset $0;
sx $0;
delay[2200dt] $0;
x $0; // Refocusing pi-pulse
delay[2200dt] $0;
sx $0;
echo_outcomes[21] = measure $0;

// Coherence step 23: tau = 2300 dt
reset $0;
sx $0;
delay[2300dt] $0;
x $0; // Refocusing pi-pulse
delay[2300dt] $0;
sx $0;
echo_outcomes[22] = measure $0;

// Coherence step 24: tau = 2400 dt
reset $0;
sx $0;
delay[2400dt] $0;
x $0; // Refocusing pi-pulse
delay[2400dt] $0;
sx $0;
echo_outcomes[23] = measure $0;

// Coherence step 25: tau = 2500 dt
reset $0;
sx $0;
delay[2500dt] $0;
x $0; // Refocusing pi-pulse
delay[2500dt] $0;
sx $0;
echo_outcomes[24] = measure $0;

// Coherence step 26: tau = 2600 dt
reset $0;
sx $0;
delay[2600dt] $0;
x $0; // Refocusing pi-pulse
delay[2600dt] $0;
sx $0;
echo_outcomes[25] = measure $0;

// Coherence step 27: tau = 2700 dt
reset $0;
sx $0;
delay[2700dt] $0;
x $0; // Refocusing pi-pulse
delay[2700dt] $0;
sx $0;
echo_outcomes[26] = measure $0;

// Coherence step 28: tau = 2800 dt
reset $0;
sx $0;
delay[2800dt] $0;
x $0; // Refocusing pi-pulse
delay[2800dt] $0;
sx $0;
echo_outcomes[27] = measure $0;

// Coherence step 29: tau = 2900 dt
reset $0;
sx $0;
delay[2900dt] $0;
x $0; // Refocusing pi-pulse
delay[2900dt] $0;
sx $0;
echo_outcomes[28] = measure $0;

// Coherence step 30: tau = 3000 dt
reset $0;
sx $0;
delay[3000dt] $0;
x $0; // Refocusing pi-pulse
delay[3000dt] $0;
sx $0;
echo_outcomes[29] = measure $0;

// Coherence step 31: tau = 3100 dt
reset $0;
sx $0;
delay[3100dt] $0;
x $0; // Refocusing pi-pulse
delay[3100dt] $0;
sx $0;
echo_outcomes[30] = measure $0;

// Coherence step 32: tau = 3200 dt
reset $0;
sx $0;
delay[3200dt] $0;
x $0; // Refocusing pi-pulse
delay[3200dt] $0;
sx $0;
echo_outcomes[31] = measure $0;

// Coherence step 33: tau = 3300 dt
reset $0;
sx $0;
delay[3300dt] $0;
x $0; // Refocusing pi-pulse
delay[3300dt] $0;
sx $0;
echo_outcomes[32] = measure $0;

// Coherence step 34: tau = 3400 dt
reset $0;
sx $0;
delay[3400dt] $0;
x $0; // Refocusing pi-pulse
delay[3400dt] $0;
sx $0;
echo_outcomes[33] = measure $0;

// Coherence step 35: tau = 3500 dt
reset $0;
sx $0;
delay[3500dt] $0;
x $0; // Refocusing pi-pulse
delay[3500dt] $0;
sx $0;
echo_outcomes[34] = measure $0;

// Coherence step 36: tau = 3600 dt
reset $0;
sx $0;
delay[3600dt] $0;
x $0; // Refocusing pi-pulse
delay[3600dt] $0;
sx $0;
echo_outcomes[35] = measure $0;

// Coherence step 37: tau = 3700 dt
reset $0;
sx $0;
delay[3700dt] $0;
x $0; // Refocusing pi-pulse
delay[3700dt] $0;
sx $0;
echo_outcomes[36] = measure $0;

// Coherence step 38: tau = 3800 dt
reset $0;
sx $0;
delay[3800dt] $0;
x $0; // Refocusing pi-pulse
delay[3800dt] $0;
sx $0;
echo_outcomes[37] = measure $0;

// Coherence step 39: tau = 3900 dt
reset $0;
sx $0;
delay[3900dt] $0;
x $0; // Refocusing pi-pulse
delay[3900dt] $0;
sx $0;
echo_outcomes[38] = measure $0;

// Coherence step 40: tau = 4000 dt
reset $0;
sx $0;
delay[4000dt] $0;
x $0; // Refocusing pi-pulse
delay[4000dt] $0;
sx $0;
echo_outcomes[39] = measure $0;

// Coherence step 41: tau = 4100 dt
reset $0;
sx $0;
delay[4100dt] $0;
x $0; // Refocusing pi-pulse
delay[4100dt] $0;
sx $0;
echo_outcomes[40] = measure $0;

// Coherence step 42: tau = 4200 dt
reset $0;
sx $0;
delay[4200dt] $0;
x $0; // Refocusing pi-pulse
delay[4200dt] $0;
sx $0;
echo_outcomes[41] = measure $0;

// Coherence step 43: tau = 4300 dt
reset $0;
sx $0;
delay[4300dt] $0;
x $0; // Refocusing pi-pulse
delay[4300dt] $0;
sx $0;
echo_outcomes[42] = measure $0;

// Coherence step 44: tau = 4400 dt
reset $0;
sx $0;
delay[4400dt] $0;
x $0; // Refocusing pi-pulse
delay[4400dt] $0;
sx $0;
echo_outcomes[43] = measure $0;

// Coherence step 45: tau = 4500 dt
reset $0;
sx $0;
delay[4500dt] $0;
x $0; // Refocusing pi-pulse
delay[4500dt] $0;
sx $0;
echo_outcomes[44] = measure $0;

// Coherence step 46: tau = 4600 dt
reset $0;
sx $0;
delay[4600dt] $0;
x $0; // Refocusing pi-pulse
delay[4600dt] $0;
sx $0;
echo_outcomes[45] = measure $0;

// Coherence step 47: tau = 4700 dt
reset $0;
sx $0;
delay[4700dt] $0;
x $0; // Refocusing pi-pulse
delay[4700dt] $0;
sx $0;
echo_outcomes[46] = measure $0;

// Coherence step 48: tau = 4800 dt
reset $0;
sx $0;
delay[4800dt] $0;
x $0; // Refocusing pi-pulse
delay[4800dt] $0;
sx $0;
echo_outcomes[47] = measure $0;

// Coherence step 49: tau = 4900 dt
reset $0;
sx $0;
delay[4900dt] $0;
x $0; // Refocusing pi-pulse
delay[4900dt] $0;
sx $0;
echo_outcomes[48] = measure $0;

// Coherence step 50: tau = 5000 dt
reset $0;
sx $0;
delay[5000dt] $0;
x $0; // Refocusing pi-pulse
delay[5000dt] $0;
sx $0;
echo_outcomes[49] = measure $0;
