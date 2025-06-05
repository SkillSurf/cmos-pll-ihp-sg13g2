v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -140 0 -60 {lab=vin}
N 0 -140 120 -140 {lab=vin}
N 180 -140 280 -140 {lab=vout}
N 280 -140 280 -60 {lab=vout}
N 280 70 280 100 {lab=VGND}
N 140 100 280 100 {lab=VGND}
N 0 70 0 100 {lab=VGND}
N 140 100 140 130 {lab=VGND}
N 0 100 140 100 {lab=VGND}
N -30 -20 -30 70 {lab=VGND}
N 0 70 30 70 {lab=VGND}
N 30 -20 30 70 {lab=VGND}
N 0 -20 0 70 {lab=VGND}
N -30 70 0 70 {lab=VGND}
N 250 -20 250 70 {lab=VGND}
N 280 70 310 70 {lab=VGND}
N 310 -20 310 70 {lab=VGND}
N 280 -20 280 70 {lab=VGND}
N 250 70 280 70 {lab=VGND}
C {sg13g2_pr/rhigh.sym} 150 -140 1 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {iopin.sym} -130 -270 2 0 {name=p1 lab=VGND}
C {ipin.sym} -130 -220 0 0 {name=p2 lab=vin}
C {opin.sym} -70 -220 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 140 130 0 0 {name=p4 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 280 -140 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 40 -140 0 0 {name=p5 sig_type=std_logic lab=vin}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -40 1 0 {name=M1
l=1.3u
w=3.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -40 1 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
