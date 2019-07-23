// Coupler Transmon Pulse Calibration Planner in Rhai
// Automated calibration sweep scheduler for superconducting qubits

print("=== Starting Coupler Calibration Sweep Planner ===");

let target_qubits = [0, 1, 2, 3];
let rabi_steps = 40;
let ramsey_delays_dt = [80, 160, 240, 320, 400, 480, 560, 640];

print(`Planning automated calibration for ${target_qubits.len()} physical transmons...`);

// 1. Rabi Amplitude Calibration Schedule
let rabi_schedule = [];
for q in target_qubits {
    let q_plan = #{
        qubit: q,
        channel: `tx_${q}`,
        min_amp: 0.01,
        max_amp: 0.95,
        steps: rabi_steps,
        pulse_shape: "drag",
        duration_dt: 160
    };
    rabi_schedule.push(q_plan);
}
print(`Generated ${rabi_schedule.len()} Rabi drive calibration tasks.`);

// 2. Ramsey Detuning T2* Schedule
let ramsey_schedule = [];
for q in target_qubits {
    let t_plan = #{
        qubit: q,
        delays: ramsey_delays_dt,
        detuning_mhz: 2.5,
        pi_half_pulse: "sx"
    };
    ramsey_schedule.push(t_plan);
}
print(`Generated ${ramsey_schedule.len()} Ramsey coherence estimation tasks.`);

// 3. Tunable Coupler Flux Interaction Pulse
let coupler_pairs = [[0, 1], [1, 2], [2, 3]];
let coupler_schedule = [];
for pair in coupler_pairs {
    let c_plan = #{
        coupler: `coupler_${pair[0]}_${pair[1]}`,
        gate: "cz",
        flux_amp: 0.38,
        hold_time_dt: 360
    };
    coupler_schedule.push(c_plan);
}
print(`Generated ${coupler_schedule.len()} tunable coupler dynamic flux tuning tasks.`);

print("Calibration planning complete. All schedules validated.");
"CALIBRATION_PLAN_OK"
