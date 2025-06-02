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
N 0 60 20 60 {lab=inB}
N 0 -80 0 60 {lab=inB}
N 0 -80 40 -80 {lab=inB}
N 60 -20 60 30 {lab=out}
N -120 -20 60 -20 {lab=out}
N 60 90 60 130 {lab=#net1}
N 60 60 160 60 {lab=VSS}
N 60 160 160 160 {lab=VSS}
N 160 60 160 160 {lab=VSS}
N 60 190 60 220 {lab=VSS}
N 60 220 160 220 {lab=VSS}
N 160 160 160 220 {lab=VSS}
N 60 220 60 240 {lab=VSS}
N -40 60 -0 60 {lab=inB}
N 80 -20 200 -20 {lab=out}
N -190 -80 -190 160 {lab=inA}
N -190 -80 -160 -80 {lab=inA}
N -190 160 20 160 {lab=inA}
N -230 -80 -190 -80 {lab=inA}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 -80 0 0 {name=M1
l=0.15u
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
C {lab_pin.sym} -230 -80 0 0 {name=p3 sig_type=std_logic lab=inA}
C {lab_pin.sym} -40 60 0 0 {name=p4 sig_type=std_logic lab=inB}
C {iopin.sym} -300 90 2 0 {name=p5 lab=VSS}
C {ipin.sym} -300 140 0 0 {name=p6 lab=inA}
C {ipin.sym} -300 170 0 0 {name=p7 lab=inB}
C {opin.sym} -300 220 2 0 {name=p8 lab=out}
C {iopin.sym} -300 60 2 0 {name=p9 lab=VDD}
C {lab_pin.sym} 60 240 3 0 {name=p10 sig_type=std_logic lab=VSS}
