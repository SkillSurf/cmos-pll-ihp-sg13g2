v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -880 -190 -880 -170 {lab=VSS}
N -1150 -190 -1150 -170 {lab=BIAS_N}
N -1380 10 -1360 10 {lab=VDD}
N -1390 10 -1390 30 {lab=VDD}
N -1360 10 -1360 30 {lab=VDD}
N -1280 130 -1260 130 {lab=BIAS_P}
N -1610 100 -1580 100 {lab=EN}
N -1280 90 -1260 90 {lab=BIAS_N}
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
N -1380 -10 -1380 10 {lab=VDD}
N -1390 10 -1380 10 {lab=VDD}
N -1390 210 -1370 210 {lab=VSS}
N -1360 190 -1360 210 {lab=VSS}
N -1390 190 -1390 210 {lab=VSS}
N -1370 210 -1370 230 {lab=VSS}
N -1370 210 -1360 210 {lab=VSS}
N -1610 120 -1580 120 {lab=nEN}
N -1610 120 -1610 170 {lab=nEN}
N -1610 50 -1610 100 {lab=EN}
N -610 -190 -610 -170 {lab=VSS}
N -510 -260 -460 -260 {lab=#net1}
N -720 240 -720 260 {lab=VSS}
N -720 -60 -720 -40 {lab=VDD}
N -1580 -270 -1490 -270 {lab=CLK_IN}
N -1030 130 -1000 130 {lab=EN}
N -1030 70 -1000 70 {lab=CLK_OUT}
N -660 100 -630 100 {lab=DIV_OUT}
N -1540 -250 -1540 -220 {lab=DIV_OUT}
N -410 40 -330 40 {lab=VSS}
N -410 0 -330 0 {lab=VDD}
N -380 -260 -290 -260 {lab=CLK_OUT}
N -840 240 -840 260 {lab=X0}
N -780 240 -780 260 {lab=X1}
N -460 180 -410 180 {lab=nEN}
N -330 180 -280 180 {lab=EN}
C {lab_pin.sym} -990 -290 1 0 {name=p5 sig_type=std_logic lab=VOUT_CP}
C {lab_pin.sym} -770 -230 3 0 {name=p1 sig_type=std_logic lab=VCTRL}
C {Bias_gen.sym} -1430 110 0 0 {name=x3}
C {lab_pin.sym} -1260 90 2 0 {name=p2 sig_type=std_logic lab=BIAS_N}
C {lab_pin.sym} -1260 130 2 0 {name=p10 sig_type=std_logic lab=BIAS_P}
C {vco_new.sym} -610 -260 0 0 {name=x4}
C {PFD.sym} -1390 -260 0 0 {name=x5}
C {lab_pin.sym} -1260 -300 1 0 {name=p12 sig_type=std_logic lab=UP}
C {lab_pin.sym} -1260 -220 3 0 {name=p13 sig_type=std_logic lab=DN}
C {charge_pump.sym} -1140 -260 0 0 {name=x2}
C {lab_pin.sym} -1150 -170 3 0 {name=p4 sig_type=std_logic lab=BIAS_N}
C {lab_pin.sym} -1150 -350 1 0 {name=p14 sig_type=std_logic lab=BIAS_P}
C {loop_filter.sym} -880 -230 0 0 {name=x1}
C {2bit_freq_divider.sym} -830 100 0 0 {name=x7}
C {lab_pin.sym} -1390 -340 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1390 -180 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1100 -170 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -880 -170 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -610 -170 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1370 230 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -720 260 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1380 -10 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -720 -60 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1030 70 0 0 {name=p24 sig_type=std_logic lab=CLK_OUT}
C {lab_pin.sym} -630 100 2 0 {name=p25 sig_type=std_logic lab=DIV_OUT}
C {lab_pin.sym} -1540 -220 3 0 {name=p26 sig_type=std_logic lab=DIV_OUT}
C {iopin.sym} -330 40 0 0 {name=p62 lab=VSS}
C {iopin.sym} -330 0 0 0 {name=p66 lab=VDD}
C {lab_pin.sym} -410 0 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -410 40 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {ipin.sym} -1580 -270 0 0 {name=p29 lab=CLK_IN}
C {opin.sym} -290 -260 0 0 {name=p15 lab=CLK_OUT}
C {lab_pin.sym} -1030 130 0 0 {name=p8 sig_type=std_logic lab=EN}
C {lab_pin.sym} -1610 50 1 0 {name=p17 sig_type=std_logic lab=EN}
C {lab_pin.sym} -1610 170 3 0 {name=p21 sig_type=std_logic lab=nEN}
C {ipin.sym} -840 260 3 0 {name=p23 lab=X0}
C {ipin.sym} -780 260 3 0 {name=p30 lab=X1}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -420 -260 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -610 -350 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1100 -350 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -370 180 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -280 180 2 0 {name=p32 sig_type=std_logic lab=EN}
C {ipin.sym} -460 180 0 0 {name=p33 lab=nEN}
