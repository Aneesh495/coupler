OPENQASM 3.0;
include "stdgates.inc";

// 15-to-1 Reed-Muller Magic T-State Distillation Factory
// Distills 15 raw noisy T-states |T> into 1 high-fidelity distilled T-state

qubit[15] factory;
bit[14] syndrome;
bit success_flag;

// Initialize 15 physical qubits with raw T-gates on |+> states
reset factory[0];
h factory[0];
rz(pi/4) factory[0];
reset factory[1];
h factory[1];
rz(pi/4) factory[1];
reset factory[2];
h factory[2];
rz(pi/4) factory[2];
reset factory[3];
h factory[3];
rz(pi/4) factory[3];
reset factory[4];
h factory[4];
rz(pi/4) factory[4];
reset factory[5];
h factory[5];
rz(pi/4) factory[5];
reset factory[6];
h factory[6];
rz(pi/4) factory[6];
reset factory[7];
h factory[7];
rz(pi/4) factory[7];
reset factory[8];
h factory[8];
rz(pi/4) factory[8];
reset factory[9];
h factory[9];
rz(pi/4) factory[9];
reset factory[10];
h factory[10];
rz(pi/4) factory[10];
reset factory[11];
h factory[11];
rz(pi/4) factory[11];
reset factory[12];
h factory[12];
rz(pi/4) factory[12];
reset factory[13];
h factory[13];
rz(pi/4) factory[13];
reset factory[14];
h factory[14];
rz(pi/4) factory[14];
barrier factory;

// Transversal parity check rounds via Reed-Muller decoding graph
// Parity check parity bit 1
cx factory[0], factory[1];
syndrome[0] = measure factory[1];
barrier factory;

// Parity check parity bit 2
cx factory[0], factory[2];
cx factory[1], factory[2];
syndrome[1] = measure factory[2];
barrier factory;

// Parity check parity bit 3
cx factory[0], factory[3];
cx factory[1], factory[3];
cx factory[2], factory[3];
syndrome[2] = measure factory[3];
barrier factory;

// Parity check parity bit 4
cx factory[0], factory[4];
cx factory[1], factory[4];
cx factory[2], factory[4];
cx factory[3], factory[4];
syndrome[3] = measure factory[4];
barrier factory;

// Parity check parity bit 5
cx factory[0], factory[5];
cx factory[1], factory[5];
cx factory[2], factory[5];
cx factory[3], factory[5];
cx factory[4], factory[5];
syndrome[4] = measure factory[5];
barrier factory;

// Parity check parity bit 6
cx factory[0], factory[6];
cx factory[1], factory[6];
cx factory[2], factory[6];
cx factory[3], factory[6];
cx factory[4], factory[6];
cx factory[5], factory[6];
syndrome[5] = measure factory[6];
barrier factory;

// Parity check parity bit 7
cx factory[0], factory[7];
cx factory[1], factory[7];
cx factory[2], factory[7];
cx factory[3], factory[7];
cx factory[4], factory[7];
cx factory[5], factory[7];
cx factory[6], factory[7];
syndrome[6] = measure factory[7];
barrier factory;

// Parity check parity bit 8
cx factory[0], factory[8];
cx factory[1], factory[8];
cx factory[2], factory[8];
cx factory[3], factory[8];
cx factory[4], factory[8];
cx factory[5], factory[8];
cx factory[6], factory[8];
cx factory[7], factory[8];
syndrome[7] = measure factory[8];
barrier factory;

// Parity check parity bit 9
cx factory[0], factory[9];
cx factory[1], factory[9];
cx factory[2], factory[9];
cx factory[3], factory[9];
cx factory[4], factory[9];
cx factory[5], factory[9];
cx factory[6], factory[9];
cx factory[7], factory[9];
cx factory[8], factory[9];
syndrome[8] = measure factory[9];
barrier factory;

// Parity check parity bit 10
cx factory[0], factory[10];
cx factory[1], factory[10];
cx factory[2], factory[10];
cx factory[3], factory[10];
cx factory[4], factory[10];
cx factory[5], factory[10];
cx factory[6], factory[10];
cx factory[7], factory[10];
cx factory[8], factory[10];
cx factory[9], factory[10];
syndrome[9] = measure factory[10];
barrier factory;

// Parity check parity bit 11
cx factory[0], factory[11];
cx factory[1], factory[11];
cx factory[2], factory[11];
cx factory[3], factory[11];
cx factory[4], factory[11];
cx factory[5], factory[11];
cx factory[6], factory[11];
cx factory[7], factory[11];
cx factory[8], factory[11];
cx factory[9], factory[11];
cx factory[10], factory[11];
syndrome[10] = measure factory[11];
barrier factory;

// Parity check parity bit 12
cx factory[0], factory[12];
cx factory[1], factory[12];
cx factory[2], factory[12];
cx factory[3], factory[12];
cx factory[4], factory[12];
cx factory[5], factory[12];
cx factory[6], factory[12];
cx factory[7], factory[12];
cx factory[8], factory[12];
cx factory[9], factory[12];
cx factory[10], factory[12];
cx factory[11], factory[12];
syndrome[11] = measure factory[12];
barrier factory;

// Parity check parity bit 13
cx factory[0], factory[13];
cx factory[1], factory[13];
cx factory[2], factory[13];
cx factory[3], factory[13];
cx factory[4], factory[13];
cx factory[5], factory[13];
cx factory[6], factory[13];
cx factory[7], factory[13];
cx factory[8], factory[13];
cx factory[9], factory[13];
cx factory[10], factory[13];
cx factory[11], factory[13];
cx factory[12], factory[13];
syndrome[12] = measure factory[13];
barrier factory;

// Parity check parity bit 14
cx factory[0], factory[14];
cx factory[1], factory[14];
cx factory[2], factory[14];
cx factory[3], factory[14];
cx factory[4], factory[14];
cx factory[5], factory[14];
cx factory[6], factory[14];
cx factory[7], factory[14];
cx factory[8], factory[14];
cx factory[9], factory[14];
cx factory[10], factory[14];
cx factory[11], factory[14];
cx factory[12], factory[14];
cx factory[13], factory[14];
syndrome[13] = measure factory[14];
barrier factory;

// Conditional recovery rotation on output logical qubit factory[0]
if (syndrome[0] == 1) {
    z factory[0];
}
if (syndrome[1] == 1) {
    x factory[0];
}