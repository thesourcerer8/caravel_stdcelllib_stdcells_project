*** Spice netlist generated by cell2spice.pl from cell file XNOR2X1.cell ***

.subckt XNOR2X1 VPWR VGND B A Y
M0 1 A VPWR VPWR pmos w=0.840u l=0.150u
M1 3 2 VPWR VPWR pmos w=0.840u l=0.150u
M2 Y 1 3 VPWR pmos w=0.840u l=0.150u
M3 4 A Y VPWR pmos w=0.840u l=0.150u
M4 4 B VPWR VPWR pmos w=0.840u l=0.150u
M5 2 B VPWR VPWR pmos w=0.840u l=0.150u
M6 1 A VGND VGND nmos w=0.420u l=0.150u
M7 5 2 VGND VGND nmos w=0.420u l=0.150u
M8 Y A 5 VGND nmos w=0.420u l=0.150u
M9 6 1 Y VGND nmos w=0.420u l=0.150u
M10 6 B VGND VGND nmos w=0.420u l=0.150u
M11 2 B VGND VGND nmos w=0.420u l=0.150u
.ends XNOR2X1

