*** Spice netlist generated by cell2spice.pl from cell file AOI21X1.cell ***

.subckt AOI21X1 vdd gnd C B A Y
M0 1 A vdd vdd pmos w=0.840u l=0.150u
M1 1 B vdd vdd pmos w=0.840u l=0.150u
M2 Y C 1 vdd pmos w=0.840u l=0.150u
M3 2 A gnd gnd nmos w=0.420u l=0.150u
M4 Y B 2 gnd nmos w=0.420u l=0.150u
M5 Y C gnd gnd nmos w=0.420u l=0.150u
.ends AOI21X1

