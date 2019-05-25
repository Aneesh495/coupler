OPENQASM 3.0;
defcalgrammar "openpulse";

// Tunable Coupler Flux Pulse Fast Exchange Tuning

cal {
    extern port flux_coupler_0_1;
}

defcal cz_flux_step_0() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.01, sigma=60dt));
}
defcal cz_flux_step_1() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.02, sigma=60dt));
}
defcal cz_flux_step_2() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.03, sigma=60dt));
}
defcal cz_flux_step_3() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.04, sigma=60dt));
}
defcal cz_flux_step_4() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.05, sigma=60dt));
}
defcal cz_flux_step_5() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.06, sigma=60dt));
}
defcal cz_flux_step_6() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.07, sigma=60dt));
}
defcal cz_flux_step_7() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.08, sigma=60dt));
}
defcal cz_flux_step_8() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.09, sigma=60dt));
}
defcal cz_flux_step_9() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.1, sigma=60dt));
}
defcal cz_flux_step_10() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.11, sigma=60dt));
}
defcal cz_flux_step_11() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.12, sigma=60dt));
}
defcal cz_flux_step_12() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.13, sigma=60dt));
}
defcal cz_flux_step_13() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.14, sigma=60dt));
}
defcal cz_flux_step_14() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.15, sigma=60dt));
}
defcal cz_flux_step_15() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.16, sigma=60dt));
}
defcal cz_flux_step_16() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.17, sigma=60dt));
}
defcal cz_flux_step_17() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.18, sigma=60dt));
}
defcal cz_flux_step_18() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.19, sigma=60dt));
}
defcal cz_flux_step_19() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.2, sigma=60dt));
}
defcal cz_flux_step_20() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.21, sigma=60dt));
}
defcal cz_flux_step_21() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.22, sigma=60dt));
}
defcal cz_flux_step_22() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.23, sigma=60dt));
}
defcal cz_flux_step_23() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.24, sigma=60dt));
}
defcal cz_flux_step_24() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.25, sigma=60dt));
}
defcal cz_flux_step_25() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.26, sigma=60dt));
}
defcal cz_flux_step_26() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.27, sigma=60dt));
}
defcal cz_flux_step_27() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.28, sigma=60dt));
}
defcal cz_flux_step_28() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.29, sigma=60dt));
}
defcal cz_flux_step_29() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.3, sigma=60dt));
}
defcal cz_flux_step_30() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.31, sigma=60dt));
}
defcal cz_flux_step_31() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.32, sigma=60dt));
}
defcal cz_flux_step_32() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.33, sigma=60dt));
}
defcal cz_flux_step_33() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.34, sigma=60dt));
}
defcal cz_flux_step_34() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.35, sigma=60dt));
}
defcal cz_flux_step_35() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.36, sigma=60dt));
}
defcal cz_flux_step_36() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.37, sigma=60dt));
}
defcal cz_flux_step_37() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.38, sigma=60dt));
}
defcal cz_flux_step_38() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.39, sigma=60dt));
}
defcal cz_flux_step_39() $0, $1 {
    play(flux_coupler_0_1, gaussian(duration=360dt, amp=0.4, sigma=60dt));
}

qubit $0;
qubit $1;
bit[40] flux_results;

// Flux tuning step 1
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[0] = measure $0;
// Flux tuning step 2
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[1] = measure $0;
// Flux tuning step 3
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[2] = measure $0;
// Flux tuning step 4
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[3] = measure $0;
// Flux tuning step 5
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[4] = measure $0;
// Flux tuning step 6
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[5] = measure $0;
// Flux tuning step 7
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[6] = measure $0;
// Flux tuning step 8
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[7] = measure $0;
// Flux tuning step 9
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[8] = measure $0;
// Flux tuning step 10
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[9] = measure $0;
// Flux tuning step 11
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[10] = measure $0;
// Flux tuning step 12
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[11] = measure $0;
// Flux tuning step 13
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[12] = measure $0;
// Flux tuning step 14
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[13] = measure $0;
// Flux tuning step 15
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[14] = measure $0;
// Flux tuning step 16
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[15] = measure $0;
// Flux tuning step 17
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[16] = measure $0;
// Flux tuning step 18
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[17] = measure $0;
// Flux tuning step 19
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[18] = measure $0;
// Flux tuning step 20
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[19] = measure $0;
// Flux tuning step 21
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[20] = measure $0;
// Flux tuning step 22
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[21] = measure $0;
// Flux tuning step 23
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[22] = measure $0;
// Flux tuning step 24
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[23] = measure $0;
// Flux tuning step 25
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[24] = measure $0;
// Flux tuning step 26
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[25] = measure $0;
// Flux tuning step 27
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[26] = measure $0;
// Flux tuning step 28
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[27] = measure $0;
// Flux tuning step 29
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[28] = measure $0;
// Flux tuning step 30
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[29] = measure $0;
// Flux tuning step 31
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[30] = measure $0;
// Flux tuning step 32
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[31] = measure $0;
// Flux tuning step 33
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[32] = measure $0;
// Flux tuning step 34
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[33] = measure $0;
// Flux tuning step 35
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[34] = measure $0;
// Flux tuning step 36
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[35] = measure $0;
// Flux tuning step 37
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[36] = measure $0;
// Flux tuning step 38
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[37] = measure $0;
// Flux tuning step 39
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[38] = measure $0;
// Flux tuning step 40
reset $0;
reset $1;
h $0;
x $1;
delay[360dt] $0, $1;
h $0;
flux_results[39] = measure $0;