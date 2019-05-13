OPENQASM 3.0;
defcalgrammar "openpulse";

// DRAG Derivative Removal by Adiabatic Gate Leakage Sweep

defcal drag_pulse_beta_0() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.5));
}
defcal drag_pulse_beta_1() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.475));
}
defcal drag_pulse_beta_2() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.45));
}
defcal drag_pulse_beta_3() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.425));
}
defcal drag_pulse_beta_4() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.4));
}
defcal drag_pulse_beta_5() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.375));
}
defcal drag_pulse_beta_6() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.35));
}
defcal drag_pulse_beta_7() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.325));
}
defcal drag_pulse_beta_8() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.3));
}
defcal drag_pulse_beta_9() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.275));
}
defcal drag_pulse_beta_10() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.25));
}
defcal drag_pulse_beta_11() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.225));
}
defcal drag_pulse_beta_12() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.2));
}
defcal drag_pulse_beta_13() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.175));
}
defcal drag_pulse_beta_14() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.15));
}
defcal drag_pulse_beta_15() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.125));
}
defcal drag_pulse_beta_16() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.1));
}
defcal drag_pulse_beta_17() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.075));
}
defcal drag_pulse_beta_18() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.05));
}
defcal drag_pulse_beta_19() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=-0.025));
}
defcal drag_pulse_beta_20() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.0));
}
defcal drag_pulse_beta_21() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.025));
}
defcal drag_pulse_beta_22() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.05));
}
defcal drag_pulse_beta_23() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.075));
}
defcal drag_pulse_beta_24() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.1));
}
defcal drag_pulse_beta_25() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.125));
}
defcal drag_pulse_beta_26() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.15));
}
defcal drag_pulse_beta_27() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.175));
}
defcal drag_pulse_beta_28() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.2));
}
defcal drag_pulse_beta_29() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.225));
}
defcal drag_pulse_beta_30() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.25));
}
defcal drag_pulse_beta_31() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.275));
}
defcal drag_pulse_beta_32() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.3));
}
defcal drag_pulse_beta_33() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.325));
}
defcal drag_pulse_beta_34() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.35));
}
defcal drag_pulse_beta_35() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.375));
}
defcal drag_pulse_beta_36() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.4));
}
defcal drag_pulse_beta_37() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.425));
}
defcal drag_pulse_beta_38() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.45));
}
defcal drag_pulse_beta_39() $0 {
    play(tx0, drag(duration=160dt, amp=0.45, sigma=40dt, beta=0.475));
}

qubit $0;
bit[40] drag_outcomes;

// DRAG beta index 0
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[0] = measure $0;
// DRAG beta index 1
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[1] = measure $0;
// DRAG beta index 2
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[2] = measure $0;
// DRAG beta index 3
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[3] = measure $0;
// DRAG beta index 4
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[4] = measure $0;
// DRAG beta index 5
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[5] = measure $0;
// DRAG beta index 6
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[6] = measure $0;
// DRAG beta index 7
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[7] = measure $0;
// DRAG beta index 8
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[8] = measure $0;
// DRAG beta index 9
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[9] = measure $0;
// DRAG beta index 10
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[10] = measure $0;
// DRAG beta index 11
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[11] = measure $0;
// DRAG beta index 12
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[12] = measure $0;
// DRAG beta index 13
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[13] = measure $0;
// DRAG beta index 14
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[14] = measure $0;
// DRAG beta index 15
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[15] = measure $0;
// DRAG beta index 16
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[16] = measure $0;
// DRAG beta index 17
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[17] = measure $0;
// DRAG beta index 18
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[18] = measure $0;
// DRAG beta index 19
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[19] = measure $0;
// DRAG beta index 20
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[20] = measure $0;
// DRAG beta index 21
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[21] = measure $0;
// DRAG beta index 22
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[22] = measure $0;
// DRAG beta index 23
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[23] = measure $0;
// DRAG beta index 24
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[24] = measure $0;
// DRAG beta index 25
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[25] = measure $0;
// DRAG beta index 26
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[26] = measure $0;
// DRAG beta index 27
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[27] = measure $0;
// DRAG beta index 28
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[28] = measure $0;
// DRAG beta index 29
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[29] = measure $0;
// DRAG beta index 30
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[30] = measure $0;
// DRAG beta index 31
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[31] = measure $0;
// DRAG beta index 32
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[32] = measure $0;
// DRAG beta index 33
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[33] = measure $0;
// DRAG beta index 34
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[34] = measure $0;
// DRAG beta index 35
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[35] = measure $0;
// DRAG beta index 36
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[36] = measure $0;
// DRAG beta index 37
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[37] = measure $0;
// DRAG beta index 38
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[38] = measure $0;
// DRAG beta index 39
reset $0;
x $0;
x $0;
rx(pi/2) $0;
drag_outcomes[39] = measure $0;