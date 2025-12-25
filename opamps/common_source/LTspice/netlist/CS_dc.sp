* Common Source Amplifier

VDD vdd 0 5
VSS vss 0 -5

Vsig a 0 0
Rsig a b 10k
Cc1 b g 1u
RG g 0 1Meg

RD d vdd 10k
Cc2 d vo 1u
RL vo 0 10k

Cs s 0 10u
I1 s vss 2m

M1 d g s 0 NMOS W=50u L=1u

.model NMOS NMOS

.op

.end
