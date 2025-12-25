\# Common Source NMOS Amplifier — LTspice



This README documents the LTspice analysis of a \*\*common-source NMOS amplifier\*\*, implemented using a \*\*netlist-only workflow\*\* for HSPICE-oriented practice.



The same circuit topology is used for DC operating point, transient, and AC analyses.



---



\## DC Operating Point Analysis (.op)



A DC operating point analysis was performed to verify correct biasing and saturation-region operation of the NMOS transistor.



Extracted node voltages:

\- Gate voltage:  

&nbsp; \\( V\_G = 0 \\, \\text{V} \\)

\- Source voltage:  

&nbsp; \\( V\_S = -0.669969 \\, \\text{V} \\)

\- Drain voltage:  

&nbsp; \\( V\_D = 2.75571 \\, \\text{V} \\)



Derived quantities:

\- \\( V\_{GS} = 0.669969 \\, \\text{V} \\)

\- \\( V\_{DS} = 3.42568 \\, \\text{V} \\)



The saturation condition

\\\[

V\_{DS} > V\_{GS} - V\_T

\\]

is satisfied, confirming that the NMOS operates in the \*\*saturation region\*\* at the chosen bias point.



---



\## Transient Analysis (.tran)



\- A small-signal sinusoidal input of \*\*10 mV amplitude\*\* was applied.

\- The output waveform is sinusoidal and free from distortion.

\- A clear \*\*180° phase inversion\*\* is observed.

\- Output amplitude is approximately \*\*3–3.5×\*\* the input amplitude.



The transient response confirms correct time-domain operation and voltage amplification of the common-source stage.



---



\## AC Analysis (.ac)



AC analysis was performed with an input source of \*\*AC = 1 V\*\*.



Measured results:

\- Midband voltage gain:  

&nbsp; \*\*10.38 dB\*\* (≈ \*\*3.3 V/V\*\*)

\- Lower cutoff frequency:  

&nbsp; \*\*≈ 8 Hz\*\*

\- Midband phase:  

&nbsp; \*\*≈ −175°\*\*



The gain response shows a flat midband region, while the low-frequency roll-off is due to the input/output coupling capacitors and the source bypass capacitor. The phase response confirms common-source inversion.



---



\## Conclusions



\- The NMOS transistor is correctly biased and operates in the saturation region.

\- The circuit exhibits clear voltage amplification with 180° phase inversion.

\- DC, transient, and AC analyses are mutually consistent.

\- The LTspice implementation is validated and suitable for migration to \*\*HSPICE (90 nm)\*\*.

\# Common Source NMOS Amplifier — LTspice



This README documents the LTspice analysis of a \*\*common-source NMOS amplifier\*\*, implemented using a \*\*netlist-only workflow\*\* for HSPICE-oriented practice.



The same circuit topology is used for DC operating point, transient, and AC analyses.



---



\## Circuit Topology



The common-source amplifier topology used for this analysis is shown below:



!\[Common Source Amplifier Circuit](CS\_circuit.png)



---



\## DC Operating Point Analysis (.op)



A DC operating point analysis was performed to verify correct biasing and saturation-region operation of the NMOS transistor.



Extracted node voltages:

\- Gate voltage:  

&nbsp; \\( V\_G = 0 \\, \\text{V} \\)

\- Source voltage:  

&nbsp; \\( V\_S = -0.669969 \\, \\text{V} \\)

\- Drain voltage:  

&nbsp; \\( V\_D = 2.75571 \\, \\text{V} \\)



Derived quantities:

\- \\( V\_{GS} = 0.669969 \\, \\text{V} \\)

\- \\( V\_{DS} = 3.42568 \\, \\text{V} \\)



The saturation condition

\\\[

V\_{DS} > V\_{GS} - V\_T

\\]

is satisfied, confirming that the NMOS operates in the \*\*saturation region\*\* at the chosen bias point.



---



\## Transient Analysis (.tran)



\- A small-signal sinusoidal input of \*\*10 mV amplitude\*\* was applied.

\- The output waveform is sinusoidal and free from distortion.

\- A clear \*\*180° phase inversion\*\* is observed.

\- Output amplitude is approximately \*\*3–3.5×\*\* the input amplitude.



The transient response confirms correct time-domain operation and voltage amplification of the common-source stage.



---



\## AC Analysis (.ac)



AC analysis was performed with an input source of \*\*AC = 1 V\*\*.



Measured results:

\- Midband voltage gain:  

&nbsp; \*\*10.38 dB\*\* (≈ \*\*3.3 V/V\*\*)

\- Lower cutoff frequency:  

&nbsp; \*\*≈ 8 Hz\*\*

\- Midband phase:  

&nbsp; \*\*≈ −175°\*\*



The gain response shows a flat midband region, while the low-frequency roll-off is due to the input/output coupling capacitors and the source bypass capacitor. The phase response confirms common-source inversion.



---



\## Conclusions



\- The NMOS transistor is correctly biased and operates in the saturation region.

\- The circuit exhibits clear voltage amplification with 180° phase inversion.

\- DC, transient, and AC analyses are mutually consistent.

\- The LTspice implementation is validated and suitable for migration to \*\*HSPICE (90 nm)\*\*.



