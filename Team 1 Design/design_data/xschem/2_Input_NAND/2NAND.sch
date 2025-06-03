v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -80 -100 -70 {lab=#net1}
N 0 -100 80 -100 {lab=#net1}
N 80 -80 80 -70 {lab=#net1}
N -100 -40 -60 -40 {lab=#net1}
N -60 -80 -60 -40 {lab=#net1}
N -100 -80 -60 -80 {lab=#net1}
N -100 -100 -100 -80 {lab=#net1}
N 80 -40 140 -40 {lab=#net1}
N 140 -80 140 -40 {lab=#net1}
N 80 -80 140 -80 {lab=#net1}
N 80 -100 80 -80 {lab=#net1}
N 80 20 80 40 {lab=Y}
N 80 100 80 140 {lab=#net2}
N 80 220 80 240 {lab=GND}
N 80 170 160 170 {lab=GND}
N 160 170 160 220 {lab=GND}
N 80 220 160 220 {lab=GND}
N 80 200 80 220 {lab=GND}
N 80 70 160 70 {lab=GND}
N 160 70 160 170 {lab=GND}
N 80 20 200 20 {lab=Y}
N 80 0 80 20 {lab=Y}
N -100 0 80 0 {lab=Y}
N 80 -10 80 0 {lab=Y}
N -100 -10 -100 -0 {lab=Y}
N -200 -40 -140 -40 {lab=A}
N -200 -0 -200 170 {lab=A}
N -200 170 40 170 {lab=A}
N 0 70 40 70 {lab=B}
N 0 -40 40 -40 {lab=B}
N 0 -40 0 70 {lab=B}
N -260 70 0 70 {lab=B}
N -260 0 -200 -0 {lab=A}
N -200 -40 -200 -0 {lab=A}
N -0 -160 0 -100 {lab=#net1}
N -100 -100 0 -100 {lab=#net1}
N -440 -160 -440 -0 {lab=#net1}
N -440 -160 -0 -160 {lab=#net1}
N -440 60 -440 240 {lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -120 -40 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} 80 240 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -40 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 70 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 170 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -260 70 0 0 {name=p3 lab=B}
C {opin.sym} 200 20 0 0 {name=p4 lab=Y}
C {vsource.sym} -440 30 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -440 240 0 0 {name=l1 lab=GND}
C {ipin.sym} -260 0 0 0 {name=p1 lab=A}
