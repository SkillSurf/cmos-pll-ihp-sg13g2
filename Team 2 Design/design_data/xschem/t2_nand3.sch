v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -80 -40 -80 {lab=VDD}
N -120 -140 -40 -140 {lab=VDD}
N -40 -140 -40 -80 {lab=VDD}
N -120 -140 -120 -110 {lab=VDD}
N 80 -140 80 -110 {lab=VDD}
N 80 -140 160 -140 {lab=VDD}
N 80 -80 160 -80 {lab=VDD}
N 160 -140 160 -80 {lab=VDD}
N 0 -180 80 -180 {lab=VDD}
N -120 -180 -120 -140 {lab=VDD}
N 80 -180 80 -140 {lab=VDD}
N 0 -200 0 -180 {lab=VDD}
N -120 -180 0 -180 {lab=VDD}
N -120 -50 -120 -20 {lab=out}
N 80 -50 80 -20 {lab=out}
N 60 -20 80 -20 {lab=out}
N 0 60 20 60 {lab=inC}
N 0 -80 0 60 {lab=inC}
N 0 -80 40 -80 {lab=inC}
N 60 -20 60 30 {lab=out}
N -120 -20 60 -20 {lab=out}
N 60 90 60 130 {lab=#net1}
N 60 60 160 60 {lab=VSS}
N 60 160 160 160 {lab=VSS}
N 160 60 160 160 {lab=VSS}
N 60 290 60 320 {lab=VSS}
N 60 320 160 320 {lab=VSS}
N 160 160 160 260 {lab=VSS}
N 60 320 60 340 {lab=VSS}
N -40 60 -0 60 {lab=inC}
N 80 -20 200 -20 {lab=out}
N -200 -80 -200 160 {lab=inB}
N -200 160 20 160 {lab=inB}
N 60 190 60 230 {lab=#net2}
N 60 260 160 260 {lab=VSS}
N 160 260 160 320 {lab=VSS}
N -320 -80 -240 -80 {lab=VDD}
N -320 -140 -240 -140 {lab=VDD}
N -240 -140 -240 -80 {lab=VDD}
N -320 -140 -320 -110 {lab=VDD}
N -320 -180 -320 -140 {lab=VDD}
N -320 -50 -320 -20 {lab=out}
N -320 -20 -120 -20 {lab=out}
N -400 -80 -400 260 {lab=inC}
N -240 160 -200 160 {lab=inB}
N -200 -80 -160 -80 {lab=inB}
N -320 -180 -120 -180 {lab=VDD}
N -400 -80 -360 -80 {lab=inC}
N -400 260 20 260 {lab=inC}
N -440 260 -400 260 {lab=inC}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 -80 0 0 {name=M1
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -80 0 0 {name=M2
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 60 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 160 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 200 -20 2 0 {name=p1 sig_type=std_logic lab=out}
C {lab_pin.sym} 0 -200 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -240 160 0 0 {name=p3 sig_type=std_logic lab=inB}
C {lab_pin.sym} -40 60 0 0 {name=p4 sig_type=std_logic lab=inA}
C {lab_pin.sym} 60 340 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 260 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -340 -80 0 0 {name=M0
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -440 260 0 0 {name=p5 sig_type=std_logic lab=inC}
C {iopin.sym} -500 10 2 0 {name=p6 lab=VSS}
C {ipin.sym} -500 60 0 0 {name=p7 lab=inA}
C {ipin.sym} -500 120 0 0 {name=p8 lab=inC}
C {opin.sym} -500 170 2 0 {name=p9 lab=out}
C {iopin.sym} -500 -20 2 0 {name=p11 lab=VDD}
C {ipin.sym} -500 90 0 0 {name=p12 lab=inB}
