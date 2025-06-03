v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -260 -220 -260 320 {}
L 4 -260 -220 580 -220 {}
L 4 580 -220 580 320 {}
L 4 -260 320 580 320 {}
B 2 1160 -200 1960 200 {flags=graph
y1=-0.034
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="div_rst
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1160 -640 1960 -240 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_in
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 1160 240 1960 640 {flags=graph
y1=1.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="lmt
"
color=9
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 2000 -430 2800 -30 {flags=graph
y1=-0.017
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_out
"
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2000 30 2800 430 {flags=graph
y1=-0.06
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cout
"
color=11
dataset=-1
unitx=1
logx=0
logy=0
}
N 430 -100 430 -80 {lab=VDD}
N 430 80 430 100 {lab=GND}
N -110 -80 -110 -60 {lab=VDD}
N -110 60 -110 80 {lab=GND}
N 180 -100 180 -80 {lab=VDD}
N -40 -20 40 -20 {lab=#net1}
N 280 -20 320 -20 {lab=#net2}
N 280 -180 280 -20 {lab=#net2}
N 240 -20 280 -20 {lab=#net2}
N -220 -180 280 -180 {lab=#net2}
N -220 -180 -220 -20 {lab=#net2}
N -220 -20 -180 -20 {lab=#net2}
N 20 40 40 40 {lab=clk_in}
N 20 40 20 160 {lab=clk_in}
N 160 120 160 240 {lab=div_rst}
N 300 20 320 20 {lab=lmt}
N 300 20 300 280 {lab=lmt}
N 620 0 740 0 {lab=div_rst}
N -40 20 -20 20 {lab=cout}
N -20 20 -20 200 {lab=cout}
N -20 200 620 200 {lab=cout}
N -300 160 20 160 {lab=clk_in}
N -300 240 160 240 {lab=div_rst}
N -300 280 300 280 {lab=lmt}
N 240 40 260 40 {lab=#net3}
N -340 60 -320 60 {lab=#net4}
N -340 20 -180 20 {lab=#net5}
N -420 -40 -420 -20 {lab=VDD}
N -420 100 -420 120 {lab=GND}
N 940 -60 980 -60 {lab=clk_out}
N -200 570 -200 610 {lab=GND}
N -200 470 -200 510 {lab=VDD}
N 0 570 0 610 {lab=GND}
N 0 470 0 510 {lab=clk_in}
N 470 550 490 550 {lab=#net6}
N 470 510 520 510 {lab=lmt}
N 390 450 390 470 {lab=VDD}
N 390 590 390 610 {lab=GND}
N 620 200 620 230 {lab=cout}
N 620 200 660 200 {lab=cout}
N 980 -90 980 -60 {lab=clk_out}
N 980 -60 1020 -60 {lab=clk_out}
N 620 -30 620 0 {lab=div_rst}
N 540 0 620 0 {lab=div_rst}
N 20 -130 20 -100 {lab=GND}
N 20 -130 120 -130 {lab=GND}
N 120 -130 120 -80 {lab=GND}
N 880 -140 880 -120 {lab=VDD}
N 720 -170 720 -140 {lab=GND}
N 720 -170 820 -170 {lab=GND}
N 820 -170 820 -120 {lab=GND}
N 700 -60 740 -60 {lab=#net7}
N 700 -60 700 120 {lab=#net7}
N 700 120 980 120 {lab=#net7}
N 980 0 980 120 {lab=#net7}
N 940 0 980 0 {lab=#net7}
N 770 550 790 550 {lab=#net8}
N 770 510 860 510 {lab=#net9}
N 690 450 690 470 {lab=VDD}
N 690 590 690 610 {lab=GND}
N 860 80 860 510 {lab=#net9}
C {t2_ha.sym} -110 0 0 0 {name=x1}
C {t2_dff_1.sym} 160 10 0 0 {name=x2}
C {t2_xor2.sym} 430 0 0 0 {name=x3}
C {lab_pin.sym} 430 -100 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -110 -80 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -100 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 160 0 0 {name=p8 sig_type=std_logic lab=clk_in}
C {lab_pin.sym} -300 240 0 0 {name=p10 sig_type=std_logic lab=div_rst}
C {lab_pin.sym} -300 280 0 0 {name=p14 sig_type=std_logic lab=lmt}
C {lab_pin.sym} 660 200 2 0 {name=p18 sig_type=std_logic lab=cout}
C {noconn.sym} 260 40 0 1 {name=l6}
C {t2_tie.sym} -420 40 0 0 {name=x4}
C {noconn.sym} -320 60 0 1 {name=l1}
C {lab_pin.sym} -420 -40 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -30 1 0 {name=p13 sig_type=std_logic lab=div_rst}
C {lab_pin.sym} 1020 -60 2 0 {name=p16 sig_type=std_logic lab=clk_out}
C {devices/code_shown.sym} -210 -610 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10p 15n
write tran_t2_divider_cell.raw
.endc
"}
C {devices/code_shown.sym} 140 -610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {vsource.sym} -200 540 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} -200 470 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 540 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1.25n, 2.5n)" savecurrent=false}
C {lab_pin.sym} 0 470 1 0 {name=p19 sig_type=std_logic lab=clk_in}
C {t2_tie.sym} 390 530 0 0 {name=x6}
C {noconn.sym} 490 550 0 1 {name=l5}
C {lab_pin.sym} 390 450 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 510 2 0 {name=p22 sig_type=std_logic lab=lmt}
C {noconn.sym} 620 230 1 1 {name=l7}
C {noconn.sym} 980 -90 3 1 {name=l8}
C {gnd.sym} -200 610 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 610 0 0 {name=l3 lab=GND}
C {gnd.sym} 390 610 0 0 {name=l4 lab=GND}
C {gnd.sym} -420 120 0 0 {name=l9 lab=GND}
C {gnd.sym} -110 80 0 0 {name=l10 lab=GND}
C {gnd.sym} 430 100 0 0 {name=l11 lab=GND}
C {gnd.sym} 20 -100 0 0 {name=l13 lab=GND}
C {t2_dff_1.sym} 860 -30 0 0 {name=x5}
C {lab_pin.sym} 880 -140 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 720 -140 0 0 {name=l14 lab=GND}
C {t2_tie.sym} 690 530 0 0 {name=x7}
C {noconn.sym} 790 550 0 1 {name=l12}
C {lab_pin.sym} 690 450 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} 690 610 0 0 {name=l15 lab=GND}
C {devices/code_shown.sym} -200 -410 0 0 {name=MEASURE only_toplevel=true 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.5 FALL=1 TARG v(clk_in) VAL=0.5 FALL=2
.meas tran freq_in PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.5 FALL=1 TARG v(clk_out) VAL=0.5 FALL=2
.meas tran freq_out PARAM = '1e-6/tperiod_out'
"}
C {launcher.sym} 650 -500 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/tran_t2_divider_cell.raw tran"
}
