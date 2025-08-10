v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -260 0 -240 {lab=VDD}
N 290 -100 290 -80 {lab=VDD}
N 0 60 0 80 {lab=VDD}
N 0 -80 0 -60 {lab=VSS}
N 0 240 0 260 {lab=VSS}
N 290 80 290 100 {lab=VSS}
N 110 160 150 160 {lab=#net1}
N 150 20 150 160 {lab=#net1}
N 150 -20 190 -20 {lab=#net2}
N 150 -160 150 -20 {lab=#net2}
N 110 -160 150 -160 {lab=#net2}
N -140 -140 -100 -140 {lab=inB}
N -140 140 -100 140 {lab=inC}
N 150 20 190 20 {lab=#net1}
N 400 0 440 0 {lab=out}
N -140 -180 -100 -180 {lab=inA}
N -140 180 -100 180 {lab=inD}
C {lab_pin.sym} 0 -260 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -100 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 60 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -60 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 260 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 100 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 0 2 0 {name=p8 sig_type=std_logic lab=out}
C {lab_pin.sym} -140 -180 0 0 {name=p9 sig_type=std_logic lab=inA}
C {lab_pin.sym} -140 -140 0 0 {name=p11 sig_type=std_logic lab=inB}
C {iopin.sym} -230 -80 2 0 {name=p12 lab=VSS}
C {ipin.sym} -230 60 0 0 {name=p14 lab=inD}
C {opin.sym} -230 110 2 0 {name=p15 lab=out}
C {iopin.sym} -230 -110 2 0 {name=p16 lab=VDD}
C {t2_or2.sym} 0 -160 0 0 {name=x1}
C {t2_or2.sym} 0 160 0 0 {name=x2}
C {t2_or2.sym} 290 0 0 0 {name=x3}
C {lab_pin.sym} -140 140 0 0 {name=p1 sig_type=std_logic lab=inC}
C {lab_pin.sym} -140 180 0 0 {name=p10 sig_type=std_logic lab=inD}
C {ipin.sym} -230 -30 0 0 {name=p17 lab=inA}
C {ipin.sym} -230 0 0 0 {name=p18 lab=inB}
C {ipin.sym} -230 30 0 0 {name=p19 lab=inC}
