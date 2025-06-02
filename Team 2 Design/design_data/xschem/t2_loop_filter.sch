v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -140 0 -60 {lab=vin}
N 0 -140 120 -140 {lab=vin}
N 180 -140 280 -140 {lab=VGND}
N 280 -140 280 -60 {lab=VGND}
N 280 0 280 30 {lab=VGND}
N 140 30 280 30 {lab=VGND}
N 0 0 -0 30 {lab=VGND}
N 140 30 140 60 {lab=VGND}
N 0 30 140 30 {lab=VGND}
C {sg13g2_pr/cap_cmim.sym} 0 -30 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 150 -140 1 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/cap_cmim.sym} 280 -30 0 0 {name=C2
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {iopin.sym} -130 -270 2 0 {name=p1 lab=VGND}
C {ipin.sym} -130 -220 0 0 {name=p2 lab=vin}
C {opin.sym} -70 -220 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 140 60 0 0 {name=p4 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 280 -140 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 40 -140 0 0 {name=p5 sig_type=std_logic lab=vin}
