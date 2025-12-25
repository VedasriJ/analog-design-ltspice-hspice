# Common Drain Amplifier (Source Follower) — LTspice

## Overview
This section presents the design and simulation of a **Common-Drain (CD) amplifier**, also known as a **Source Follower**, using LTspice.  
The common-drain configuration provides **near-unity voltage gain**, **high input impedance**, and **low output impedance**, and is primarily used as a **buffer stage**.

---

## Circuit Description
- Input is applied at the **gate** through an input coupling capacitor.
- Output is taken from the **source** through an output coupling capacitor.
- Drain is connected to the supply and is at **AC ground**.
- A **constant current source** biases the MOSFET.
- **Bulk is tied to source** to eliminate body effect.

---

## DC Operating Point Analysis

From operating-point simulation:

- Gate voltage:  
  \( V_G = 0 \, \text{V} \)
- Source voltage:  
  \( V_S = -0.6 \, \text{V} \)
- Drain voltage:  
  \( V_D = 1.8 \, \text{V} \)
- Drain current:  
  \( I_D = 200 \, \mu\text{A} \)
- Bulk current:  
  \( I_B \approx 0 \)

### Region of Operation
\[
V_{GS} = V_G - V_S = 0.6 \, \text{V}
\]

With \( V_T \approx 0.45 \, \text{V} \), the overdrive voltage is:
\[
V_{OV} = V_{GS} - V_T \approx 0.15 \, \text{V}
\]

\[
V_{DS} = V_D - V_S = 2.4 \, \text{V} \gg V_{OV}
\]

**Conclusion:**  
The MOSFET operates firmly in **saturation**, with correct biasing and zero body effect.

---

## AC Analysis

- The AC gain is obtained by plotting \( V(vo)/V(vi) \).
- Midband voltage gain:
  \[
  A_v \approx 0.87 \; (\approx -1.2 \, \text{dB})
  \]
- Phase in midband is approximately **0°**, indicating **no phase inversion**.
- The lower cutoff frequency is approximately:
  \[
  f_L \approx 14 \, \text{Hz}
  \]

### Interpretation
- Gain slightly less than unity due to finite \( g_m \) and load resistance.
- Low-frequency roll-off is due to **input and output coupling capacitors**.
- High-frequency response remains flat due to **absence of Miller effect**.

---

## Transient Analysis

- Input: sinusoidal signal of small amplitude at 1 kHz.
- Output waveform follows the input **without inversion**.
- Output amplitude is slightly lower than input, consistent with AC gain.
- No distortion observed, confirming **small-signal operation**.

**Conclusion:**  
The circuit behaves as a source follower, preserving waveform shape while providing buffering.

---

## Key Characteristics

- Voltage gain: slightly less than unity
- Phase shift: 0°
- High input impedance
- Low output impedance
- Suitable for buffering and impedance matching

---

## Conclusion
DC, AC, and transient simulations confirm correct **common-drain (source follower)** operation. The MOSFET is properly biased in saturation, and the amplifier provides near-unity gain with no phase inversion, validating its use as an effective buffer stage.
