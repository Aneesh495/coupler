OPENQASM 3.0;
defcalgrammar "openpulse";

// Transmon Qubit Rabi Amplitude Sweep (ge and ef transitions)

cal {
    extern port d0;
    extern frame tx0;
}

defcal rabi_step_0(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.02, sigma=40dt, beta=0.25));
}
defcal rabi_step_1(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.04, sigma=40dt, beta=0.25));
}
defcal rabi_step_2(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.06, sigma=40dt, beta=0.25));
}
defcal rabi_step_3(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.08, sigma=40dt, beta=0.25));
}
defcal rabi_step_4(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.1, sigma=40dt, beta=0.25));
}
defcal rabi_step_5(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.12, sigma=40dt, beta=0.25));
}
defcal rabi_step_6(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.14, sigma=40dt, beta=0.25));
}
defcal rabi_step_7(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.16, sigma=40dt, beta=0.25));
}
defcal rabi_step_8(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.18, sigma=40dt, beta=0.25));
}
defcal rabi_step_9(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.2, sigma=40dt, beta=0.25));
}
defcal rabi_step_10(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.22, sigma=40dt, beta=0.25));
}
defcal rabi_step_11(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.24, sigma=40dt, beta=0.25));
}
defcal rabi_step_12(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.26, sigma=40dt, beta=0.25));
}
defcal rabi_step_13(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.28, sigma=40dt, beta=0.25));
}
defcal rabi_step_14(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.3, sigma=40dt, beta=0.25));
}
defcal rabi_step_15(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.32, sigma=40dt, beta=0.25));
}
defcal rabi_step_16(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.34, sigma=40dt, beta=0.25));
}
defcal rabi_step_17(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.36, sigma=40dt, beta=0.25));
}
defcal rabi_step_18(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.38, sigma=40dt, beta=0.25));
}
defcal rabi_step_19(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.4, sigma=40dt, beta=0.25));
}
defcal rabi_step_20(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.42, sigma=40dt, beta=0.25));
}
defcal rabi_step_21(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.44, sigma=40dt, beta=0.25));
}
defcal rabi_step_22(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.46, sigma=40dt, beta=0.25));
}
defcal rabi_step_23(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.48, sigma=40dt, beta=0.25));
}
defcal rabi_step_24(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.5, sigma=40dt, beta=0.25));
}
defcal rabi_step_25(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.52, sigma=40dt, beta=0.25));
}
defcal rabi_step_26(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.54, sigma=40dt, beta=0.25));
}
defcal rabi_step_27(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.56, sigma=40dt, beta=0.25));
}
defcal rabi_step_28(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.58, sigma=40dt, beta=0.25));
}
defcal rabi_step_29(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.6, sigma=40dt, beta=0.25));
}
defcal rabi_step_30(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.62, sigma=40dt, beta=0.25));
}
defcal rabi_step_31(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.64, sigma=40dt, beta=0.25));
}
defcal rabi_step_32(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.66, sigma=40dt, beta=0.25));
}
defcal rabi_step_33(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.68, sigma=40dt, beta=0.25));
}
defcal rabi_step_34(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.7, sigma=40dt, beta=0.25));
}
defcal rabi_step_35(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.72, sigma=40dt, beta=0.25));
}
defcal rabi_step_36(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.74, sigma=40dt, beta=0.25));
}
defcal rabi_step_37(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.76, sigma=40dt, beta=0.25));
}
defcal rabi_step_38(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.78, sigma=40dt, beta=0.25));
}
defcal rabi_step_39(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.8, sigma=40dt, beta=0.25));
}
defcal rabi_step_40(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.82, sigma=40dt, beta=0.25));
}
defcal rabi_step_41(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.84, sigma=40dt, beta=0.25));
}
defcal rabi_step_42(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.86, sigma=40dt, beta=0.25));
}
defcal rabi_step_43(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.88, sigma=40dt, beta=0.25));
}
defcal rabi_step_44(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.9, sigma=40dt, beta=0.25));
}
defcal rabi_step_45(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.92, sigma=40dt, beta=0.25));
}
defcal rabi_step_46(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.94, sigma=40dt, beta=0.25));
}
defcal rabi_step_47(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.96, sigma=40dt, beta=0.25));
}
defcal rabi_step_48(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=0.98, sigma=40dt, beta=0.25));
}
defcal rabi_step_49(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=1.0, sigma=40dt, beta=0.25));
}

