v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1100 -440 1900 -40 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=6e-08
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
B 2 1100 40 1900 440 {flags=graph
y1=-0.015
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=6e-08
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
N -90 160 -90 200 {lab=GND}
N -90 60 -90 100 {lab=VDD}
N 90 160 90 200 {lab=GND}
N 90 60 90 100 {lab=clk_in}
N 820 230 820 270 {lab=GND}
N 820 -90 820 -50 {lab=VDD}
N 880 90 920 90 {lab=clk_out}
N 920 60 920 90 {lab=clk_out}
N 920 90 960 90 {lab=clk_out}
N 500 60 540 60 {lab=clk_in}
N 650 230 650 280 {lab=a0}
N 690 230 690 300 {lab=a1}
N 730 230 730 320 {lab=a2}
N 770 230 770 340 {lab=a3}
N 430 220 430 260 {lab=GND}
N 430 120 430 160 {lab=en}
N 500 400 500 440 {lab=GND}
N 590 400 590 440 {lab=GND}
N 680 400 680 440 {lab=GND}
N 770 400 770 440 {lab=GND}
N 680 320 680 340 {lab=a2}
N 680 320 730 320 {lab=a2}
N 590 300 590 340 {lab=a1}
N 500 280 500 340 {lab=a0}
N 430 120 540 120 {lab=en}
N 500 280 650 280 {lab=a0}
N 590 300 690 300 {lab=a1}
C {devices/code_shown.sym} -140 -430 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 20p 40n
write tran_t2_freq_divider.raw
.endc
"}
C {devices/code_shown.sym} 210 -430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {vsource.sym} -90 130 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} -90 60 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} 90 130 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 20p, 20p, 0.776n, 1.552n)" savecurrent=false}
C {lab_pin.sym} 90 60 1 0 {name=p19 sig_type=std_logic lab=clk_in}
C {gnd.sym} -90 200 0 0 {name=l2 lab=GND}
C {gnd.sym} 90 200 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -140 -240 0 0 {name=MEASURE only_toplevel=true 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.5 FALL=1 TARG v(clk_in) VAL=0.5 FALL=2
.meas tran freq_in PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.5 FALL=1 TARG v(clk_out) VAL=0.5 FALL=2
.meas tran freq_out PARAM = '1e-6/tperiod_out'

.meas tran tdelay TRIG v(clk_in) VAL=0.5 RISE=1 TARG v(clk_out) VAL=0.5 RISE=1
"}
C {launcher.sym} 660 -320 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/tran_t2_freq_divider.raw tran"
}
C {t2_freq_divider.sym} 420 90 0 0 {name=x1}
C {gnd.sym} 820 270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 820 -90 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 90 2 0 {name=p16 sig_type=std_logic lab=clk_out}
C {noconn.sym} 920 60 3 1 {name=l8}
C {lab_pin.sym} 500 60 0 0 {name=p2 sig_type=std_logic lab=clk_in}
C {devices/code_shown.sym} 80 330 0 0 {name=PARAMS only_toplevel=true 
value="
.param EN = 1.2

.param A0 = 1.2
.param A1 = 1.2
.param A2 = 1.2
.param A3 = 0
"}
C {vsource.sym} 430 190 0 0 {name=Ven value="dc \{EN\}" savecurrent=false}
C {gnd.sym} 430 260 0 0 {name=l4 lab=GND}
C {vsource.sym} 500 370 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} 500 440 0 0 {name=l5 lab=GND}
C {vsource.sym} 590 370 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} 590 440 0 0 {name=l6 lab=GND}
C {vsource.sym} 680 370 0 0 {name=Va2 value="dc \{A2\}" savecurrent=false}
C {gnd.sym} 680 440 0 0 {name=l7 lab=GND}
C {vsource.sym} 770 370 0 0 {name=Va3 value="dc \{A3\}" savecurrent=false}
C {gnd.sym} 770 440 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 500 300 0 0 {name=p3 sig_type=std_logic lab=a0}
C {lab_pin.sym} 590 310 0 0 {name=p4 sig_type=std_logic lab=a1}
C {lab_pin.sym} 680 320 0 0 {name=p5 sig_type=std_logic lab=a2}
C {lab_pin.sym} 770 320 2 0 {name=p6 sig_type=std_logic lab=a3}
C {lab_pin.sym} 430 120 0 0 {name=p7 sig_type=std_logic lab=en}
