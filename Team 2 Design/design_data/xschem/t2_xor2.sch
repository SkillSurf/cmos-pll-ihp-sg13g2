v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -260 180 -240 {lab=VDD}
N -120 -100 -120 -80 {lab=VDD}
N 480 -100 480 -80 {lab=VDD}
N 180 60 180 80 {lab=VDD}
N -120 80 -120 100 {lab=VSS}
N 180 -80 180 -60 {lab=VSS}
N 180 240 180 260 {lab=VSS}
N 480 80 480 100 {lab=VSS}
N 40 0 40 140 {lab=#net1}
N 40 -140 40 0 {lab=#net1}
N 300 160 340 160 {lab=#net2}
N 340 20 340 160 {lab=#net2}
N 340 -20 380 -20 {lab=#net3}
N 340 -160 340 -20 {lab=#net3}
N 300 -160 340 -160 {lab=#net3}
N 0 -0 40 0 {lab=#net1}
N 40 -140 80 -140 {lab=#net1}
N 40 140 80 140 {lab=#net1}
N 340 20 380 20 {lab=#net2}
N 600 0 640 -0 {lab=out}
N -260 -20 -220 -20 {lab=inA}
N -260 20 -220 20 {lab=#net4}
N -260 -180 -260 -20 {lab=inA}
N -260 -180 80 -180 {lab=inA}
N -260 180 80 180 {lab=#net4}
N -260 20 -260 180 {lab=#net4}
N -300 -180 -260 -180 {lab=inA}
N -300 180 -260 180 {lab=#net4}
C {t2_nand2.sym} -120 0 0 0 {name=x1}
C {t2_nand2.sym} 180 -160 0 0 {name=x2}
C {t2_nand2.sym} 180 160 0 0 {name=x3}
C {t2_nand2.sym} 480 0 0 0 {name=x4}
C {lab_pin.sym} 180 -260 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -120 -100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -100 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 60 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -120 100 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -60 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 260 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 100 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 640 0 2 0 {name=p8 sig_type=std_logic lab=out}
C {lab_pin.sym} -300 -180 0 0 {name=p9 sig_type=std_logic lab=inA}
C {lab_pin.sym} -300 180 0 0 {name=p11 sig_type=std_logic lab=inB}
C {iopin.sym} -350 -50 2 0 {name=p12 lab=VSS}
C {ipin.sym} -350 0 0 0 {name=p13 lab=inA}
C {ipin.sym} -350 30 0 0 {name=p14 lab=inB}
C {opin.sym} -350 80 2 0 {name=p15 lab=out}
C {iopin.sym} -350 -80 2 0 {name=p16 lab=VDD}
