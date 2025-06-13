v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 320 -430 1120 -30 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
b
"
color="10 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 320 30 1120 430 {flags=graph
y1=-0.34
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="f
"
color=11
dataset=-1
unitx=1
logx=0
logy=0
}
P 4 1 270 -180 {}
N -200 20 -100 20 {lab=B}
N -280 -20 -100 -20 {lab=A}
N -280 -20 -280 40 {lab=A}
N 0 80 0 110 {lab=GND}
N -360 -120 -360 40 {lab=VDD}
N -360 -120 -0 -120 {lab=VDD}
N 0 -120 -0 -80 {lab=VDD}
N 150 0 180 0 {lab=F}
N 150 -30 150 0 {lab=F}
N 120 -0 150 0 {lab=F}
N -200 170 -200 200 {lab=GND}
N -360 100 -360 150 {lab=GND}
N -280 100 -280 150 {lab=GND}
N -200 20 -200 110 {lab=B}
C {vsource.sym} -280 70 0 0 {name=VinA value="dc 0 ac 0 pulse(0, 1.2, 2n, 100p, 100p, 4n, 6n)"}
C {vsource.sym} -200 140 0 0 {name=VinB value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 2n, 4n)" savecurrent=false}
C {vsource.sym} -360 70 0 0 {name=Vs value=1.2 savecurrent=false}
C {gnd.sym} -280 150 0 0 {name=l1 lab=GND}
C {gnd.sym} -200 200 0 0 {name=l2 lab=GND}
C {gnd.sym} -360 150 0 0 {name=l3 lab=GND}
C {gnd.sym} 0 110 0 0 {name=l4 lab=GND}
C {noconn.sym} 150 -30 1 0 {name=l5}
C {lab_pin.sym} -360 -60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -20 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -200 20 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} 180 0 2 0 {name=p4 sig_type=std_logic lab=F}
C {devices/code_shown.sym} -380 -340 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 20n
meas tran tdelay TRIG v(b) VAl=0.9 FALl=1 TARG v(f) VAl=0.9 RISE=1
write tran_t2_nand2.raw
.endc
"}
C {devices/code_shown.sym} -380 330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {t2_nand2.sym} 0 0 0 0 {name=x1}