qubit $0;
bit[50] rabi_outcomes;

// Amplitude step 1
reset $0;
rx(pi*0.0) $0;
delay[20ns] $0;
rabi_outcomes[0] = measure $0;

// Amplitude step 2
reset $0;
rx(pi*0.04) $0;
delay[20ns] $0;
rabi_outcomes[1] = measure $0;

// Amplitude step 3
reset $0;
rx(pi*0.08) $0;
delay[20ns] $0;
rabi_outcomes[2] = measure $0;

// Amplitude step 4
reset $0;
rx(pi*0.12) $0;
delay[20ns] $0;
rabi_outcomes[3] = measure $0;

// Amplitude step 5
reset $0;
rx(pi*0.16) $0;
delay[20ns] $0;
rabi_outcomes[4] = measure $0;

// Amplitude step 6
reset $0;
rx(pi*0.2) $0;
delay[20ns] $0;
rabi_outcomes[5] = measure $0;

// Amplitude step 7
reset $0;
rx(pi*0.24) $0;
delay[20ns] $0;
rabi_outcomes[6] = measure $0;

// Amplitude step 8
reset $0;
rx(pi*0.28) $0;
delay[20ns] $0;
rabi_outcomes[7] = measure $0;

// Amplitude step 9
reset $0;
rx(pi*0.32) $0;
delay[20ns] $0;
rabi_outcomes[8] = measure $0;

// Amplitude step 10
reset $0;
rx(pi*0.36) $0;
delay[20ns] $0;
rabi_outcomes[9] = measure $0;

// Amplitude step 11
reset $0;
rx(pi*0.4) $0;
delay[20ns] $0;
rabi_outcomes[10] = measure $0;

// Amplitude step 12
reset $0;
rx(pi*0.44) $0;
delay[20ns] $0;
rabi_outcomes[11] = measure $0;

// Amplitude step 13
reset $0;
rx(pi*0.48) $0;
delay[20ns] $0;
rabi_outcomes[12] = measure $0;

// Amplitude step 14
reset $0;
rx(pi*0.52) $0;
delay[20ns] $0;
rabi_outcomes[13] = measure $0;

// Amplitude step 15
reset $0;
rx(pi*0.56) $0;
delay[20ns] $0;
rabi_outcomes[14] = measure $0;

// Amplitude step 16
reset $0;
rx(pi*0.6) $0;
delay[20ns] $0;
rabi_outcomes[15] = measure $0;

// Amplitude step 17
reset $0;
rx(pi*0.64) $0;
delay[20ns] $0;
rabi_outcomes[16] = measure $0;

// Amplitude step 18
reset $0;
rx(pi*0.68) $0;
delay[20ns] $0;
rabi_outcomes[17] = measure $0;

// Amplitude step 19
reset $0;
rx(pi*0.72) $0;
delay[20ns] $0;
rabi_outcomes[18] = measure $0;

// Amplitude step 20
reset $0;
rx(pi*0.76) $0;
delay[20ns] $0;
rabi_outcomes[19] = measure $0;

// Amplitude step 21
reset $0;
rx(pi*0.8) $0;
delay[20ns] $0;
rabi_outcomes[20] = measure $0;

// Amplitude step 22
reset $0;
rx(pi*0.84) $0;
delay[20ns] $0;
rabi_outcomes[21] = measure $0;

// Amplitude step 23
reset $0;
rx(pi*0.88) $0;
delay[20ns] $0;
rabi_outcomes[22] = measure $0;

