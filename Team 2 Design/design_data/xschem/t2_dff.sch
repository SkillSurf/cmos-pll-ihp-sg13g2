v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -300 -160 -280 {lab=VDD}
N -160 -120 -160 -100 {lab=VSS}
N -160 100 -160 120 {lab=VDD}
N -160 280 -160 300 {lab=VSS}
N 140 -280 140 -260 {lab=VDD}
N 140 -100 140 -80 {lab=VSS}
N 140 80 140 100 {lab=VDD}
N 140 260 140 280 {lab=VSS}
N -410 0 -390 0 {lab=VDD}
N -570 0 -550 0 {lab=VSS}
N -40 200 40 200 {lab=#net1}
N -40 -200 40 -200 {lab=#net2}
N 0 160 40 160 {lab=inA}
N 0 40 0 160 {lab=inA}
N 0 -160 40 -160 {lab=inA}
N 0 -160 -0 -40 {lab=inA}
N 260 180 300 180 {lab=inA}
N 300 40 300 180 {lab=inA}
N 300 -180 300 -40 {lab=inA}
N 260 -180 300 -180 {lab=inA}
N 0 -40 300 40 {lab=inA}
N -0 40 300 -40 {lab=inA}
N 300 180 340 180 {lab=inA}
N 300 -180 340 -180 {lab=inA}
N -300 -180 -260 -180 {lab=clk}
N -300 -180 -300 220 {lab=clk}
N -300 220 -260 220 {lab=clk}
N -480 -220 -480 -80 {lab=d}
N -480 -220 -260 -220 {lab=d}
N -480 180 -260 180 {lab=#net3}
N -480 120 -480 180 {lab=#net3}
N -520 -220 -480 -220 {lab=d}
N -520 220 -300 220 {lab=clk}
C {t2_nand2.sym} -160 -200 0 0 {name=x1}
C {lab_pin.sym} -160 -300 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -160 -100 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} -160 200 0 0 {name=x2}
C {lab_pin.sym} -160 100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -160 300 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} 140 -180 0 0 {name=x3}
C {lab_pin.sym} 140 -280 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -80 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} 140 180 0 0 {name=x4}
C {lab_pin.sym} 140 80 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 280 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {t2_inverter.sym} -480 0 1 0 {name=x5}
C {lab_pin.sym} -390 0 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -570 0 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -520 -220 0 0 {name=p11 sig_type=std_logic lab=d}
C {lab_pin.sym} -520 220 0 0 {name=p12 sig_type=std_logic lab=clk}
C {lab_pin.sym} 340 -180 2 0 {name=p13 sig_type=std_logic lab=inA}
C {lab_pin.sym} 340 180 2 0 {name=p14 sig_type=std_logic lab=inA}
