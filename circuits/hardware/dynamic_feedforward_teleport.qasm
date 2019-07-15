OPENQASM 3.0;
include "stdgates.inc";

// Dynamic Real-Time Mid-Circuit Feedforward Quantum Teleportation Protocol

qubit q_src;
qubit bell_a;
qubit bell_b;
bit m_src;
bit m_bell;
bit verified_target;

// Teleportation Trial 1
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 2
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 3
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 4
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 5
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 6
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 7
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 8
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 9
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 10
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 11
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 12
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 13
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 14
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 15
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 16
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 17
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 18
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 19
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 20
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 21
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 22
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 23
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 24
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 25
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 26
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 27
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 28
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 29
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;

// Teleportation Trial 30
reset q_src;
reset bell_a;
reset bell_b;
// Prepare arbitrary state on source: |psi> = Ry(pi/3)|0>
ry(pi/3) q_src;
// Create EPR Bell pair between Alice (bell_a) and Bob (bell_b)
h bell_a;
cx bell_a, bell_b;
barrier q_src, bell_a, bell_b;

// Bell measurement on source and bell_a
cx q_src, bell_a;
h q_src;
m_src = measure q_src;
m_bell = measure bell_a;
barrier bell_b;

// Real-time classical feedforward corrections on Bob's qubit
if (m_bell == 1) {
    x bell_b;
}
if (m_src == 1) {
    z bell_b;
}
barrier bell_b;
verified_target = measure bell_b;
