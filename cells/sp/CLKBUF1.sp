*** Spice netlist generated by cell2spice.pl from cell file CLKBUF1.cell ***

.subckt CLKBUF1 vdd gnd A Y
M0 1 A vdd vdd pmos w=0.840u l=0.150u
M1 1 A vdd vdd pmos w=0.840u l=0.150u
M2 2 1 vdd vdd pmos w=0.840u l=0.150u
M3 2 1 vdd vdd pmos w=0.840u l=0.150u
M4 3 2 vdd vdd pmos w=0.840u l=0.150u
M5 3 2 vdd vdd pmos w=0.840u l=0.150u
M6 Y 3 vdd vdd pmos w=0.840u l=0.150u
M7 Y 3 vdd vdd pmos w=0.840u l=0.150u
M8 1 A gnd gnd nmos w=0.420u l=0.150u
M9 1 A gnd gnd nmos w=0.420u l=0.150u
M10 2 1 gnd gnd nmos w=0.420u l=0.150u
M11 2 1 gnd gnd nmos w=0.420u l=0.150u
M12 3 2 gnd gnd nmos w=0.420u l=0.150u
M13 3 2 gnd gnd nmos w=0.420u l=0.150u
M14 Y 3 gnd gnd nmos w=0.420u l=0.150u
M15 Y 3 gnd gnd nmos w=0.420u l=0.150u
.ends CLKBUF1

