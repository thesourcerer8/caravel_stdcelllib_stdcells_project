*** Spice netlist generated by cell2spice.pl from cell file NAND3X1.cell ***

.subckt NAND3X1 VPWR VGND C B A Y
M0 Y A VPWR VPWR pmos w=0.840u l=0.150u
M1 Y B VPWR VPWR pmos w=0.840u l=0.150u
M2 Y C VPWR VPWR pmos w=0.840u l=0.150u
M3 1 A VGND VGND nmos w=0.420u l=0.150u
M4 2 B 1 VGND nmos w=0.420u l=0.150u
M5 Y C 2 VGND nmos w=0.420u l=0.150u
.ends NAND3X1

