OPENQASM 3.0;
defcalgrammar "openpulse";

// Dispersive Readout Resonator Spectroscopy and Dynamic Demodulation

cal {
    extern port ro_rx;
    extern port ro_tx;
}

defcal readout_freq_point_0() $0 {
    set_phase(ro_tx, 0.0);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[0]);
}
defcal readout_freq_point_1() $0 {
    set_phase(ro_tx, 0.1);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[1]);
}
defcal readout_freq_point_2() $0 {
    set_phase(ro_tx, 0.2);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[2]);
}
defcal readout_freq_point_3() $0 {
    set_phase(ro_tx, 0.30000000000000004);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[3]);
}
defcal readout_freq_point_4() $0 {
    set_phase(ro_tx, 0.4);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[4]);
}
defcal readout_freq_point_5() $0 {
    set_phase(ro_tx, 0.5);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[5]);
}
defcal readout_freq_point_6() $0 {
    set_phase(ro_tx, 0.6000000000000001);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[6]);
}
defcal readout_freq_point_7() $0 {
    set_phase(ro_tx, 0.7000000000000001);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[7]);
}
defcal readout_freq_point_8() $0 {
    set_phase(ro_tx, 0.8);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[8]);
}
defcal readout_freq_point_9() $0 {
    set_phase(ro_tx, 0.9);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[9]);
}
defcal readout_freq_point_10() $0 {
    set_phase(ro_tx, 1.0);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[10]);
}
defcal readout_freq_point_11() $0 {
    set_phase(ro_tx, 1.1);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[11]);
}
defcal readout_freq_point_12() $0 {
    set_phase(ro_tx, 1.2000000000000002);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[12]);
}
defcal readout_freq_point_13() $0 {
    set_phase(ro_tx, 1.3);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[13]);
}
defcal readout_freq_point_14() $0 {
    set_phase(ro_tx, 1.4000000000000001);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[14]);
}
defcal readout_freq_point_15() $0 {
    set_phase(ro_tx, 1.5);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[15]);
}
defcal readout_freq_point_16() $0 {
    set_phase(ro_tx, 1.6);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[16]);
}
defcal readout_freq_point_17() $0 {
    set_phase(ro_tx, 1.7000000000000002);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[17]);
}
defcal readout_freq_point_18() $0 {
    set_phase(ro_tx, 1.8);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[18]);
}
defcal readout_freq_point_19() $0 {
    set_phase(ro_tx, 1.9000000000000001);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[19]);
}
defcal readout_freq_point_20() $0 {
    set_phase(ro_tx, 2.0);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[20]);
}
defcal readout_freq_point_21() $0 {
    set_phase(ro_tx, 2.1);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[21]);
}
defcal readout_freq_point_22() $0 {
    set_phase(ro_tx, 2.2);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[22]);
}
defcal readout_freq_point_23() $0 {
    set_phase(ro_tx, 2.3000000000000003);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[23]);
}
defcal readout_freq_point_24() $0 {
    set_phase(ro_tx, 2.4000000000000004);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[24]);
}
defcal readout_freq_point_25() $0 {
    set_phase(ro_tx, 2.5);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[25]);
}
defcal readout_freq_point_26() $0 {
    set_phase(ro_tx, 2.6);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[26]);
}
defcal readout_freq_point_27() $0 {
    set_phase(ro_tx, 2.7);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[27]);
}
defcal readout_freq_point_28() $0 {
    set_phase(ro_tx, 2.8000000000000003);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[28]);
}
defcal readout_freq_point_29() $0 {
    set_phase(ro_tx, 2.9000000000000004);
    play(ro_tx, square(duration=1200dt, amp=0.3));
    capture(ro_rx, kernel=boxcar(duration=1200dt), c[29]);
}

qubit $0;
bit[30] c;

reset $0;
delay[100dt] $0;
c[0] = measure $0;
reset $0;
delay[100dt] $0;
c[1] = measure $0;
reset $0;
delay[100dt] $0;
c[2] = measure $0;
reset $0;
delay[100dt] $0;
c[3] = measure $0;
reset $0;
delay[100dt] $0;
c[4] = measure $0;
reset $0;
delay[100dt] $0;
c[5] = measure $0;
reset $0;
delay[100dt] $0;
c[6] = measure $0;
reset $0;
delay[100dt] $0;
c[7] = measure $0;
reset $0;
delay[100dt] $0;
c[8] = measure $0;
reset $0;
delay[100dt] $0;
c[9] = measure $0;
reset $0;
delay[100dt] $0;
c[10] = measure $0;
reset $0;
delay[100dt] $0;
c[11] = measure $0;
reset $0;
delay[100dt] $0;
c[12] = measure $0;
reset $0;
delay[100dt] $0;
c[13] = measure $0;
reset $0;
delay[100dt] $0;
c[14] = measure $0;
reset $0;
delay[100dt] $0;
c[15] = measure $0;
reset $0;
delay[100dt] $0;
c[16] = measure $0;
reset $0;
delay[100dt] $0;
c[17] = measure $0;
reset $0;
delay[100dt] $0;
c[18] = measure $0;
reset $0;
delay[100dt] $0;
c[19] = measure $0;
reset $0;
delay[100dt] $0;
c[20] = measure $0;
reset $0;
delay[100dt] $0;
c[21] = measure $0;
reset $0;
delay[100dt] $0;
c[22] = measure $0;
reset $0;
delay[100dt] $0;
c[23] = measure $0;
reset $0;
delay[100dt] $0;
c[24] = measure $0;
reset $0;
delay[100dt] $0;
c[25] = measure $0;
reset $0;
delay[100dt] $0;
c[26] = measure $0;
reset $0;
delay[100dt] $0;
c[27] = measure $0;
reset $0;
delay[100dt] $0;
c[28] = measure $0;
reset $0;
delay[100dt] $0;
c[29] = measure $0;