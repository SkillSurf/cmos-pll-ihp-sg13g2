v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -80 -460 720 -60 {flags=graph
y1=-0.026
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_out"
color="6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 -80 -20 720 380 {flags=graph
y1=0.011
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.vctrl
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1860 -880 -1060 -480 {flags=graph
y1=-0.06
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.up
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1000 -880 -200 -480 {flags=graph
y1=-0.067
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.dn
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
x1=1e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_in"
color="4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -1810 -100 -1810 -80 {lab=GND}
N -1810 -180 -1810 -160 {lab=VDD}
N -1640 -100 -1640 -80 {lab=GND}
N -1640 -220 -1640 -160 {lab=CLK_IN}
N -1170 -300 -1170 -270 {lab=VDD}
N -1170 -130 -1170 -100 {lab=GND}
N -1380 -180 -1330 -180 {lab=GND}
N -1380 -180 -1380 -130 {lab=GND}
N -1640 -220 -1330 -220 {lab=CLK_IN}
N -1340 40 -1340 80 {lab=GND}
N -1220 40 -1220 80 {lab=GND}
N -1220 -130 -1220 -20 {lab=A1}
N -1340 -60 -1340 -20 {lab=A0}
N -1340 -60 -1260 -60 {lab=A0}
N -1260 -130 -1260 -60 {lab=A0}
N -1110 -200 -1070 -200 {lab=CLK_OUT}
N -1070 -230 -1070 -200 {lab=CLK_OUT}
N -1070 -200 -1030 -200 {lab=CLK_OUT}
C {vsource.sym} -1810 -130 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -1810 -80 0 0 {name=l1 lab=GND}
C {vdd.sym} -1810 -180 0 0 {name=l2 lab=VDD}
C {devices/code_shown.sym} -799 -306 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.control
pre_osdi ./psp103_nqs.osdi
save all 
tran 100p 2u uic

write tran_pll_2bitDiv_tb.raw
.endc

"}
C {launcher.sym} -343 -119 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran_pll_2bitDiv_tb.raw tran"
}
C {vsource.sym} -1640 -130 0 0 {name=V2 value="PULSE(0 1.2 0.2n 0.2n 0.2n 50n 100n)" savecurrent=false}
C {gnd.sym} -1640 -80 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1640 -220 0 0 {name=p15 sig_type=std_logic lab=CLK_IN}
C {code.sym} -420 -310 0 0 {name=MEASURE only_toplevel=false 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.6 FALL=1 TARG v(clk_in) VAL=0.6 FALL=2
.meas tran ref_freq PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.6 FALL=50 TARG v(clk_out) VAL=0.6 FALL=51
.meas tran pll_freq PARAM = '1e-6/tperiod_out'
"}
C {pll_2bitDiv.sym} -1220 -200 0 0 {name=x1}
C {vdd.sym} -1170 -300 0 0 {name=l3 lab=VDD}
C {gnd.sym} -1170 -100 0 0 {name=l4 lab=GND}
C {gnd.sym} -1380 -130 0 0 {name=l5 lab=GND}
C {vsource.sym} -1340 10 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} -1340 80 0 0 {name=l6 lab=GND}
C {vsource.sym} -1220 10 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} -1220 80 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -1340 -60 0 0 {name=p3 sig_type=std_logic lab=A0}
C {lab_pin.sym} -1220 -60 2 0 {name=p4 sig_type=std_logic lab=A1}
C {lab_pin.sym} -1030 -200 2 0 {name=p16 sig_type=std_logic lab=CLK_OUT}
C {noconn.sym} -1070 -230 3 1 {name=l8}
C {devices/code_shown.sym} -1640 30 0 0 {name=PARAMS only_toplevel=true 
value="
.param A0 = 1.2
.param A1 = 0
"}
C {devices/code_shown.sym} -940 -20 0 0 {name=MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
place=header}
