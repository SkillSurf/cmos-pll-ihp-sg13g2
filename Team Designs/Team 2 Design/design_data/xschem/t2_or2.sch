v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -260 0 -240 {lab=VDD}
N 300 -100 300 -80 {lab=VDD}
N 0 60 0 80 {lab=VDD}
N 0 -80 0 -60 {lab=VSS}
N 0 240 0 260 {lab=VSS}
N 300 80 300 100 {lab=VSS}
N 120 160 160 160 {lab=#net1}
N 160 20 160 160 {lab=#net1}
N 160 -20 200 -20 {lab=#net2}
N 160 -160 160 -20 {lab=#net2}
N 120 -160 160 -160 {lab=#net2}
N -140 -140 -100 -140 {lab=inA}
N -140 140 -100 140 {lab=#net3}
N 160 20 200 20 {lab=#net1}
N 420 0 460 0 {lab=out}
N -140 -180 -100 -180 {lab=inA}
N -140 180 -100 180 {lab=#net3}
N -140 -160 -140 -140 {lab=inA}
N -180 -160 -140 -160 {lab=inA}
N -140 160 -140 180 {lab=#net3}
N -140 140 -140 160 {lab=#net3}
N -140 -180 -140 -160 {lab=inA}
N -180 160 -140 160 {lab=#net3}
C {t2_nand2.sym} 0 -160 0 0 {name=x2}
C {t2_nand2.sym} 0 160 0 0 {name=x3}
C {t2_nand2.sym} 300 0 0 0 {name=x4}
C {lab_pin.sym} 0 -260 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -100 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 60 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -60 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 260 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 100 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 0 2 0 {name=p8 sig_type=std_logic lab=out}
C {lab_pin.sym} -180 -160 0 0 {name=p9 sig_type=std_logic lab=inA}
C {lab_pin.sym} -180 160 0 0 {name=p11 sig_type=std_logic lab=inB}
C {iopin.sym} -230 -50 2 0 {name=p12 lab=VSS}
C {ipin.sym} -230 0 0 0 {name=p13 lab=inA}
C {ipin.sym} -230 30 0 0 {name=p14 lab=inB}
C {opin.sym} -230 80 2 0 {name=p15 lab=out}
C {iopin.sym} -230 -80 2 0 {name=p16 lab=VDD}
