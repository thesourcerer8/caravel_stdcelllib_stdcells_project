*** Spice netlist generated by cell2spice.pl from cell file HAX1.cell ***

.subckt HAX1 vdd gnd B A YS YC
M0 1 A vdd vdd pmos w=0.840u l=0.150u
M1 1 B vdd vdd pmos w=0.840u l=0.150u
M2 YC 1 vdd vdd pmos w=0.840u l=0.150u
M3 2 1 vdd vdd pmos w=0.840u l=0.150u
M4 3 B 2 vdd pmos w=0.840u l=0.150u
M5 3 A vdd vdd pmos w=0.840u l=0.150u
M6 YS 2 vdd vdd pmos w=0.840u l=0.150u
M7 4 A gnd gnd nmos w=0.420u l=0.150u
M8 1 B 4 gnd nmos w=0.420u l=0.150u
M9 YC 1 gnd gnd nmos w=0.420u l=0.150u
M10 5 1 gnd gnd nmos w=0.420u l=0.150u
M11 2 B 5 gnd nmos w=0.420u l=0.150u
M12 5 A 2 gnd nmos w=0.420u l=0.150u
M13 YS 2 gnd gnd nmos w=0.420u l=0.150u
.ends HAX1

