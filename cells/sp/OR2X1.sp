*** Spice netlist generated by cell2spice.pl from cell file OR2X1.cell ***

.subckt OR2X1 vdd gnd B A Y
M0 1 A 2 vdd pmos w=0.840u l=0.150u
M1 1 B vdd vdd pmos w=0.840u l=0.150u
M2 Y 2 vdd vdd pmos w=0.840u l=0.150u
M3 2 A gnd gnd nmos w=0.420u l=0.150u
M4 2 B gnd gnd nmos w=0.420u l=0.150u
M5 Y 2 gnd gnd nmos w=0.420u l=0.150u
.ends OR2X1

