*** Spice netlist generated by cell2spice.pl from cell file OAI22X1.cell ***

.subckt OAI22X1 vdd gnd D C B A Y
M0 1 A vdd vdd pmos w=0.840u l=0.150u
M1 Y B 1 vdd pmos w=0.840u l=0.150u
M2 2 D Y vdd pmos w=0.840u l=0.150u
M3 2 C vdd vdd pmos w=0.840u l=0.150u
M4 3 A gnd gnd nmos w=0.420u l=0.150u
M5 3 B gnd gnd nmos w=0.420u l=0.150u
M6 Y D 3 gnd nmos w=0.420u l=0.150u
M7 3 C Y gnd nmos w=0.420u l=0.150u
.ends OAI22X1

