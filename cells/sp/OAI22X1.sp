*** Spice netlist generated by cell2spice.pl from cell file OAI22X1.cell ***

.subckt OAI22X1 VPWR VGND D C B A Y
M0 1 A VPWR VPWR pmos w=0.840u l=0.150u
M1 Y B 1 VPWR pmos w=0.840u l=0.150u
M2 2 D Y VPWR pmos w=0.840u l=0.150u
M3 2 C VPWR VPWR pmos w=0.840u l=0.150u
M4 3 A VGND VGND nmos w=0.420u l=0.150u
M5 3 B VGND VGND nmos w=0.420u l=0.150u
M6 Y D 3 VGND nmos w=0.420u l=0.150u
M7 3 C Y VGND nmos w=0.420u l=0.150u
.ends OAI22X1

