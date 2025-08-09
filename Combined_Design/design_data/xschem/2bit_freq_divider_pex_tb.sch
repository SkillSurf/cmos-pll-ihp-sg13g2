v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 240 -440 1040 -40 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.34825e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_in
"
color=10
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 240 40 1040 440 {flags=graph
y1=3.4e-08
y2=9.2e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.34825e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_out
"
color=11
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
N -970 160 -970 200 {lab=GND}
N -970 60 -970 100 {lab=VDD}
N -810 160 -810 200 {lab=GND}
N -810 60 -810 100 {lab=CLK_IN}
N -60 230 -60 270 {lab=GND}
N -60 -90 -60 -50 {lab=VDD}
N 0 90 40 90 {lab=CLK_OUT}
N 40 60 40 90 {lab=CLK_OUT}
N 40 90 80 90 {lab=CLK_OUT}
N -380 60 -340 60 {lab=CLK_IN}
N -450 220 -450 260 {lab=GND}
N -450 120 -450 160 {lab=EN}
N -240 400 -240 440 {lab=GND}
N -120 400 -120 440 {lab=GND}
N -450 120 -340 120 {lab=EN}
N -120 230 -120 340 {lab=A1}
N -240 300 -240 340 {lab=A0}
N -240 300 -180 300 {lab=A0}
N -180 230 -180 300 {lab=A0}
C {vsource.sym} -970 130 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} -970 60 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} -810 130 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 6.25n, 12.5n)" savecurrent=false}
C {lab_pin.sym} -810 60 1 0 {name=p19 sig_type=std_logic lab=CLK_IN}
C {gnd.sym} -970 200 0 0 {name=l2 lab=GND}
C {gnd.sym} -810 200 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -1120 -240 0 0 {name=MEASURE only_toplevel=true 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.5 FALL=1 TARG v(clk_in) VAL=0.5 FALL=2
.meas tran freq_in PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.5 FALL=1 TARG v(clk_out) VAL=0.5 FALL=2
.meas tran freq_out PARAM = '1e-6/tperiod_out'

.meas tran tdelay TRIG v(clk_in) VAL=0.5 RISE=1 TARG v(clk_out) VAL=0.5 RISE=1
"}
C {launcher.sym} -610 -430 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/tran_2bit_freq_divider_pex.raw tran"
}
C {gnd.sym} -60 270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -60 -90 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 90 2 0 {name=p16 sig_type=std_logic lab=CLK_OUT}
C {noconn.sym} 40 60 3 1 {name=l8}
C {lab_pin.sym} -380 60 0 0 {name=p2 sig_type=std_logic lab=CLK_IN}
C {devices/code_shown.sym} -800 330 0 0 {name=PARAMS only_toplevel=true 
value="
.param EN = 1.2

.param A0 = 1.2
.param A1 = 1.2
"}
C {vsource.sym} -450 190 0 0 {name=Ven value="dc \{EN\}" savecurrent=false}
C {gnd.sym} -450 260 0 0 {name=l4 lab=GND}
C {vsource.sym} -240 370 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} -240 440 0 0 {name=l5 lab=GND}
C {vsource.sym} -120 370 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} -120 440 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -240 300 0 0 {name=p3 sig_type=std_logic lab=A0}
C {lab_pin.sym} -120 300 0 0 {name=p4 sig_type=std_logic lab=A1}
C {lab_pin.sym} -450 120 0 0 {name=p7 sig_type=std_logic lab=EN}
C {devices/code_shown.sym} -1120 -360 0 0 {name=MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include ../../pex/2bit_freq_divider__2bit_freq_divider/magic_RC/2bit_freq_divider.pex.spice
"
place=header}
C {devices/code_shown.sym} -160 -430 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.control
save all 
tran 50p 150n

write tran_2bit_freq_divider_pex.raw
.endc
"}
C {2bit_freq_divider.sym} -170 90 0 0 {name=x1}
