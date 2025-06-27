v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 -110 -280 -30 {lab=vin}
N -280 -110 -130 -110 {lab=vin}
N 80 -110 180 -110 {lab=vout}
N 180 -110 180 -30 {lab=vout}
N 180 100 180 130 {lab=VN}
N -280 100 -280 130 {lab=VN}
N 40 130 40 190 {lab=VN}
N -310 10 -310 100 {lab=VN}
N -280 100 -250 100 {lab=VN}
N -250 10 -250 100 {lab=VN}
N -280 10 -280 100 {lab=VN}
N -310 100 -280 100 {lab=VN}
N 150 10 150 100 {lab=VN}
N 180 100 210 100 {lab=VN}
N 210 10 210 100 {lab=VN}
N 180 10 180 100 {lab=VN}
N 150 100 180 100 {lab=VN}
N -160 10 -160 100 {lab=VN}
N -130 100 -100 100 {lab=VN}
N -100 10 -100 100 {lab=VN}
N -130 10 -130 100 {lab=VN}
N -160 100 -130 100 {lab=VN}
N -130 -110 -130 -30 {lab=vin}
N -130 100 -130 130 {lab=VN}
N -130 130 40 130 {lab=VN}
N -130 -110 20 -110 {lab=vin}
N 260 -110 260 -30 {lab=vout}
N 260 100 260 130 {lab=VN}
N 230 10 230 100 {lab=VN}
N 260 100 290 100 {lab=VN}
N 290 10 290 100 {lab=VN}
N 260 10 260 100 {lab=VN}
N 230 100 260 100 {lab=VN}
N 180 -110 260 -110 {lab=vout}
N 180 130 260 130 {lab=VN}
N 40 130 180 130 {lab=VN}
N -280 130 -130 130 {lab=VN}
N 260 -110 310 -110 {lab=vout}
N -380 -110 -280 -110 {lab=vin}
C {sg13g2_pr/rhigh.sym} 50 -110 1 0 {name=R1
w=0.5e-6
l=0.96e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {iopin.sym} 40 190 1 0 {name=p1 lab=VN}
C {ipin.sym} -380 -110 0 0 {name=p2 lab=vin}
C {opin.sym} 310 -110 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 260 -110 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -280 -110 0 0 {name=p5 sig_type=std_logic lab=vin}
C {sg13g2_pr/sg13_lv_nmos.sym} -280 -10 1 0 {name=M1
l=0.650u
w=0.5u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -10 1 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 -10 1 0 {name=M3
l=0.650u
w=0.5u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -10 1 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 40 130 1 0 {name=p4 sig_type=std_logic lab=VN}
