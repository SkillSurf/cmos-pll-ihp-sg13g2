v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -140 140 -60 {lab=Vdd}
N -200 -140 -40 -140 {lab=Vdd}
N -40 -0 -40 20 {lab=Y}
N -40 80 -40 120 {lab=#net1}
N -40 180 -40 220 {lab=#net2}
N -40 -140 140 -140 {lab=Vdd}
N -140 50 -80 50 {lab=A}
N -140 150 -80 150 {lab=B}
N -140 250 -80 250 {lab=C}
N -40 310 -40 320 {lab=GND}
N -300 -60 -240 -60 {lab=A}
N -120 -60 -80 -60 {lab=B}
N 60 -60 100 -60 {lab=C}
N -40 -0 240 -0 {lab=Y}
N -40 -10 -40 -0 {lab=Y}
N -200 -30 -200 -20 {lab=Y}
N -200 -20 -40 -20 {lab=Y}
N -40 -30 -40 -20 {lab=Y}
N 140 -30 140 -10 {lab=Y}
N -40 -10 140 -10 {lab=Y}
N -40 -20 -40 -10 {lab=Y}
N -40 50 -0 50 {lab=GND}
N -0 150 0 250 {lab=GND}
N -40 250 0 250 {lab=GND}
N -40 150 -0 150 {lab=GND}
N -0 50 -0 150 {lab=GND}
N -200 -140 -200 -60 {lab=Vdd}
N -40 -140 -40 -60 {lab=Vdd}
N -560 130 -560 300 {lab=GND}
N -560 -140 -560 80 {lab=Vdd}
N -560 -140 -200 -140 {lab=Vdd}
N 0 250 -0 310 {lab=GND}
N -40 310 0 310 {lab=GND}
N -40 280 -40 310 {lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -220 -60 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -60 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -60 0 0 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 50 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 150 0 0 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 250 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -40 320 0 0 {name=l1 lab=GND}
C {vsource.sym} -560 110 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -560 300 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -560 30 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {ipin.sym} -140 50 0 0 {name=p3 lab=A}
C {ipin.sym} -140 150 0 0 {name=p4 lab=B}
C {ipin.sym} -140 250 0 0 {name=p5 lab=C}
C {lab_pin.sym} -110 50 1 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} -280 -60 1 0 {name=p7 sig_type=std_logic lab=A}
C {lab_pin.sym} -110 150 1 0 {name=p8 sig_type=std_logic lab=B}
C {lab_pin.sym} -100 -60 1 0 {name=p9 sig_type=std_logic lab=B}
C {lab_pin.sym} -110 250 1 0 {name=p10 sig_type=std_logic lab=C}
C {lab_pin.sym} 80 -60 1 0 {name=p11 sig_type=std_logic lab=C}
C {opin.sym} 240 0 0 0 {name=p12 lab=Y}
