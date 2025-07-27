v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 -180 -240 -180 {lab=#net1}
N -140 20 -140 60 {lab=VDD}
N -140 -260 -140 -220 {lab=VDD}
N -280 -100 -280 100 {lab=#net2}
N -280 -100 -240 -100 {lab=#net2}
N -280 100 -240 100 {lab=#net2}
N -280 -220 -280 -180 {lab=#net1}
N -360 -220 -280 -220 {lab=#net1}
N -400 -140 -240 -140 {lab=DIV_RST}
N -280 180 -280 220 {lab=Cout}
N -280 180 -240 180 {lab=Cout}
N -400 140 -240 140 {lab=DIV_RST}
N -320 120 -240 120 {lab=CLK}
N -60 140 0 140 {lab=nEQ1}
N 0 20 -0 140 {lab=nEQ1}
N -0 20 40 20 {lab=nEQ1}
N 0 -20 40 -20 {lab=nEQ0}
N 0 -140 0 -20 {lab=nEQ0}
N -60 -140 0 -140 {lab=nEQ0}
N 160 -0 200 -0 {lab=DIV_RST}
N 200 -0 200 40 {lab=DIV_RST}
N 200 0 300 0 {lab=DIV_RST}
N 260 -60 300 -60 {lab=#net3}
N 260 -60 260 120 {lab=#net3}
N 260 120 540 120 {lab=#net3}
N 540 0 540 120 {lab=#net3}
N 500 0 540 0 {lab=#net3}
N 380 200 420 200 {lab=#net4}
N 420 80 420 200 {lab=#net4}
N 540 -60 580 -60 {lab=CLK_OUT}
N 540 -90 540 -60 {lab=CLK_OUT}
N 500 -60 540 -60 {lab=CLK_OUT}
N -480 0 -440 0 {lab=CLK}
N -640 20 -600 20 {lab=EN}
N -640 -20 -600 -20 {lab=CLK_IN}
N -520 160 -240 160 {lab=A1}
N -520 -120 -240 -120 {lab=A0}
N -320 -160 -240 -160 {lab=CLK}
N -320 180 -280 180 {lab=Cout}
N 440 -180 440 -120 {lab=VDD}
N 120 -240 200 -240 {lab=VSS}
N 120 -280 200 -280 {lab=VDD}
N -140 -60 -140 -20 {lab=VSS}
N -140 220 -140 260 {lab=VSS}
N 380 -180 380 -120 {lab=VSS}
C {freq_div_cell.sym} -140 -140 0 0 {name=x1}
C {freq_div_cell.sym} -140 140 0 0 {name=x2}
C {sg13g2_stdcells/sg13g2_tiehi.sym} -390 -220 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -140 20 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -260 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {noconn.sym} -320 180 0 0 {name=l5}
C {lab_pin.sym} -280 220 3 0 {name=p2 sig_type=std_logic lab=Cout}
C {lab_pin.sym} -320 -160 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -400 -140 0 0 {name=p4 sig_type=std_logic lab=DIV_RST}
C {lab_pin.sym} -320 120 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -400 140 0 0 {name=p8 sig_type=std_logic lab=DIV_RST}
C {sg13g2_stdcells/sg13g2_or2_1.sym} 100 0 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 0 -140 2 0 {name=p10 sig_type=std_logic lab=nEQ0}
C {lab_pin.sym} 0 140 2 0 {name=p11 sig_type=std_logic lab=nEQ1}
C {dff_nclk.sym} 420 -30 0 0 {name=x5}
C {sg13g2_stdcells/sg13g2_tiehi.sym} 350 200 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {noconn.sym} 540 -90 1 0 {name=l2}
C {lab_pin.sym} 200 40 3 0 {name=p13 sig_type=std_logic lab=DIV_RST}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} -540 0 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -640 -20 0 0 {name=p14 lab=CLK_IN}
C {lab_pin.sym} -440 0 2 0 {name=p15 sig_type=std_logic lab=CLK}
C {ipin.sym} -640 20 0 0 {name=p16 lab=EN}
C {ipin.sym} -520 -120 0 0 {name=p17 lab=A0}
C {ipin.sym} -520 160 0 0 {name=p6 lab=A1}
C {opin.sym} 580 -60 0 0 {name=p9 lab=CLK_OUT}
C {lab_pin.sym} 440 -180 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {iopin.sym} 200 -240 0 0 {name=p62 lab=VSS}
C {iopin.sym} 200 -280 0 0 {name=p66 lab=VDD}
C {lab_pin.sym} 120 -280 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 -240 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -140 -20 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -140 260 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -180 0 0 {name=p22 sig_type=std_logic lab=VSS}
