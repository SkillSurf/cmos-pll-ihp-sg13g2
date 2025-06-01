v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -200 200 -170 {lab=Y}
N 160 -200 160 -140 {lab=A}
N 200 -200 270 -200 {lab=Y}
N 200 -230 200 -200 {lab=Y}
N 100 -200 160 -200 {lab=A}
N 160 -260 160 -200 {lab=A}
N 200 -80 200 -60 {lab=VN}
N 200 -330 200 -290 {lab=VP}
N 200 -260 270 -260 {lab=VP}
N 270 -330 270 -260 {lab=VP}
N 200 -330 270 -330 {lab=VP}
N 200 -340 200 -330 {lab=VP}
N 200 -140 290 -140 {lab=VN}
N 290 -140 290 -80 {lab=VN}
N 200 -80 290 -80 {lab=VN}
N 200 -110 200 -80 {lab=VN}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -260 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -140 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 200 -340 3 0 {name=p1 lab=VP
}
C {iopin.sym} 200 -60 1 0 {name=p2 lab=VN


}
C {ipin.sym} 100 -200 0 0 {name=p3 lab=A
}
C {opin.sym} 270 -200 0 0 {name=p4 lab=Y
}
