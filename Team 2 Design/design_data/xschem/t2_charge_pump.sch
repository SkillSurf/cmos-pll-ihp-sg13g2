v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 30 120 80 {lab=#net1}
N 120 -140 120 -30 {lab=#net2}
N 120 -240 120 -200 {lab=#net3}
N 120 140 120 240 {lab=VGND}
N 120 110 210 110 {lab=VNB}
N 120 0 210 0 {lab=VNB}
N 210 0 210 110 {lab=VNB}
N 210 110 250 110 {lab=VNB}
N 120 -170 210 -170 {lab=VPB}
N 120 -270 210 -270 {lab=VPB}
N 210 -270 210 -170 {lab=VPB}
N 210 -270 250 -270 {lab=VPB}
N 0 110 80 110 {lab=bais_n}
N 50 -170 80 -170 {lab=#net4}
N -0 -270 80 -270 {lab=bais_p}
N 120 -390 120 -300 {lab=VPWR}
N -60 -170 -30 -170 {lab=up}
N -70 -0 80 -0 {lab=down}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 110 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 0 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -270 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -170 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 10 -170 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} -350 -420 2 0 {name=p1 lab=VPWR}
C {ipin.sym} -350 -300 0 0 {name=p2 lab=up}
C {opin.sym} -280 -330 0 0 {name=p3 lab=out}
C {iopin.sym} -350 -400 2 0 {name=p4 lab=VPB}
C {iopin.sym} -350 -380 2 0 {name=p5 lab=VGND}
C {iopin.sym} -350 -360 2 0 {name=p6 lab=VNB}
C {ipin.sym} -350 -270 0 0 {name=p7 lab=down}
C {ipin.sym} -350 -240 0 0 {name=p8 lab=bais_p}
C {ipin.sym} -350 -210 0 0 {name=p9 lab=bais_n}
C {lab_wire.sym} -70 0 0 0 {name=p10 sig_type=std_logic lab=down}
C {lab_wire.sym} 0 110 0 0 {name=p11 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -60 -170 0 0 {name=p12 sig_type=std_logic lab=up}
C {lab_wire.sym} 0 -270 0 0 {name=p13 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} 120 -390 0 0 {name=p14 sig_type=std_logic lab=VPWR}
C {lab_wire.sym} 120 240 0 0 {name=p15 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 250 110 2 0 {name=p16 sig_type=std_logic lab=VNB}
C {lab_wire.sym} 250 -270 2 0 {name=p17 sig_type=std_logic lab=VPB}
C {lab_wire.sym} 120 -90 2 0 {name=p18 sig_type=std_logic lab=out}
