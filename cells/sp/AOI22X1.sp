*** Spice netlist generated by cell2spice.pl from cell file AOI22X1.cell ***

.subckt AOI22X1 VPWR VGND D C B A Y
M0 1 A VPWR VPWR pmos w=0.840u l=0.150u
M1 1 B VPWR VPWR pmos w=0.840u l=0.150u
M2 Y D 1 VPWR pmos w=0.840u l=0.150u
M3 1 C Y VPWR pmos w=0.840u l=0.150u
M4 2 A VGND VGND nmos w=0.420u l=0.150u
M5 Y B 2 VGND nmos w=0.420u l=0.150u
M6 3 D Y VGND nmos w=0.420u l=0.150u
M7 3 C VGND VGND nmos w=0.420u l=0.150u
.ends AOI22X1

