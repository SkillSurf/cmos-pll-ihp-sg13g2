v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -20 30 -20 {lab=#net1}
N 0 0 0 20 {lab=#net1}
N 0 20 30 20 {lab=#net1}
N -30 0 0 0 {lab=#net1}
N 0 -20 0 0 {lab=#net1}
N -150 -110 -150 -80 {lab=VDD}
N 0 -110 130 -110 {lab=VDD}
N 130 -110 130 -80 {lab=VDD}
N -150 80 -150 110 {lab=VSS}
N -0 110 130 110 {lab=VSS}
N 130 80 130 110 {lab=VSS}
N -280 -20 -250 -20 {lab=inA}
N -280 20 -250 20 {lab=inB}
N 250 0 280 0 {lab=out}
N 0 -140 0 -110 {lab=VDD}
N -150 -110 0 -110 {lab=VDD}
N -0 110 -0 140 {lab=VSS}
N -150 110 -0 110 {lab=VSS}
C {t2_nand2.sym} -150 0 0 0 {name=x1}
C {t2_nand2.sym} 130 0 0 0 {name=x2}
C {lab_pin.sym} 280 0 2 0 {name=p1 sig_type=std_logic lab=out}
C {lab_pin.sym} -280 -20 0 0 {name=p3 sig_type=std_logic lab=inA}
C {lab_pin.sym} -280 20 0 0 {name=p4 sig_type=std_logic lab=inB}
C {lab_pin.sym} 0 -140 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 140 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -280 -120 2 0 {name=p5 lab=VSS}
C {ipin.sym} -280 120 0 0 {name=p6 lab=inA}
C {ipin.sym} -280 150 0 0 {name=p7 lab=inB}
C {opin.sym} -230 150 0 0 {name=p8 lab=out}
C {iopin.sym} -280 -150 2 0 {name=p9 lab=VDD}