// Amplitude step 24
reset $0;
rx(pi*0.92) $0;
delay[20ns] $0;
rabi_outcomes[23] = measure $0;

// Amplitude step 25
reset $0;
rx(pi*0.96) $0;
delay[20ns] $0;
rabi_outcomes[24] = measure $0;

// Amplitude step 26
reset $0;
rx(pi*1.0) $0;
delay[20ns] $0;
rabi_outcomes[25] = measure $0;

// Amplitude step 27
reset $0;
rx(pi*1.04) $0;
delay[20ns] $0;
rabi_outcomes[26] = measure $0;

// Amplitude step 28
reset $0;
rx(pi*1.08) $0;
delay[20ns] $0;
rabi_outcomes[27] = measure $0;

// Amplitude step 29
reset $0;
rx(pi*1.12) $0;
delay[20ns] $0;
rabi_outcomes[28] = measure $0;

// Amplitude step 30
reset $0;
rx(pi*1.16) $0;
delay[20ns] $0;
rabi_outcomes[29] = measure $0;

// Amplitude step 31
reset $0;
rx(pi*1.2) $0;
delay[20ns] $0;
rabi_outcomes[30] = measure $0;

// Amplitude step 32
reset $0;
rx(pi*1.24) $0;
delay[20ns] $0;
rabi_outcomes[31] = measure $0;

// Amplitude step 33
reset $0;
rx(pi*1.28) $0;
delay[20ns] $0;
rabi_outcomes[32] = measure $0;

// Amplitude step 34
reset $0;
rx(pi*1.32) $0;
delay[20ns] $0;
rabi_outcomes[33] = measure $0;

// Amplitude step 35
reset $0;
rx(pi*1.36) $0;
delay[20ns] $0;
rabi_outcomes[34] = measure $0;

// Amplitude step 36
reset $0;
rx(pi*1.4000000000000001) $0;
delay[20ns] $0;
rabi_outcomes[35] = measure $0;

// Amplitude step 37
reset $0;
rx(pi*1.44) $0;
delay[20ns] $0;
rabi_outcomes[36] = measure $0;

// Amplitude step 38
reset $0;
rx(pi*1.48) $0;
delay[20ns] $0;
rabi_outcomes[37] = measure $0;

// Amplitude step 39
reset $0;
rx(pi*1.52) $0;
delay[20ns] $0;
rabi_outcomes[38] = measure $0;

// Amplitude step 40
reset $0;
rx(pi*1.56) $0;
delay[20ns] $0;
rabi_outcomes[39] = measure $0;

// Amplitude step 41
reset $0;
rx(pi*1.6) $0;
delay[20ns] $0;
rabi_outcomes[40] = measure $0;

// Amplitude step 42
reset $0;
rx(pi*1.6400000000000001) $0;
delay[20ns] $0;
rabi_outcomes[41] = measure $0;

// Amplitude step 43
reset $0;
rx(pi*1.68) $0;
delay[20ns] $0;
rabi_outcomes[42] = measure $0;

// Amplitude step 44
reset $0;
rx(pi*1.72) $0;
delay[20ns] $0;
rabi_outcomes[43] = measure $0;

// Amplitude step 45
reset $0;
rx(pi*1.76) $0;
delay[20ns] $0;
rabi_outcomes[44] = measure $0;

// Amplitude step 46
reset $0;
rx(pi*1.8) $0;
delay[20ns] $0;
rabi_outcomes[45] = measure $0;

// Amplitude step 47
reset $0;
rx(pi*1.84) $0;
delay[20ns] $0;
rabi_outcomes[46] = measure $0;

// Amplitude step 48
reset $0;
rx(pi*1.8800000000000001) $0;
delay[20ns] $0;
rabi_outcomes[47] = measure $0;

// Amplitude step 49
reset $0;
rx(pi*1.92) $0;
delay[20ns] $0;
rabi_outcomes[48] = measure $0;

// Amplitude step 50
reset $0;
rx(pi*1.96) $0;
delay[20ns] $0;
rabi_outcomes[49] = measure $0;
