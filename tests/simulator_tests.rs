use coupler::gates::GateKind;
use coupler::simulator::statevector::StateVector;

#[test]
fn test_ghz_3qubit_statevector() {
    let mut sim = StateVector::new(3);
    let h = GateKind::H.unitary_1q(&[]).unwrap();
    sim.apply_1q_matrix(0, &h);
    sim.apply_cx(0, 1);
    sim.apply_cx(1, 2);

    let probs = sim.probabilities();
    // GHZ state (|000> + |111>)/sqrt(2)
    assert!((probs[0] - 0.5).abs() < 1e-10); // |000>
    assert!((probs[7] - 0.5).abs() < 1e-10); // |111>
    for i in 1..7 {
        assert!(probs[i].abs() < 1e-10);
    }
}

#[test]
fn test_qft_2qubit_uniform_superposition() {
    let mut sim = StateVector::new(2);
    let h = GateKind::H.unitary_1q(&[]).unwrap();
    sim.apply_1q_matrix(0, &h);
    sim.apply_1q_matrix(1, &h);

    let probs = sim.probabilities();
    for p in probs {
        assert!((p - 0.25).abs() < 1e-10);
    }
}

#[test]
fn test_probability_conservation() {
    let mut sim = StateVector::new(4);
    let h = GateKind::H.unitary_1q(&[]).unwrap();
    let rx = GateKind::Rx.unitary_1q(&[0.785]).unwrap();
    let ry = GateKind::Ry.unitary_1q(&[1.234]).unwrap();

    sim.apply_1q_matrix(0, &h);
    sim.apply_1q_matrix(1, &rx);
    sim.apply_1q_matrix(2, &ry);
    sim.apply_cx(0, 1);
    sim.apply_cz(1, 2);
    sim.apply_swap(2, 3);

    let sum_probs: f64 = sim.probabilities().iter().sum();
    assert!((sum_probs - 1.0).abs() < 1e-10);
}
