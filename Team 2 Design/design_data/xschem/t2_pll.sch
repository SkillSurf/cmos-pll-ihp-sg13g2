v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1270 -780 -470 -380 {flags=graph
y1=0.00023
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vco_clk
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -450 -780 350 -380 {flags=graph
y1=-0.0042
y2=0.66
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=down
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 370 -780 1170 -380 {flags=graph
y1=-0.022
y2=0.58
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=div_clk
color=14
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1270 -1200 -470 -800 {flags=graph
y1=-0.022
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref_clk
div_clk"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -450 -1200 350 -800 {flags=graph
y1=-0.028
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=up
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 370 -1200 1170 -800 {flags=graph
y1=0.08
y2=0.43
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="raw_vctrl
vctrl"
color="10 11"
dataset=-1
unitx=1
logx=0
logy=0
}
N -990 70 -990 100 {lab=ref_clk}
N -1150 -180 -1110 -180 {lab=ref_clk}
N -1150 -140 -1110 -140 {lab=div_clk}
N -870 -180 -830 -180 {lab=up}
N -870 -140 -830 -140 {lab=down}
N -1000 -240 -1000 -220 {lab=VDD}
N -1120 160 -1120 180 {lab=GND}
N -1120 80 -1120 100 {lab=VDD}
N -640 -80 -640 -60 {lab=GND}
N -640 -80 -600 -80 {lab=GND}
N -640 -240 -640 -220 {lab=VDD}
N -640 -220 -600 -220 {lab=VDD}
N -620 190 -620 210 {lab=GND}
N -560 190 -560 210 {lab=GND}
N -620 90 -620 130 {lab=bais_p}
N -560 90 -560 130 {lab=bais_n}
N -570 -260 -570 -220 {lab=bais_p}
N -570 -90 -570 -30 {lab=bais_n}
N -710 -160 -690 -160 {lab=up}
N -710 -140 -690 -140 {lab=down}
N -1000 -100 -1000 -80 {lab=GND}
N -230 -100 -230 -80 {lab=GND}
N 810 -10 810 30 {lab=GND}
N 810 -330 810 -290 {lab=VDD}
N 870 -150 910 -150 {lab=div_clk}
N 490 -180 530 -180 {lab=vco_clk}
N 640 -10 640 40 {lab=a0}
N 680 -10 680 60 {lab=a1}
N 720 -10 720 80 {lab=a2}
N 760 -10 760 100 {lab=a3}
N 420 -20 420 20 {lab=GND}
N 420 -120 420 -80 {lab=en}
N 490 160 490 200 {lab=GND}
N 580 160 580 200 {lab=GND}
N 670 160 670 200 {lab=GND}
N 760 160 760 200 {lab=GND}
N 670 80 670 100 {lab=a2}
N 670 80 720 80 {lab=a2}
N 580 60 580 100 {lab=a1}
N 490 40 490 100 {lab=a0}
N 420 -120 530 -120 {lab=en}
N 490 40 640 40 {lab=a0}
N 580 60 680 60 {lab=a1}
N 150 -80 150 -60 {lab=GND}
N 150 -250 150 -220 {lab=VDD}
N 10 -150 40 -150 {lab=Vctrl}
N 250 -150 290 -150 {lab=vco_clk}
N -510 -150 -490 -150 {lab=raw_Vctrl}
N -310 -150 -280 -150 {lab=raw_Vctrl}
N -170 -150 -130 -150 {lab=Vctrl}
C {t2_PFD.sym} -960 -120 0 0 {name=x1}
C {vsource.sym} -990 130 0 0 {name=V2 value="PULSE(0 1.2 0 50p 50p 5n 10n" savecurrent=false}
C {gnd.sym} -990 160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -990 70 0 0 {name=p2 sig_type=std_logic lab=ref_clk}
C {lab_pin.sym} -1150 -180 0 0 {name=p4 sig_type=std_logic lab=ref_clk}
C {lab_pin.sym} -830 -180 0 1 {name=p8 sig_type=std_logic lab=up}
C {lab_pin.sym} -830 -140 0 1 {name=p9 sig_type=std_logic lab=down}
C {vsource.sym} -1120 130 0 0 {name=V4 value=1.2 savecurrent=false}
C {gnd.sym} -1120 180 0 0 {name=l5 lab=GND}
C {vdd.sym} -1120 80 0 0 {name=l6 lab=VDD}
C {gnd.sym} -640 -60 0 0 {name=l7 lab=GND}
C {vdd.sym} -640 -240 0 0 {name=l8 lab=VDD}
C {vsource.sym} -620 160 0 0 {name=V5 value=0.8 savecurrent=false}
C {gnd.sym} -620 210 0 0 {name=l9 lab=GND}
C {vsource.sym} -560 160 0 0 {name=V6 value=0.4 savecurrent=false}
C {gnd.sym} -560 210 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -570 -260 1 0 {name=p1 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -570 -30 1 0 {name=p10 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -620 90 1 0 {name=p11 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -560 90 1 0 {name=p12 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -710 -160 0 0 {name=p14 sig_type=std_logic lab=up}
C {lab_wire.sym} -710 -140 0 0 {name=p15 sig_type=std_logic lab=down}
C {t2_charge_pump.sym} -590 -150 0 0 {name=x2}
C {gnd.sym} -1000 -80 0 0 {name=l1 lab=GND}
C {vdd.sym} -1000 -240 0 0 {name=l2 lab=VDD}
C {gnd.sym} -230 -80 0 0 {name=l11 lab=GND}
C {t2_vco_new.sym} 150 -150 0 0 {name=x4}
C {t2_freq_divider.sym} 410 -150 0 0 {name=x5}
C {gnd.sym} 810 30 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 810 -330 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {vsource.sym} 420 -50 0 0 {name=Ven value="dc \{EN\}" savecurrent=false}
C {gnd.sym} 420 20 0 0 {name=l15 lab=GND}
C {vsource.sym} 490 130 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} 490 200 0 0 {name=l16 lab=GND}
C {vsource.sym} 580 130 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} 580 200 0 0 {name=l17 lab=GND}
C {vsource.sym} 670 130 0 0 {name=Va2 value="dc \{A2\}" savecurrent=false}
C {gnd.sym} 670 200 0 0 {name=l18 lab=GND}
C {vsource.sym} 760 130 0 0 {name=Va3 value="dc \{A3\}" savecurrent=false}
C {gnd.sym} 760 200 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 490 60 0 0 {name=p19 sig_type=std_logic lab=a0}
C {lab_pin.sym} 580 70 0 0 {name=p20 sig_type=std_logic lab=a1}
C {lab_pin.sym} 670 80 0 0 {name=p21 sig_type=std_logic lab=a2}
C {lab_pin.sym} 760 80 2 0 {name=p22 sig_type=std_logic lab=a3}
C {lab_pin.sym} 420 -120 0 0 {name=p23 sig_type=std_logic lab=en}
C {devices/code_shown.sym} 300 90 0 0 {name=PARAMS only_toplevel=true 
value="
.param EN = 1.2

.param A0 = 1.2
.param A1 = 1.2
.param A2 = 1.2
.param A3 = 0
"}
C {gnd.sym} 150 -60 0 0 {name=l4 lab=GND}
C {vdd.sym} 150 -250 0 0 {name=l20 lab=VDD}
C {lab_wire.sym} 10 -150 0 0 {name=p3 sig_type=std_logic lab=Vctrl}
C {lab_pin.sym} 290 -150 2 0 {name=p24 sig_type=std_logic lab=vco_clk}
C {lab_pin.sym} 490 -180 0 0 {name=p5 sig_type=std_logic lab=vco_clk}
C {lab_pin.sym} 910 -150 2 0 {name=p17 sig_type=std_logic lab=div_clk}
C {lab_pin.sym} -1150 -140 0 0 {name=p18 sig_type=std_logic lab=div_clk}
C {devices/code_shown.sym} -200 100 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -410 100 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.ic v(up) = 0
.ic v(down) = 0
.tran 500p 100n uic
.save all
"}
C {devices/code_shown.sym} -200 160 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_wire.sym} -490 -150 2 0 {name=p6 sig_type=std_logic lab=raw_Vctrl}
C {t2_loop_filter.sym} -230 -140 0 0 {name=x3}
C {lab_wire.sym} -130 -150 2 0 {name=p7 sig_type=std_logic lab=Vctrl}
C {lab_wire.sym} -310 -150 0 0 {name=p13 sig_type=std_logic lab=raw_Vctrl}
C {launcher.sym} -1200 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/t2_pll.raw tran"
}
