# Transmon Physics & Microwave Pulse Calibration

Coupler models the physical microwave control plane and Hamiltonian dynamics of superconducting transmon qubits and tunable couplers.

## Transmon Qubit Hamiltonian

A transmon qubit is a weakly anharmonic LC oscillator formed by shunting a Josephson junction with a large planar capacitor:
$$H_0 = 4 E_C (n - n_g)^2 - E_J \cos(\phi)$$

In the transmon regime ($E_J / E_C \gg 1$, typically 50 to 80), the transition frequency and negative anharmonicity are given by:
$$\omega_{01} \approx \sqrt{8 E_J E_C} - E_C$$
$$\alpha = \omega_{12} - \omega_{01} \approx -E_C$$
Typical physical parameters: $\omega_{01} / 2\pi \approx 4.5 - 5.5\text{ GHz}$, $\alpha / 2\pi \approx -200\text{ to } -350\text{ MHz}$.

## Derivative Removal by Adiabatic Gate (DRAG)

To suppress spectral leakage into the non-computational $|2\rangle$ state and phase errors caused by Stark shifts during fast single-qubit gates, Coupler implements DRAG pulse envelopes:
$$\Omega(t) = \Omega_x(t) + i \Omega_y(t)$$
$$\Omega_y(t) = -\frac{\dot{\Omega}_x(t)}{\alpha} \beta$$
where $\Omega_x(t)$ is a Gaussian envelope and $\beta$ is a calibrated dimensionless parameter (nominally 0.5 to 1.0).

## Dispersive Cavity Readout

Qubit state readout is performed by coupling each transmon to an off-resonant superconducting coplanar waveguide (CPW) resonator in the dispersive regime ($|\Delta| = |\omega_{01} - \omega_r| \gg g$):
$$H_{\text{disp}} = \hbar (\omega_r + \chi \sigma_z) a^\dagger a + \frac{\hbar \omega_{01}}{2} \sigma_z$$
where $\chi = g^2 / \Delta$ is the dispersive shift. Measuring the phase and amplitude of the transmitted microwave tone discriminates between states $|0\rangle$ and $|1\rangle$.

## Tunable Coupler Dynamic Exchange Tuning

Coupler models tunable transmon-transmon couplers (e.g. gmon or fluxonium couplers). By modulating external magnetic flux $\Phi_{\text{ext}}(t)$ through a SQUID loop in the coupler, the effective exchange coupling $g_{\text{eff}}(t)$ between adjacent computational transmons is dynamically tuned:
$$g_{\text{eff}}(\Phi) = g_{12} + \frac{g_{1c} g_{2c}}{\Delta_c(\Phi)}$$
- **Idle State**: $g_{\text{eff}} = 0$ (destructive interference cancels residual static ZZ crosstalk).
- **Gate Execution**: A fast flux pulse brings $g_{\text{eff}}$ to ~10-25 MHz, executing a Controlled-Z (CZ) or iSWAP gate in 20 to 50 ns.
