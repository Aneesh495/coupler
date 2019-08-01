// Procedural Surface Code Generator in Rhai
// Computes data/ancilla qubit counts, syndrome cycles, and schedule depths

print("=== Surface Code Fault-Tolerant Parameter Estimator ===");

let distances = [3, 5, 7, 9, 11];

for d in distances {
    let data_qubits = d * d;
    let ancillae_x = (d * d - 1) / 2;
    let ancillae_z = (d * d - 1) / 2;
    let total_qubits = data_qubits + ancillae_x + ancillae_z;
    let syndrome_rounds = d;
    let total_gates = syndrome_rounds * (ancillae_x * 6 + ancillae_z * 6);

    print(`Surface Code [[${data_qubits}, 1, ${d}]]:`);
    print(`  Physical Qubits:  ${total_qubits} (${data_qubits} data + ${ancillae_x + ancillae_z} ancillae)`);
    print(`  Extraction Cycles: ${syndrome_rounds}`);
    print(`  Estimated Gates:   ${total_gates}`);
}

"SURFACE_CODE_ESTIMATOR_OK"
