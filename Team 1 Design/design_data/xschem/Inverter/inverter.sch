v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 50 40 70 {lab=Y}
N -40 -0 -0 -0 {lab=A}
N -40 50 -40 100 {lab=A}
N -40 100 -0 100 {lab=A}
N 40 50 160 50 {lab=Y}
N 40 30 40 50 {lab=Y}
N -120 50 -40 50 {lab=A}
N -40 -0 -40 50 {lab=A}
N 40 180 40 260 {lab=GND}
N 40 100 120 100 {lab=GND}
N 120 100 120 180 {lab=GND}
N 40 180 120 180 {lab=GND}
N 40 130 40 180 {lab=GND}
N 40 -80 40 -30 {lab=#net1}
N 40 -0 120 0 {lab=#net1}
N 120 -80 120 -0 {lab=#net1}
N 40 -80 120 -80 {lab=#net1}
N 40 -140 40 -80 {lab=#net1}
N -380 -140 -380 -0 {lab=#net1}
N -380 -140 40 -140 {lab=#net1}
N -380 60 -380 260 {lab=GND}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} 20 0 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 20 100 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -120 50 0 0 {name=p3 lab=A}
C {opin.sym} 160 50 0 0 {name=p4 lab=Y}
C {vsource.sym} -380 30 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -380 260 0 0 {name=l1 lab=GND}
C {gnd.sym} 40 260 0 0 {name=l2 lab=GND}
