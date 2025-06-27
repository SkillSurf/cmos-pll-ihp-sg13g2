v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -360 -390 440 10 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 7 21"
node="up
down
vout"}
N -700 110 -700 130 {lab=GND}
N -700 30 -700 50 {lab=VDD}
N -650 110 -650 130 {lab=GND}
N -590 110 -590 130 {lab=GND}
N -602 410 -602 430 {lab=GND}
N -552 504 -552 524 {lab=GND}
N -650 10 -650 50 {lab=bais_n}
N -590 10 -590 50 {lab=bais_p}
N -602 230 -602 350 {lab=up}
N -602 230 -400 230 {lab=up}
N -552 250 -552 444 {lab=down}
N -552 250 -400 250 {lab=down}
N -348 298 -348 360 {lab=GND}
N -348 150 -348 178 {lab=VDD}
N -298 160 -298 178 {lab=bais_p}
N -296 298 -296 316 {lab=bais_n}
N -250 240 -58 240 {lab=vout}
C {vsource.sym} -700 80 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -700 130 0 0 {name=l1 lab=GND}
C {vdd.sym} -700 30 0 0 {name=l2 lab=VDD}
C {gnd.sym} -348 360 0 0 {name=l3 lab=GND}
C {vdd.sym} -348 150 0 0 {name=l4 lab=VDD}
C {vsource.sym} -650 80 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -650 130 0 0 {name=l5 lab=GND}
C {vsource.sym} -590 80 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -590 130 0 0 {name=l6 lab=GND}
C {vsource.sym} -602 380 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 1NS 10NS)" savecurrent=false}
C {gnd.sym} -602 430 0 0 {name=l7 lab=GND}
C {vsource.sym} -552 474 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 0.01NS 10NS)" savecurrent=false}
C {gnd.sym} -552 524 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -298 160 1 0 {name=p3 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -296 316 3 0 {name=p4 sig_type=std_logic lab=bais_n}
C {devices/code_shown.sym} 90 160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n 
.save all
"}
C {devices/code_shown.sym} 110 310 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -420 230 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -420 250 0 0 {name=p7 sig_type=std_logic lab=down}
C {launcher.sym} 80 40 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_charge_pump_tb.raw tran"
}
C {lab_wire.sym} -650 10 1 0 {name=p8 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -590 10 1 0 {name=p9 sig_type=std_logic lab=bais_p}
C {devices/code_shown.sym} 110 360 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -58 240 2 0 {name=p5 sig_type=std_logic lab=vout}
C {charge_pump.sym} -334 238 0 0 {name=x2}
