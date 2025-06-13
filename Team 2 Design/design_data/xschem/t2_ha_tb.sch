v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 200 30 1000 430 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 200 -430 1000 -30 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1040 30 1840 430 {flags=graph
y1=-0.12
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="c
"
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1040 -430 1840 -30 {flags=graph
y1=-0.12
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="s
"
color=9
dataset=-1
unitx=1
logx=0
logy=0
}
N -210 20 -70 20 {lab=B}
N -290 -20 -70 -20 {lab=A}
N -290 -20 -290 40 {lab=A}
N -370 -120 -370 40 {lab=VDD}
N -370 -120 -0 -120 {lab=VDD}
N -210 170 -210 200 {lab=GND}
N -370 100 -370 150 {lab=GND}
N -290 100 -290 150 {lab=GND}
N -210 20 -210 110 {lab=B}
N -0 -120 -0 -60 {lab=VDD}
N 0 60 0 90 {lab=GND}
N 100 -20 130 -20 {lab=S}
N 100 -50 100 -20 {lab=S}
N 70 -20 100 -20 {lab=S}
N 100 20 130 20 {lab=C}
N 100 20 100 50 {lab=C}
N 70 20 100 20 {lab=C}
C {t2_ha.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -290 70 0 0 {name=VinA value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1.25n, 2.5n)"}
C {vsource.sym} -210 140 0 0 {name=VinB value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 2.5n, 5n)" savecurrent=false}
C {vsource.sym} -370 70 0 0 {name=Vs value=1.2 savecurrent=false}
C {gnd.sym} -290 150 0 0 {name=l1 lab=GND}
C {gnd.sym} -210 200 0 0 {name=l2 lab=GND}
C {gnd.sym} -370 150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -370 -60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -290 -20 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -210 20 0 0 {name=p3 sig_type=std_logic lab=B}
C {gnd.sym} 0 90 0 0 {name=l4 lab=GND}
C {noconn.sym} 100 -50 1 0 {name=l5}
C {lab_pin.sym} 130 -20 2 0 {name=p4 sig_type=std_logic lab=S}
C {noconn.sym} 100 50 1 1 {name=l6}
C {lab_pin.sym} 130 20 0 1 {name=p5 sig_type=std_logic lab=C}
C {devices/code_shown.sym} -280 -330 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10p 10n
write tran_t2_ha.raw
.endc
"}
C {devices/code_shown.sym} -280 330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
