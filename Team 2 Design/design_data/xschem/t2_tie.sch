v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 70 -220 70 220 {}
L 4 -240 -240 70 -240 {}
L 4 -240 -220 -240 220 {}
L 4 -240 240 70 240 {}
L 4 130 -220 130 220 {}
L 4 130 -240 440 -240 {}
L 4 440 -220 440 220 {}
L 4 130 240 440 240 {}
L 4 -240 220 -240 240 {}
L 4 70 220 70 240 {}
L 4 130 220 130 240 {}
L 4 440 220 440 240 {}
L 4 130 -240 130 -220 {}
L 4 70 -240 70 -220 {}
L 4 440 -240 440 -220 {}
L 4 -240 -240 -240 -220 {}
T {Tie HIGH} -60 -210 0 0 0.4 0.4 {}
T {Tie LOW} 320 -210 0 0 0.4 0.4 {}
N -130 -50 -130 -20 {lab=outHI}
N -130 -20 -10 -20 {lab=outHI}
N -130 -140 -130 -110 {lab=VDD}
N -210 80 -170 80 {lab=#net1}
N -210 20 -210 80 {lab=#net1}
N -210 -80 -170 -80 {lab=#net1}
N -130 20 -130 50 {lab=#net1}
N -210 20 -130 20 {lab=#net1}
N -210 -80 -210 20 {lab=#net1}
N -130 110 -130 140 {lab=VSS}
N 240 -50 240 -20 {lab=#net2}
N 240 -140 240 -110 {lab=VDD}
N 160 80 200 80 {lab=#net2}
N 160 -80 200 -80 {lab=#net2}
N 240 20 240 50 {lab=outLO}
N 160 -20 160 80 {lab=#net2}
N 240 110 240 140 {lab=VSS}
N 160 -20 240 -20 {lab=#net2}
N 160 -80 160 -20 {lab=#net2}
N 240 20 360 20 {lab=outLO}
N -30 80 -30 140 {lab=VSS}
N 340 80 340 140 {lab=VSS}
N 320 -140 320 -80 {lab=VDD}
N -130 -80 -50 -80 {lab=VDD}
N -50 -140 -50 -80 {lab=VDD}
N -130 -140 -50 -140 {lab=VDD}
N 240 -140 320 -140 {lab=VDD}
N 240 -80 320 -80 {lab=VDD}
N -130 -160 -130 -140 {lab=VDD}
N 240 -160 240 -140 {lab=VDD}
N 240 140 240 160 {lab=VSS}
N -130 140 -130 160 {lab=VSS}
N -130 80 -30 80 {lab=VSS}
N -130 140 -30 140 {lab=VSS}
N 240 80 340 80 {lab=VSS}
N 240 140 340 140 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -80 0 0 {name=M1
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 80 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -10 -20 2 0 {name=p1 sig_type=std_logic lab=outHI}
C {lab_pin.sym} -130 -160 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 160 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -310 -50 2 0 {name=p5 lab=VSS}
C {opin.sym} -310 80 2 0 {name=p8 lab=outLO}
C {iopin.sym} -310 -80 2 0 {name=p9 lab=VDD}
C {opin.sym} -310 50 2 0 {name=p3 lab=outHI}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -80 0 0 {name=M3
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 80 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 360 20 2 0 {name=p4 sig_type=std_logic lab=outLO}
C {lab_pin.sym} 240 -160 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 160 3 0 {name=p7 sig_type=std_logic lab=VSS}
