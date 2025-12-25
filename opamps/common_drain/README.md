# Common Drain Amplifier (Source Follower) — LTspice

## Overview
This section documents the design and simulation of a **Common Drain (CD) amplifier**, also called a **Source Follower**, using LTspice.  
The common-drain configuration provides near-unity voltage gain, high input impedance, and low output impedance, making it suitable for buffering applications.

---

## Circuit Description
- Input is applied at the gate through a coupling capacitor.
- Output is taken from the source through a coupling capacitor.
- Drain is connected to the supply and acts as AC ground.
- A constant current source is used for biasing.
- Bulk is tied to source to eliminate body effect.

---

## DC Operating Point Analysis

From DC operating-point simulation:

- Gate voltage = 0 V  
- Source voltage = −0.6 V  
- Drain voltage = 1.8 V  
- Drain current = 200 µA  
- Bulk current ≈ 0 A  

### Region of Operation
- Gate-to-source voltage is about 0.6 V.
- Overdrive voltage is positive.
- Drain-to-source voltage is much larger than the overdrive voltage.

**Conclusion:**  
The MOSFET operates firmly in saturation with correct biasing and no body effect.

---

## AC Analysis

- Gain is obtained by plotting V(vo) / V(vi).
- Midband voltage gain is approximately 0.87 (about −1.2 dB).
- Phase in the midband region is approximately 0 degrees, indicating no phase inversion.
- The lower cutoff frequency is around 14 Hz.

### Interpretation
- Gain is slightly less than unity due to finite transconductance and load resistance.
- Low-frequency roll-off is caused by the input and output coupling capacitors.
- High-frequency response remains flat due to absence of Miller effect.

---

## Transient Analysis

- A small-amplitude sinusoidal input is applied.
- The output waveform follows the input without inversion.
- Output amplitude is slightly lower than input amplitude.
- No distortion is observed.

**Conclusion:**  
Transient response confirms proper source follower operation in the small-signal region.

---

## Key Characteristics
- Voltage gain slightly less than unity
- No phase inversion
- High input impedance
- Low output impedance
- Suitable for buffering and impedance matching

---

## Conclusion
DC, AC, and transient simulations confirm correct common-drain amplifier operation.  
The circuit behaves as a source follower, providing stable biasing, near-unity gain, and effective buffering.
