v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -260 -300 -260 240 {}
L 4 -260 -300 580 -300 {}
L 4 580 -300 580 240 {}
L 4 -260 240 580 240 {}
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
N 430 -180 430 -160 {lab=VDD}
N 430 0 430 20 {lab=GND}
N -110 -160 -110 -140 {lab=VDD}
N -110 -20 -110 0 {lab=GND}
N 180 -180 180 -160 {lab=VDD}
N -40 -100 40 -100 {lab=#net1}
N 280 -100 320 -100 {lab=#net2}
N 280 -260 280 -100 {lab=#net2}
N 240 -100 280 -100 {lab=#net2}
N -220 -260 280 -260 {lab=#net2}
N -220 -260 -220 -100 {lab=#net2}
N -220 -100 -180 -100 {lab=#net2}
N 20 -40 40 -40 {lab=clk_in}
N 20 -40 20 80 {lab=clk_in}
N 160 40 160 160 {lab=div_rst}
N 300 -60 320 -60 {lab=lmt}
N 300 -60 300 200 {lab=lmt}
N 620 -80 740 -80 {lab=div_rst}
N -40 -60 -20 -60 {lab=cout}
N -20 -60 -20 120 {lab=cout}
N -20 120 620 120 {lab=cout}
N -300 80 20 80 {lab=clk_in}
N -300 160 160 160 {lab=div_rst}
N -300 200 300 200 {lab=lmt}
N 240 -40 260 -40 {lab=#net3}
N -340 -20 -320 -20 {lab=#net4}
N -340 -60 -180 -60 {lab=#net5}
N -420 -120 -420 -100 {lab=VDD}
N -420 20 -420 40 {lab=GND}
N 940 -140 980 -140 {lab=clk_out}
N -200 490 -200 530 {lab=GND}
N -200 390 -200 430 {lab=VDD}
N 0 490 0 530 {lab=GND}
N 0 390 0 430 {lab=clk_in}
N 470 470 490 470 {lab=#net6}
N 470 430 520 430 {lab=lmt}
N 390 370 390 390 {lab=VDD}
N 390 510 390 530 {lab=GND}
N 620 120 620 150 {lab=cout}
N 620 120 660 120 {lab=cout}
N 980 -170 980 -140 {lab=clk_out}
N 980 -140 1020 -140 {lab=clk_out}
N 620 -110 620 -80 {lab=div_rst}
N 540 -80 620 -80 {lab=div_rst}
N 20 -210 20 -180 {lab=GND}
N 20 -210 120 -210 {lab=GND}
N 120 -210 120 -160 {lab=GND}
N 880 -220 880 -200 {lab=VDD}
N 720 -250 720 -220 {lab=GND}
N 720 -250 820 -250 {lab=GND}
N 820 -250 820 -200 {lab=GND}
N 700 -140 740 -140 {lab=#net7}
N 700 -140 700 40 {lab=#net7}
N 700 40 980 40 {lab=#net7}
N 980 -80 980 40 {lab=#net7}
N 940 -80 980 -80 {lab=#net7}
N 770 470 790 470 {lab=#net8}
N 770 430 860 430 {lab=#net9}
N 690 370 690 390 {lab=VDD}
N 690 510 690 530 {lab=GND}
N 860 0 860 430 {lab=#net9}
C {t2_ha.sym} -110 -80 0 0 {name=x1}
C {t2_dff_1.sym} 160 -70 0 0 {name=x2}
C {t2_xor2.sym} 430 -80 0 0 {name=x3}
C {lab_pin.sym} 430 -180 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -110 -160 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -180 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 80 0 0 {name=p8 sig_type=std_logic lab=clk_in}
C {lab_pin.sym} -300 160 0 0 {name=p10 sig_type=std_logic lab=div_rst}
C {lab_pin.sym} -300 200 0 0 {name=p14 sig_type=std_logic lab=lmt}
C {lab_pin.sym} 660 120 2 0 {name=p18 sig_type=std_logic lab=cout}
C {noconn.sym} 260 -40 0 1 {name=l6}
C {t2_tie.sym} -420 -40 0 0 {name=x4}
C {noconn.sym} -320 -20 0 1 {name=l1}
C {lab_pin.sym} -420 -120 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -110 1 0 {name=p13 sig_type=std_logic lab=div_rst}
C {lab_pin.sym} 1020 -140 2 0 {name=p16 sig_type=std_logic lab=clk_out}
C {devices/code_shown.sym} -210 -690 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10p 15n
write tran_t2_divider_cell.raw
.endc
"}
C {devices/code_shown.sym} 140 -690 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {vsource.sym} -200 460 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} -200 390 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 460 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1.25n, 2.5n)" savecurrent=false}
C {lab_pin.sym} 0 390 1 0 {name=p19 sig_type=std_logic lab=clk_in}
C {t2_tie.sym} 390 450 0 0 {name=x6}
C {noconn.sym} 490 470 0 1 {name=l5}
C {lab_pin.sym} 390 370 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 430 2 0 {name=p22 sig_type=std_logic lab=lmt}
C {noconn.sym} 620 150 1 1 {name=l7}
C {noconn.sym} 980 -170 3 1 {name=l8}
C {gnd.sym} -200 530 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 530 0 0 {name=l3 lab=GND}
C {gnd.sym} 390 530 0 0 {name=l4 lab=GND}
C {gnd.sym} -420 40 0 0 {name=l9 lab=GND}
C {gnd.sym} -110 0 0 0 {name=l10 lab=GND}
C {gnd.sym} 430 20 0 0 {name=l11 lab=GND}
C {gnd.sym} 20 -180 0 0 {name=l13 lab=GND}
C {t2_dff_1.sym} 860 -110 0 0 {name=x5}
C {lab_pin.sym} 880 -220 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 720 -220 0 0 {name=l14 lab=GND}
C {t2_tie.sym} 690 450 0 0 {name=x7}
C {noconn.sym} 790 470 0 1 {name=l12}
C {lab_pin.sym} 690 370 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} 690 530 0 0 {name=l15 lab=GND}
C {devices/code_shown.sym} -200 -490 0 0 {name=MEASURE only_toplevel=true 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.5 FALL=1 TARG v(clk_in) VAL=0.5 FALL=2
.meas tran freq_in PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.5 FALL=1 TARG v(clk_out) VAL=0.5 FALL=2
.meas tran freq_out PARAM = '1e-6/tperiod_out'
"}
