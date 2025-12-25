# Common Source NMOS Amplifier — LTspice

This README documents the LTspice analysis of a **common-source NMOS amplifier**, implemented using a **netlist-only workflow** as preparation for HSPICE-based analog design.

The same circuit topology was used for DC operating point, transient, and AC analyses.

---

## Circuit Topology

The common-source amplifier circuit used for this analysis is shown below:

![Common Source Amplifier Circuit](CS_circuit.png)

---

## DC Operating Point Analysis (.op)

A DC operating point analysis was performed to verify correct biasing and saturation-region operation of the NMOS transistor.

Extracted node voltages:
- Gate voltage (VG) = 0 V
- Source voltage (VS) = −0.669969 V
- Drain voltage (VD) = 2.75571 V

Derived quantities:
- VGS = 0.669969 V
- VDS = 3.42568 V

Saturation condition:
- VDS > (VGS − VT)

This condition is satisfied, confirming that the NMOS transistor operates in the **saturation region** at the chosen bias point.

---

## Transient Analysis (.tran)

- A small-signal sinusoidal input of **10 mV amplitude** was applied at the gate.
- The output waveform is sinusoidal and free from distortion.
- A clear **180° phase inversion** is observed between input and output.
- The output amplitude is approximately **3–3.5 times** the input amplitude.

The transient response confirms correct time-domain operation and voltage amplification of the common-source stage.

---

## AC Analysis (.ac)

AC analysis was performed using an input source with **AC = 1 V**.

Measured results:
- Midband voltage gain ≈ **10.38 dB** (≈ **3.3 V/V**)
- Lower cutoff frequency ≈ **8 Hz**
- Phase response shows approximately **−180° inversion** in the midband

The gain response exhibits a flat midband region. The low-frequency roll-off is due to the input coupling capacitor, output coupling capacitor, and source bypass capacitor.

---

## Conclusions

- The NMOS transistor is correctly biased and operates in the saturation region.
- The circuit exhibits clear voltage amplification with 180° phase inversion.
- DC, transient, and AC analyses are mutually consistent.
- The LTspice implementation is validated and suitable for migration to **HSPICE (90 nm)**.
