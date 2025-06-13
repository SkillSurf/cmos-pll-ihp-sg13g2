v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 320 -200 1120 200 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="d
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 320 -640 1120 -240 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 320 240 1120 640 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="rst
"
color=9
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1160 -430 1960 -30 {flags=graph
y1=-0.019
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="q
"
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1160 30 1960 430 {flags=graph
y1=-0.052
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="qn
"
color=11
dataset=-1
unitx=1
logx=0
logy=0
}
N -330 30 -120 30 {lab=CLK}
N -430 -30 -430 30 {lab=D}
N -330 180 -330 230 {lab=GND}
N -530 90 -530 140 {lab=GND}
N -430 90 -430 140 {lab=GND}
N -330 30 -330 120 {lab=CLK}
N 20 -180 20 -90 {lab=VDD}
N -140 -140 -140 -110 {lab=GND}
N 110 -30 140 -30 {lab=Q}
N 110 -60 110 -30 {lab=Q}
N 80 -30 110 -30 {lab=Q}
N 110 30 140 30 {lab=QN}
N 110 30 110 60 {lab=QN}
N 80 30 110 30 {lab=QN}
N -40 -140 -40 -90 {lab=GND}
N -430 -30 -120 -30 {lab=D}
N -530 -180 20 -180 {lab=VDD}
N -140 -140 -40 -140 {lab=GND}
N -0 110 0 160 {lab=RST}
N 0 220 0 270 {lab=GND}
N -530 -180 -530 30 {lab=VDD}
C {vsource.sym} -530 60 0 0 {name=Vs value=1.2 savecurrent=false}
C {gnd.sym} -430 140 0 0 {name=l1 lab=GND}
C {gnd.sym} -330 230 0 0 {name=l2 lab=GND}
C {gnd.sym} -530 140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -530 -90 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -430 -30 0 0 {name=p2 sig_type=std_logic lab=D}
C {lab_pin.sym} -330 30 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {gnd.sym} -140 -110 0 0 {name=l4 lab=GND}
C {noconn.sym} 110 -60 1 0 {name=l5}
C {lab_pin.sym} 140 -30 2 0 {name=p4 sig_type=std_logic lab=Q}
C {noconn.sym} 110 60 1 1 {name=l6}
C {lab_pin.sym} 140 30 0 1 {name=p5 sig_type=std_logic lab=QN}
C {devices/code_shown.sym} -480 -390 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10p 15n
write tran_t2_dff_2.raw
.endc
"}
C {devices/code_shown.sym} -480 350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {gnd.sym} 0 270 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 0 130 0 1 {name=p6 sig_type=std_logic lab=RST}
C {vsource.sym} -430 60 0 0 {name=Vdin value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 2.5n, 5n)" savecurrent=false}
C {vsource.sym} -330 150 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1.25n, 2.5n)" savecurrent=false}
C {vsource.sym} 0 190 0 0 {name=Vrst value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 8n, 15n)" savecurrent=false}
C {t2_dff_2.sym} 0 0 0 0 {name=x1}
