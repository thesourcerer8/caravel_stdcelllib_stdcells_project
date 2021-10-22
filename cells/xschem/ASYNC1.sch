v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 290 180 400 180 {lab=VDD}
N 400 180 520 180 {lab=VDD}
N 430 150 430 180 {lab=VDD}
N 290 300 290 340 {lab=CN}
N 290 340 290 370 {lab=CN}
N 290 340 430 340 {lab=CN}
N 430 340 430 370 {lab=CN}
N 400 240 520 240 {lab=#net1}
N 430 240 430 280 {lab=#net1}
N 620 180 620 240 {lab=VDD}
N 520 180 620 180 {lab=VDD}
N 430 340 580 340 {lab=CN}
N 580 270 580 340 {lab=CN}
N 580 340 580 410 {lab=CN}
N 390 310 390 400 {lab=C}
N 390 360 620 360 {lab=C}
N 620 300 620 380 {lab=C}
N 490 490 620 490 {lab=GND}
N 400 490 490 490 {lab=GND}
N 290 490 400 490 {lab=GND}
N 400 430 430 430 {lab=#net2}
N 430 430 490 430 {lab=#net2}
N 620 440 620 490 {lab=GND}
N 420 490 420 500 {lab=GND}
N 250 340 290 340 {lab=CN}
C {devices/nmos.sym} 270 400 0 0 {name=m1 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/pmos.sym} 270 210 0 0 {name=x1 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/pmos.sym} 270 270 0 0 {name=x0 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/pmos.sym} 380 210 0 0 {name=x2 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/pmos.sym} 500 210 0 0 {name=x3 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/pmos.sym} 410 310 0 0 {name=x4 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/pmos.sym} 600 270 0 0 {name=x5 model=epbsim3 m=1 w=2u l=0.18u nfing=1 srcefirst=1 del=10}
C {devices/nmos.sym} 410 400 0 0 {name=m0 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/nmos.sym} 270 460 0 0 {name=m2 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/nmos.sym} 380 460 0 0 {name=m3 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/nmos.sym} 470 460 0 0 {name=m4 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/nmos.sym} 600 410 0 0 {name=m5 model=enbsim3 m=1 w=1u l=0.18u}
C {devices/gnd.sym} 420 500 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 430 150 0 0 {name=l0 lab=VDD}
C {devices/ipin.sym} 250 210 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/ipin.sym} 250 270 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/ipin.sym} 360 210 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/ipin.sym} 480 210 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/opin.sym} 620 330 0 0 {name=p6 sig_type=std_logic lab=C}
C {devices/opin.sym} 250 340 0 1 {name=p7 sig_type=std_logic lab=CN}
C {devices/ipin.sym} 250 400 0 0 {name=p8 sig_type=std_logic lab=B}
C {devices/ipin.sym} 250 460 0 0 {name=p9 sig_type=std_logic lab=A}
C {devices/ipin.sym} 360 460 0 0 {name=p10 sig_type=std_logic lab=B}
C {devices/ipin.sym} 450 460 0 0 {name=p11 sig_type=std_logic lab=A}
