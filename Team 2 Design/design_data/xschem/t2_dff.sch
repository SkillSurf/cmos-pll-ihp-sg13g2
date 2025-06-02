v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -260 -170 -240 {lab=VDD}
N -170 -80 -170 -60 {lab=VSS}
N -170 60 -170 80 {lab=VDD}
N -170 240 -170 260 {lab=VSS}
N 190 -260 190 -240 {lab=VDD}
N 190 -80 190 -60 {lab=VSS}
N 190 60 190 80 {lab=VDD}
N 190 240 190 260 {lab=VSS}
C {t2_nand2.sym} -170 -160 0 0 {name=x1}
C {lab_pin.sym} -170 -260 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -170 -60 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} -170 160 0 0 {name=x2}
C {lab_pin.sym} -170 60 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -170 260 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} 190 -160 0 0 {name=x3}
C {lab_pin.sym} 190 -260 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 190 -60 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} 190 160 0 0 {name=x4}
C {lab_pin.sym} 190 60 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 190 260 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {t2_inverter.sym} -500 20 1 0 {name=x5}
