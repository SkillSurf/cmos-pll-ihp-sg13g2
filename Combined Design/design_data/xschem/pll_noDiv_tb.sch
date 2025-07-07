v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -80 -460 720 -60 {flags=graph
y1=-0.055
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vco_out"
color="6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 -80 -20 720 380 {flags=graph
y1=0.89
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1860 -880 -1060 -480 {flags=graph
y1=-0.034
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=up
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1000 -880 -200 -480 {flags=graph
y1=-0.057
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=down
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -80 -900 720 -500 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref_clk"
color="4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -1760 200 -1760 220 {lab=GND}
N -1760 120 -1760 140 {lab=VDD}
N -880 -190 -880 -170 {lab=GND}
N -1150 -190 -1150 -170 {lab=bias_n}
N -1430 70 -1410 70 {lab=VDD}
N -1440 70 -1440 90 {lab=VDD}
N -1410 70 -1410 90 {lab=VDD}
N -1330 190 -1310 190 {lab=bias_p}
N -1660 160 -1630 160 {lab=VDD}
N -1330 150 -1310 150 {lab=bias_n}
N -1810 -150 -1810 -130 {lab=GND}
N -1810 -270 -1810 -210 {lab=ref_clk}
N -1390 -340 -1390 -320 {lab=VDD}
N -1390 -200 -1390 -180 {lab=GND}
N -1260 -270 -1210 -270 {lab=up}
N -1260 -300 -1260 -270 {lab=up}
N -1260 -250 -1210 -250 {lab=down}
N -1260 -250 -1260 -220 {lab=down}
N -1100 -190 -1100 -170 {lab=GND}
N -1100 -350 -1100 -330 {lab=VDD}
N -1150 -350 -1150 -330 {lab=bias_p}
N -1310 -270 -1260 -270 {lab=up}
N -1310 -250 -1260 -250 {lab=down}
N -990 -260 -940 -260 {lab=vout_cp}
N -990 -290 -990 -260 {lab=vout_cp}
N -1040 -260 -990 -260 {lab=vout_cp}
N -770 -260 -720 -260 {lab=vout}
N -770 -260 -770 -230 {lab=vout}
N -820 -260 -770 -260 {lab=vout}
N -610 -350 -610 -330 {lab=VDD}
N -410 -220 -410 -190 {lab=GND}
N -410 -330 -410 -300 {lab=VDD}
N -280 -260 -230 -260 {lab=vco_out}
N -330 -260 -280 -260 {lab=vco_out}
N -1540 -250 -1490 -250 {lab=vco_out}
N -1540 -40 -280 -40 {lab=vco_out}
N -1430 50 -1430 70 {lab=VDD}
N -1440 70 -1430 70 {lab=VDD}
N -1440 270 -1420 270 {lab=GND}
N -1410 250 -1410 270 {lab=GND}
N -1440 250 -1440 270 {lab=GND}
N -1420 270 -1420 290 {lab=GND}
N -1420 270 -1410 270 {lab=GND}
N -1660 180 -1630 180 {lab=GND}
N -1660 180 -1660 230 {lab=GND}
N -1660 110 -1660 160 {lab=VDD}
N -1540 -250 -1540 -40 {lab=vco_out}
N -280 -260 -280 -40 {lab=vco_out}
N -1810 -270 -1490 -270 {lab=ref_clk}
N -610 -190 -610 -170 {lab=GND}
N -510 -260 -460 -260 {lab=#net1}
C {vsource.sym} -1760 170 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -1760 220 0 0 {name=l1 lab=GND}
C {vdd.sym} -1760 120 0 0 {name=l2 lab=VDD}
C {gnd.sym} -1100 -170 0 0 {name=l3 lab=GND}
C {vdd.sym} -1100 -350 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} -1169 84 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.control
pre_osdi ./psp103_nqs.osdi
save all 
tran 1n 1u uic

write tran_pll_noDiv_tb.raw
.endc

"}
C {devices/code_shown.sym} -811 89 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -811 169 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -990 -290 1 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {gnd.sym} -880 -170 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -770 -230 3 0 {name=p1 sig_type=std_logic lab=vout}
C {Bias_gen.sym} -1480 170 0 0 {name=x3}
C {gnd.sym} -1420 290 0 0 {name=l13 lab=GND}
C {gnd.sym} -1660 230 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -1310 150 2 0 {name=p2 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -1310 190 2 0 {name=p10 sig_type=std_logic lab=bias_p}
C {vdd.sym} -1430 50 0 0 {name=l5 lab=VDD}
C {gnd.sym} -610 -170 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -230 -260 2 0 {name=p8 sig_type=std_logic lab=vco_out}
C {launcher.sym} -753 281 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran_pll_noDiv_tb.raw tran"
}
C {vco_new.sym} -610 -260 0 0 {name=x4}
C {vdd.sym} -610 -350 0 0 {name=l6 lab=VDD}
C {PFD.sym} -1390 -260 0 0 {name=x5}
C {vsource.sym} -1810 -180 0 0 {name=V2 value="PULSE(0 1.2 0.2n 0.2n 0.2n 15n 30n)" savecurrent=false}
C {gnd.sym} -1810 -130 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1260 -300 1 0 {name=p12 sig_type=std_logic lab=up}
C {lab_pin.sym} -1260 -220 3 0 {name=p13 sig_type=std_logic lab=down}
C {gnd.sym} -1390 -180 0 0 {name=l12 lab=GND}
C {vdd.sym} -1390 -340 0 0 {name=l16 lab=VDD}
C {inverter.sym} -390 -260 0 0 {name=x6}
C {vdd.sym} -410 -330 0 0 {name=l17 lab=VDD}
C {gnd.sym} -410 -190 0 0 {name=l18 lab=GND}
C {lab_pin.sym} -1810 -270 0 0 {name=p15 sig_type=std_logic lab=ref_clk}
C {charge_pump.sym} -1140 -260 0 0 {name=x2}
C {lab_pin.sym} -1150 -170 3 0 {name=p4 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -1150 -350 1 0 {name=p14 sig_type=std_logic lab=bias_p}
C {loop_filter.sym} -880 -230 0 0 {name=x1}
C {vdd.sym} -1660 110 0 0 {name=l7 lab=VDD}
C {code.sym} -310 80 0 0 {name=MEASURE only_toplevel=false 
value="
.meas tran tperiod_in TRIG v(ref_clk) VAL=0.6 FALL=1 TARG v(ref_clk) VAL=0.6 FALL=2
.meas tran ref_freq PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(vco_out) VAL=0.6 FALL=50 TARG v(vco_out) VAL=0.6 FALL=51
.meas tran pll_freq PARAM = '1e-6/tperiod_out'
"}
