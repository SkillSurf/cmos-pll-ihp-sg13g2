v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -140 0 -60 {lab=vin}
N 0 -140 150 -140 {lab=vin}
N 360 -140 460 -140 {lab=vout}
N 460 -140 460 -60 {lab=vout}
N 460 70 460 100 {lab=VGND}
N 0 70 0 100 {lab=VGND}
N 320 100 320 130 {lab=VGND}
N -30 -20 -30 70 {lab=VGND}
N 0 70 30 70 {lab=VGND}
N 30 -20 30 70 {lab=VGND}
N 0 -20 0 70 {lab=VGND}
N -30 70 0 70 {lab=VGND}
N 430 -20 430 70 {lab=VGND}
N 460 70 490 70 {lab=VGND}
N 490 -20 490 70 {lab=VGND}
N 460 -20 460 70 {lab=VGND}
N 430 70 460 70 {lab=VGND}
N 120 -20 120 70 {lab=VGND}
N 150 70 180 70 {lab=VGND}
N 180 -20 180 70 {lab=VGND}
N 150 -20 150 70 {lab=VGND}
N 120 70 150 70 {lab=VGND}
N 150 -140 150 -60 {lab=vin}
N 150 70 150 100 {lab=VGND}
N 150 100 320 100 {lab=VGND}
N 150 -140 300 -140 {lab=vin}
N 540 -140 540 -60 {lab=vout}
N 540 70 540 100 {lab=VGND}
N 510 -20 510 70 {lab=VGND}
N 540 70 570 70 {lab=VGND}
N 570 -20 570 70 {lab=VGND}
N 540 -20 540 70 {lab=VGND}
N 510 70 540 70 {lab=VGND}
N 460 -140 540 -140 {lab=vout}
N 460 100 540 100 {lab=VGND}
N 320 100 460 100 {lab=VGND}
N 0 100 150 100 {lab=VGND}
C {sg13g2_pr/rhigh.sym} 330 -140 1 0 {name=R1
w=0.5e-6
l=0.96e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {iopin.sym} 80 -260 2 0 {name=p1 lab=VGND}
C {ipin.sym} 80 -210 0 0 {name=p2 lab=vin}
C {opin.sym} 140 -210 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 320 130 0 0 {name=p4 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 540 -140 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 0 -140 0 0 {name=p5 sig_type=std_logic lab=vin}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -40 1 0 {name=M1
l=0.650u
w=0.5u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 -40 1 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -40 1 0 {name=M3
l=0.650u
w=0.5u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -40 1 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
