v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 220 -210 1020 190 {flags=graph
y1=4.6e-09
y2=1.2
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
node="hi
lo
"
color="7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
P 4 1 250 -180 {}
N -130 30 -130 90 {lab=GND}
N -130 -100 -130 -30 {lab=VDD}
N -130 -100 -0 -100 {lab=VDD}
N -0 -100 -0 -60 {lab=VDD}
N 110 -20 140 -20 {lab=HI}
N 110 -50 110 -20 {lab=HI}
N 80 -20 110 -20 {lab=HI}
N 110 20 140 20 {lab=LO}
N 110 20 110 50 {lab=LO}
N 80 20 110 20 {lab=LO}
N 0 60 -0 90 {lab=GND}
C {vsource.sym} -130 0 0 0 {name=Vs value=1.2 savecurrent=false}
C {gnd.sym} -130 90 0 0 {name=l3 lab=GND}
C {gnd.sym} 0 90 0 0 {name=l4 lab=GND}
C {noconn.sym} 110 -50 1 0 {name=l5}
C {lab_pin.sym} -130 -100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -20 2 0 {name=p4 sig_type=std_logic lab=HI}
C {devices/code_shown.sym} -140 -270 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 20n
write tran_t2_tie.raw
.endc
"}
C {devices/code_shown.sym} -140 170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {t2_tie.sym} 0 0 0 0 {name=x1}
C {noconn.sym} 110 50 1 1 {name=l1}
C {lab_pin.sym} 140 20 0 1 {name=p2 sig_type=std_logic lab=LO}
