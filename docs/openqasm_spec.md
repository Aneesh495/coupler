# OpenQASM 3.0 Language & Execution Specification

Coupler implements the OpenQASM 3.0 specification with extensions for pulse calibration, real-time feedback, and hardware topology mapping.

## Language Dialect

### 1. Version Declarations and Includes
OpenQASM 3.0 files begin with an optional header specifying the dialect version:
```qasm
OPENQASM 3.0;
include "stdgates.inc";
```

### 2. Quantum and Classical Types
- **Quantum Types**:
  - `qubit q;` (single virtual qubit)
  - `qubit[N] data;` (N-qubit register)
  - `$0`, `$1`, `$12` (direct physical hardware qubit references)
- **Classical Scalar and Array Types**:
  - `bit c;` and `bit[N] syn;` (single bits and bitstrings)
  - `int[W] n;` (signed integer of width W, default 32)
  - `uint[W] u;` (unsigned integer of width W, default 32)
  - `float[W] f;` (IEEE-754 floating point number, default 64)
  - `angle[W] theta;` (fixed-point angle modulo 2*pi)
  - `bool flag;` (boolean condition flag)
  - `duration d;` (physical time literal, e.g. `160dt`, `20ns`)
  - `stretch s;` (dynamic timing interval for pulse alignment)

### 3. Gate Applications and Modifiers
Standard gate applications:
```qasm
h q[0];
cx q[0], q[1];
rz(pi / 4) q[0];
u3(0.1, 0.2, 0.3) q[1];
```

Quantum gate modifiers:
- `ctrl @ gate q_ctrl, q_target;` (controlled gate)
- `negctrl @ gate q_ctrl, q_target;` (negative-controlled gate)
- `inv @ gate q;` (Hermitian adjoint / inverse gate)
- `pow(n) @ gate q;` (gate raised to power n)

### 4. Dynamic Control Flow
Mid-circuit measurement and conditional execution:
```qasm
syn[0] = measure ancilla[0];

if (syn[0] == 1) {
    x data[0];
} else {
    z data[0];
}
```

Loops and iteration:
```qasm
for i in [0:7] {
    h q[i];
}
```

### 5. Pulse Calibration Extensions
Pulse-level definitions via `defcal` blocks:
```qasm
defcalgrammar "openpulse";

defcal rabi_drive(angle[32] amp) $0 {
    play(tx0, drag(duration=160dt, amp=amp, sigma=40dt, beta=0.2));
}
```
