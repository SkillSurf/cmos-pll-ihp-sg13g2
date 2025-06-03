v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -10 -100 70 {lab=#net1}
N -100 230 -100 320 {lab=#net2}
N -100 380 -100 440 {lab=VSS}
N 260 440 380 440 {lab=VSS}
N 380 380 380 440 {lab=VSS}
N -100 350 -60 350 {lab=VSS}
N -60 350 -60 440 {lab=VSS}
N -100 440 -60 440 {lab=VSS}
N 60 350 100 350 {lab=VSS}
N 100 350 100 440 {lab=VSS}
N 60 440 100 440 {lab=VSS}
N 220 350 260 350 {lab=VSS}
N 260 350 260 440 {lab=VSS}
N 220 440 260 440 {lab=VSS}
N -100 -100 -100 -70 {lab=VDD}
N 260 -100 380 -100 {lab=VDD}
N 380 -100 380 -70 {lab=VDD}
N 60 -100 60 -70 {lab=VDD}
N -60 -100 60 -100 {lab=VDD}
N 220 -100 220 -70 {lab=VDD}
N 100 -100 220 -100 {lab=VDD}
N -20 -40 20 -40 {lab=CLK}
N -100 -40 -60 -40 {lab=VDD}
N -100 -100 -60 -100 {lab=VDD}
N -100 100 -60 100 {lab=VDD}
N -60 -40 -60 100 {lab=VDD}
N -60 -100 -60 -40 {lab=VDD}
N 60 -40 100 -40 {lab=VDD}
N 100 -100 100 -40 {lab=VDD}
N 60 -100 100 -100 {lab=VDD}
N 220 -40 260 -40 {lab=VDD}
N 260 -100 260 -40 {lab=VDD}
N 220 -100 260 -100 {lab=VDD}
N 380 -40 420 -40 {lab=VDD}
N 420 -100 420 -40 {lab=VDD}
N 380 -100 420 -100 {lab=VDD}
N -240 -40 -140 -40 {lab=D}
N -320 100 -140 100 {lab=CLK}
N -320 440 -100 440 {lab=VSS}
N -240 350 -140 350 {lab=D}
N -240 -40 -240 350 {lab=D}
N -320 -40 -240 -40 {lab=D}
N -100 230 20 230 {lab=#net2}
N -100 130 -100 230 {lab=#net2}
N 60 260 60 320 {lab=#net3}
N -20 350 20 350 {lab=CLK}
N 60 100 60 200 {lab=#net4}
N 60 230 100 230 {lab=VSS}
N 100 230 100 350 {lab=VSS}
N 120 -40 180 -40 {lab=#net4}
N 120 100 120 350 {lab=#net4}
N 120 350 180 350 {lab=#net4}
N 60 100 120 100 {lab=#net4}
N 60 -10 60 100 {lab=#net4}
N 120 -40 120 100 {lab=#net4}
N 140 100 180 100 {lab=CLK}
N 220 40 220 70 {lab=QBAR}
N 220 130 220 320 {lab=#net5}
N 220 100 260 100 {lab=VSS}
N 260 100 260 350 {lab=VSS}
N 300 -40 340 -40 {lab=QBAR}
N 300 200 300 350 {lab=QBAR}
N 300 350 340 350 {lab=QBAR}
N 220 40 300 40 {lab=QBAR}
N 220 -10 220 40 {lab=QBAR}
N 300 -40 300 40 {lab=QBAR}
N 380 80 380 320 {lab=Q}
N 380 350 420 350 {lab=VSS}
N 420 350 420 440 {lab=VSS}
N 300 200 820 200 {lab=QBAR}
N 300 40 300 200 {lab=QBAR}
N 520 260 520 440 {lab=VSS}
N 420 440 520 440 {lab=VSS}
N 380 440 420 440 {lab=VSS}
N 620 140 620 440 {lab=VSS}
N 520 440 620 440 {lab=VSS}
N 380 80 820 80 {lab=Q}
N 380 -10 380 80 {lab=Q}
N -320 -100 -100 -100 {lab=VDD}
N 60 380 60 440 {lab=VSS}
N -60 440 60 440 {lab=VSS}
N 220 380 220 440 {lab=VSS}
N 100 440 220 440 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -120 -40 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 -40 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 -40 0 0 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 360 -40 0 0 {name=M4
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -120 100 0 0 {name=M5
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 100 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 230 0 0 {name=M7
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 350 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 350 0 0 {name=M9
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 350 0 0 {name=M10
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 350 0 0 {name=M11
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 520 230 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 620 110 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -320 -100 2 0 {name=p1 lab=VDD}
C {iopin.sym} -320 440 2 0 {name=p2 lab=VSS}
C {ipin.sym} -320 -40 0 0 {name=p3 lab=D}
C {ipin.sym} -320 100 0 0 {name=p4 lab=CLK}
C {opin.sym} 820 80 0 0 {name=p5 lab=Q}
C {opin.sym} 820 200 0 0 {name=p6 lab=QBAR}
C {lab_pin.sym} 0 -40 1 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 0 350 1 0 {name=p8 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 160 100 1 0 {name=p9 sig_type=std_logic lab=CLK}
