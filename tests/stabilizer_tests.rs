use coupler::simulator::stabilizer::StabilizerTableau;

#[test]
fn test_stabilizer_1000_qubits_scaling() {
    let n = 1000;
    let mut tab = StabilizerTableau::new(n);
    assert_eq!(tab.num_qubits, n);

    for i in 0..100 {
        tab.h(i);
        tab.cx(i, i + 1);
    }
}

#[test]
fn test_stabilizer_deterministic_outcome() {
    let mut tab = StabilizerTableau::new(2);
    // Initial state is |00>
    let m0 = tab.measure(0, false);
    let m1 = tab.measure(1, false);
    assert_eq!(m0, false);
    assert_eq!(m1, false);
}

#[test]
fn test_stabilizer_x_flips() {
    let mut tab = StabilizerTableau::new(1);
    tab.x(0);
    let m = tab.measure(0, false);
    assert_eq!(m, true);
}
