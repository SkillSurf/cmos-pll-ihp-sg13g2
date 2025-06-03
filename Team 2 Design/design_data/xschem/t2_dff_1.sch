v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 -300 -220 -280 {lab=VDD}
N -220 -120 -220 -100 {lab=VSS}
N -220 100 -220 120 {lab=VDD}
N -220 280 -220 300 {lab=VSS}
N 140 -280 140 -260 {lab=VDD}
N 140 -100 140 -80 {lab=VSS}
N 140 100 140 120 {lab=VDD}
N 140 280 140 300 {lab=VSS}
N 0 160 40 160 {lab=Q}
N 0 -160 40 -160 {lab=QN}
N 0 -160 0 -40 {lab=QN}
N 300 40 300 200 {lab=QN}
N 300 -180 300 -40 {lab=Q}
N 260 -180 300 -180 {lab=Q}
N 0 -40 300 40 {lab=QN}
N 0 40 300 -40 {lab=Q}
N 0 40 0 160 {lab=Q}
N 260 200 300 200 {lab=QN}
N -220 -660 -220 -640 {lab=VDD}
N -220 -480 -220 -460 {lab=VSS}
N -360 160 -320 160 {lab=#net1}
N -360 60 -360 160 {lab=#net1}
N -360 60 -60 -60 {lab=#net1}
N -60 -200 -60 -60 {lab=#net1}
N -100 -200 -60 -200 {lab=#net1}
N -220 460 -220 480 {lab=VDD}
N -220 640 -220 660 {lab=VSS}
N -360 520 -320 520 {lab=#net2}
N -360 420 -360 520 {lab=#net2}
N -360 240 -360 340 {lab=#net3}
N -360 240 -320 240 {lab=#net3}
N -360 420 -60 340 {lab=#net2}
N -60 200 -60 340 {lab=#net2}
N -100 200 -60 200 {lab=#net2}
N -100 560 -60 560 {lab=#net3}
N -60 420 -60 560 {lab=#net3}
N -360 340 -60 420 {lab=#net3}
N -360 -240 -320 -240 {lab=#net4}
N -360 -340 -360 -240 {lab=#net4}
N -360 -540 -320 -540 {lab=#net1}
N -360 -540 -360 -420 {lab=#net1}
N -20 -330 -20 -200 {lab=#net1}
N -60 -200 -20 -200 {lab=#net1}
N -360 -420 -20 -330 {lab=#net1}
N -100 -560 -20 -560 {lab=#net4}
N -360 -340 -20 -430 {lab=#net4}
N -20 -560 -20 -430 {lab=#net4}
N -60 560 -60 740 {lab=#net3}
N -420 740 -60 740 {lab=#net3}
N -420 -580 -420 740 {lab=#net3}
N -420 -580 -320 -580 {lab=#net3}
N -540 200 -320 200 {lab=#net5}
N -540 -200 -320 -200 {lab=#net5}
N -480 -160 -320 -160 {lab=RST}
N -480 600 -480 800 {lab=RST}
N -480 600 -320 600 {lab=RST}
N -480 -160 -480 600 {lab=RST}
N 0 240 40 240 {lab=RST}
N 0 240 0 800 {lab=RST}
N -480 800 0 800 {lab=RST}
N -20 -200 40 -200 {lab=#net1}
N -60 200 40 200 {lab=#net2}
N 300 -180 360 -180 {lab=Q}
N 300 200 360 200 {lab=QN}
N -840 0 -780 0 {lab=CLK}
N -540 0 -540 200 {lab=#net5}
N -540 800 -480 800 {lab=RST}
N -540 560 -320 560 {lab=D}
N -580 -0 -540 0 {lab=#net5}
N -540 -200 -540 0 {lab=#net5}
N -700 70 -700 90 {lab=VSS}
N -700 -90 -700 -70 {lab=VDD}
C {lab_pin.sym} -220 -300 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -100 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -220 100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 300 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {t2_nand2.sym} 140 -180 0 0 {name=x3}
C {lab_pin.sym} 140 -280 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -80 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 100 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 300 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -180 2 0 {name=p13 sig_type=std_logic lab=Q}
C {lab_pin.sym} 360 200 2 0 {name=p14 sig_type=std_logic lab=QN}
C {t2_nand3.sym} 140 200 0 0 {name=x4}
C {t2_nand3.sym} -220 -200 0 0 {name=x1}
C {t2_nand3.sym} -220 200 0 0 {name=x2}
C {t2_nand2.sym} -220 -560 0 0 {name=x6}
C {lab_pin.sym} -220 -660 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -460 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -220 460 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 660 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {t2_nand3.sym} -220 560 0 0 {name=x5}
C {lab_pin.sym} -540 800 0 0 {name=p11 sig_type=std_logic lab=RST}
C {lab_pin.sym} -540 560 0 0 {name=p12 sig_type=std_logic lab=D}
C {lab_pin.sym} -840 0 0 0 {name=p17 sig_type=std_logic lab=CLK}
C {iopin.sym} -600 -470 2 0 {name=p18 lab=VSS}
C {ipin.sym} -600 -420 0 0 {name=p19 lab=D}
C {ipin.sym} -600 -360 0 0 {name=p20 lab=RST}
C {opin.sym} -600 -310 2 0 {name=p21 lab=Q}
C {iopin.sym} -600 -500 2 0 {name=p22 lab=VDD}
C {opin.sym} -600 -280 2 0 {name=p23 lab=QN}
C {ipin.sym} -600 -390 0 0 {name=p24 lab=CLK}
C {t2_inverter.sym} -700 0 0 0 {name=x7}
C {lab_pin.sym} -700 90 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -700 -90 1 0 {name=p26 sig_type=std_logic lab=VDD}
