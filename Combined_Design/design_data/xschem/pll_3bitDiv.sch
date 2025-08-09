v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -880 -190 -880 -170 {lab=VSS}
N -1150 -190 -1150 -170 {lab=BIAS_N}
N -1270 60 -1250 60 {lab=VDD}
N -1280 60 -1280 80 {lab=VDD}
N -1250 60 -1250 80 {lab=VDD}
N -1170 180 -1150 180 {lab=BIAS_P}
N -1500 150 -1470 150 {lab=EN}
N -1170 140 -1150 140 {lab=BIAS_N}
N -1390 -340 -1390 -320 {lab=VDD}
N -1390 -200 -1390 -180 {lab=VSS}
N -1260 -270 -1210 -270 {lab=UP}
N -1260 -300 -1260 -270 {lab=UP}
N -1260 -250 -1210 -250 {lab=DN}
N -1260 -250 -1260 -220 {lab=DN}
N -1100 -190 -1100 -170 {lab=VSS}
N -1100 -350 -1100 -330 {lab=VDD}
N -1150 -350 -1150 -330 {lab=BIAS_P}
N -1310 -270 -1260 -270 {lab=UP}
N -1310 -250 -1260 -250 {lab=DN}
N -990 -260 -940 -260 {lab=VOUT_CP}
N -990 -290 -990 -260 {lab=VOUT_CP}
N -1040 -260 -990 -260 {lab=VOUT_CP}
N -770 -260 -720 -260 {lab=VCTRL}
N -770 -260 -770 -230 {lab=VCTRL}
N -820 -260 -770 -260 {lab=VCTRL}
N -610 -350 -610 -330 {lab=VDD}
N -1540 -250 -1490 -250 {lab=DIV_OUT}
N -1270 40 -1270 60 {lab=VDD}
N -1280 60 -1270 60 {lab=VDD}
N -1280 260 -1260 260 {lab=VSS}
N -1250 240 -1250 260 {lab=VSS}
N -1280 240 -1280 260 {lab=VSS}
N -1260 260 -1260 280 {lab=VSS}
N -1260 260 -1250 260 {lab=VSS}
N -1500 170 -1470 170 {lab=nEN}
N -1500 170 -1500 220 {lab=nEN}
N -1500 100 -1500 150 {lab=EN}
N -610 -190 -610 -170 {lab=VSS}
N -610 290 -610 310 {lab=VSS}
N -610 -10 -610 10 {lab=VDD}
N -1580 -270 -1490 -270 {lab=CLK_IN}
N -920 180 -890 180 {lab=EN}
N -920 120 -890 120 {lab=VCO_OUT}
N -550 150 -520 150 {lab=DIV_OUT}
N -1540 -250 -1540 -220 {lab=DIV_OUT}
N -240 120 -160 120 {lab=VSS}
N -240 80 -160 80 {lab=VDD}
N -740 290 -740 310 {lab=X0}
N -700 290 -700 310 {lab=X1}
N -290 260 -240 260 {lab=nEN}
N -160 260 -110 260 {lab=EN}
N -660 290 -660 310 {lab=X2}
N -30 -230 60 -230 {lab=CLK_OUT}
N -90 -90 -90 -70 {lab=VSS}
N -90 -390 -90 -370 {lab=VDD}
N -220 -90 -220 -70 {lab=Y0}
N -180 -90 -180 -70 {lab=Y1}
N -140 -90 -140 -70 {lab=Y2}
N -400 -200 -370 -200 {lab=EN}
N -440 -290 -440 -260 {lab=VCO_OUT}
N -510 -260 -440 -260 {lab=VCO_OUT}
N -440 -260 -370 -260 {lab=VCO_OUT}
C {lab_pin.sym} -990 -290 1 0 {name=p5 sig_type=std_logic lab=VOUT_CP}
C {lab_pin.sym} -770 -230 3 0 {name=p1 sig_type=std_logic lab=VCTRL}
C {Bias_gen.sym} -1320 160 0 0 {name=x3}
C {lab_pin.sym} -1150 140 2 0 {name=p2 sig_type=std_logic lab=BIAS_N}
C {lab_pin.sym} -1150 180 2 0 {name=p10 sig_type=std_logic lab=BIAS_P}
C {PFD.sym} -1390 -260 0 0 {name=x5}
C {lab_pin.sym} -1260 -300 1 0 {name=p12 sig_type=std_logic lab=UP}
C {lab_pin.sym} -1260 -220 3 0 {name=p13 sig_type=std_logic lab=DN}
C {charge_pump.sym} -1140 -260 0 0 {name=x2}
C {lab_pin.sym} -1150 -170 3 0 {name=p4 sig_type=std_logic lab=BIAS_N}
C {lab_pin.sym} -1150 -350 1 0 {name=p14 sig_type=std_logic lab=BIAS_P}
C {loop_filter.sym} -880 -230 0 0 {name=x1}
C {lab_pin.sym} -1390 -340 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1390 -180 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1100 -170 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -880 -170 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -610 -170 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1260 280 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -610 310 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1270 40 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -610 -10 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -920 120 0 0 {name=p24 sig_type=std_logic lab=VCO_OUT}
C {lab_pin.sym} -520 150 2 0 {name=p25 sig_type=std_logic lab=DIV_OUT}
C {lab_pin.sym} -1540 -220 3 0 {name=p26 sig_type=std_logic lab=DIV_OUT}
C {iopin.sym} -160 120 0 0 {name=p62 lab=VSS}
C {iopin.sym} -160 80 0 0 {name=p66 lab=VDD}
C {lab_pin.sym} -240 80 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -240 120 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {ipin.sym} -1580 -270 0 0 {name=p29 lab=CLK_IN}
C {opin.sym} 60 -230 0 0 {name=p15 lab=CLK_OUT}
C {lab_pin.sym} -920 180 0 0 {name=p8 sig_type=std_logic lab=EN}
C {lab_pin.sym} -1500 100 1 0 {name=p17 sig_type=std_logic lab=EN}
C {lab_pin.sym} -1500 220 3 0 {name=p21 sig_type=std_logic lab=nEN}
C {ipin.sym} -740 310 3 0 {name=p23 lab=X0}
C {ipin.sym} -700 310 3 0 {name=p30 lab=X1}
C {lab_pin.sym} -610 -350 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1100 -350 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -200 260 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -110 260 2 0 {name=p32 sig_type=std_logic lab=EN}
C {ipin.sym} -290 260 0 0 {name=p33 lab=nEN}
C {3bit_freq_divider.sym} -720 150 0 0 {name=x7}
C {ipin.sym} -660 310 3 0 {name=p34 lab=X2}
C {3bit_freq_divider.sym} -200 -230 0 0 {name=x9}
C {lab_pin.sym} -90 -70 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -90 -390 1 0 {name=p36 sig_type=std_logic lab=VDD}
C {ipin.sym} -220 -70 3 0 {name=p37 lab=Y0}
C {ipin.sym} -180 -70 3 0 {name=p38 lab=Y1}
C {ipin.sym} -140 -70 3 0 {name=p39 lab=Y2}
C {lab_pin.sym} -400 -200 0 0 {name=p40 sig_type=std_logic lab=EN}
C {lab_pin.sym} -440 -290 1 0 {name=p41 sig_type=std_logic lab=VCO_OUT}
C {vco_wob.sym} -610 -260 0 0 {name=x4}
