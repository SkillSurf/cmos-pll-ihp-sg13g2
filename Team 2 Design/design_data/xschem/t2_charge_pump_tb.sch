v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 40 -530 840 -130 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 7 20"
node="up
down
vout"}
N -470 -50 -470 -30 {lab=GND}
N -470 -130 -470 -110 {lab=VDD}
N -110 140 -110 160 {lab=GND}
N -110 140 -70 140 {lab=GND}
N -110 -20 -110 0 {lab=VDD}
N -110 0 -70 0 {lab=VDD}
N -420 -50 -420 -30 {lab=GND}
N -360 -50 -360 -30 {lab=GND}
N -360 180 -360 200 {lab=GND}
N -310 180 -310 200 {lab=GND}
N -310 80 -160 80 {lab=down}
N -310 80 -310 120 {lab=down}
N -360 60 -160 60 {lab=up}
N -360 60 -360 120 {lab=up}
N -420 -150 -420 -110 {lab=en}
N -360 -150 -360 -110 {lab=enb}
N -40 -40 -40 -0 {lab=bais_p}
N -40 140 -40 200 {lab=bais_n}
N 90 70 90 90 {lab=vout}
N 90 150 90 170 {lab=GND}
N 20 70 90 70 {lab=vout}
N -180 -400 -160 -400 {lab=bais_n}
N -180 -380 -130 -380 {lab=bais_p}
N -320 -310 -320 -290 {lab=GND}
N -340 -310 -320 -310 {lab=GND}
N -340 -470 -320 -470 {lab=VDD}
N -320 -490 -320 -470 {lab=VDD}
N -510 -380 -480 -380 {lab=enb}
N -510 -400 -480 -400 {lab=en}
C {vsource.sym} -470 -80 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -470 -30 0 0 {name=l1 lab=GND}
C {vdd.sym} -470 -130 0 0 {name=l2 lab=VDD}
C {gnd.sym} -110 160 0 0 {name=l3 lab=GND}
C {vdd.sym} -110 -20 0 0 {name=l4 lab=VDD}
C {vsource.sym} -420 -80 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -420 -30 0 0 {name=l5 lab=GND}
C {vsource.sym} -360 -80 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -360 -30 0 0 {name=l6 lab=GND}
C {vsource.sym} -360 150 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 2NS 10NS)" savecurrent=false}
C {gnd.sym} -360 200 0 0 {name=l7 lab=GND}
C {vsource.sym} -310 150 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS .4NS 10NS)" savecurrent=false}
C {gnd.sym} -310 200 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -40 -40 1 0 {name=p3 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -40 200 1 0 {name=p4 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -420 -150 1 0 {name=p1 sig_type=std_logic lab=en}
C {lab_wire.sym} -360 -150 1 0 {name=p2 sig_type=std_logic lab=enb}
C {gnd.sym} 90 170 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 90 70 0 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 170 -70 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n uic
.save all
"}
C {devices/code_shown.sym} 180 170 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -180 60 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -180 80 0 0 {name=p7 sig_type=std_logic lab=down}
C {capa-2.sym} 90 120 0 0 {name=C1
m=1
value="100f ic=0.6"
footprint=1206
device=polarized_capacitor}
C {launcher.sym} 480 -100 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_charge_pump_tb.raw tran"
}
C {t2_charge_pump.sym} -60 70 0 0 {name=x1}
C {t2_bias.sym} -330 -390 0 0 {name=x2}
C {gnd.sym} -320 -290 0 0 {name=l10 lab=GND}
C {vdd.sym} -320 -490 0 0 {name=l11 lab=VDD}
C {lab_wire.sym} -160 -400 1 0 {name=p8 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -130 -380 1 0 {name=p9 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -510 -400 0 0 {name=p10 sig_type=std_logic lab=en}
C {lab_wire.sym} -510 -380 0 0 {name=p11 sig_type=std_logic lab=enb}
C {devices/code_shown.sym} 180 220 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
