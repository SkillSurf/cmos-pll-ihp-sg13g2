v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -260 0 -240 {lab=VDD}
N 0 -80 0 -60 {lab=VSS}
N 0 60 0 80 {lab=VDD}
N 0 240 0 260 {lab=VSS}
N -150 -180 -150 140 {lab=inA}
N -150 140 -100 140 {lab=inA}
N -150 -180 -110 -180 {lab=inA}
N -190 -140 -110 -140 {lab=inB}
N -190 -140 -190 180 {lab=inB}
N -190 180 -100 180 {lab=inB}
N -230 -140 -190 -140 {lab=inB}
N -230 -180 -150 -180 {lab=inA}
N 110 160 150 160 {lab=cout}
N 110 -160 150 -160 {lab=sum}
C {t2_xor2.sym} 0 -160 0 0 {name=x1}
C {lab_pin.sym} 0 -260 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -60 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 60 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 260 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {t2_and2.sym} 0 160 0 0 {name=x2}
C {lab_pin.sym} -230 -180 0 0 {name=p4 sig_type=std_logic lab=inA}
C {lab_pin.sym} -230 -140 0 0 {name=p6 sig_type=std_logic lab=inB}
C {lab_pin.sym} 150 -160 2 0 {name=p7 sig_type=std_logic lab=sum}
C {lab_pin.sym} 150 160 2 0 {name=p8 sig_type=std_logic lab=cout}
C {iopin.sym} -280 -20 2 0 {name=p12 lab=VSS}
C {ipin.sym} -280 30 0 0 {name=p13 lab=inA}
C {ipin.sym} -280 60 0 0 {name=p14 lab=inB}
C {opin.sym} -280 110 2 0 {name=p15 lab=sum}
C {iopin.sym} -280 -50 2 0 {name=p16 lab=VDD}
C {opin.sym} -280 140 2 0 {name=p9 lab=cout}
