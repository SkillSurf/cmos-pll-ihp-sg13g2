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
N -300 -30 -300 -10 {lab=GND}
N -300 -110 -300 -90 {lab=VDD}
N 50 170 50 190 {lab=GND}
N 50 170 90 170 {lab=GND}
N 50 10 50 30 {lab=VDD}
N 50 30 90 30 {lab=VDD}
N -250 -30 -250 -10 {lab=GND}
N -190 -30 -190 -10 {lab=GND}
N -200 210 -200 230 {lab=GND}
N -150 210 -150 230 {lab=GND}
N -150 110 0 110 {lab=down}
N -150 110 -150 150 {lab=down}
N -200 90 0 90 {lab=up}
N -200 90 -200 150 {lab=up}
N -250 -130 -250 -90 {lab=en}
N -190 -130 -190 -90 {lab=enb}
N 120 -10 120 30 {lab=bais_p}
N 120 170 120 230 {lab=bais_n}
N -40 -360 -20 -360 {lab=bais_n}
N -40 -340 10 -340 {lab=bais_p}
N -180 -270 -180 -250 {lab=GND}
N -200 -270 -180 -270 {lab=GND}
N -200 -430 -180 -430 {lab=VDD}
N -180 -450 -180 -430 {lab=VDD}
N -370 -340 -340 -340 {lab=enb}
N -370 -360 -340 -360 {lab=en}
N 180 100 220 100 {lab=#net1}
N 350 100 360 100 {lab=vout}
N 270 150 270 200 {lab=GND}
N 350 90 350 100 {lab=vout}
N 330 100 350 100 {lab=vout}
C {vsource.sym} -300 -60 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -300 -10 0 0 {name=l1 lab=GND}
C {vdd.sym} -300 -110 0 0 {name=l2 lab=VDD}
C {gnd.sym} 50 190 0 0 {name=l3 lab=GND}
C {vdd.sym} 50 10 0 0 {name=l4 lab=VDD}
C {vsource.sym} -250 -60 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -250 -10 0 0 {name=l5 lab=GND}
C {vsource.sym} -190 -60 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -190 -10 0 0 {name=l6 lab=GND}
C {vsource.sym} -200 180 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 1NS 10NS)" savecurrent=false}
C {gnd.sym} -200 230 0 0 {name=l7 lab=GND}
C {vsource.sym} -150 180 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 0.01NS 10NS)" savecurrent=false}
C {gnd.sym} -150 230 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 120 -10 1 0 {name=p3 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} 120 230 1 0 {name=p4 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -250 -130 1 0 {name=p1 sig_type=std_logic lab=en}
C {lab_wire.sym} -190 -130 1 0 {name=p2 sig_type=std_logic lab=enb}
C {gnd.sym} 270 200 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} 490 20 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 200n uic
.save all
"}
C {devices/code_shown.sym} 510 170 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -20 90 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -20 110 0 0 {name=p7 sig_type=std_logic lab=down}
C {launcher.sym} 480 -100 0 0 {name=h5
descr="load waves (press Ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_charge_pump_tb.raw tran"
}
C {t2_charge_pump.sym} 100 100 0 0 {name=x1}
C {t2_bias.sym} -190 -350 0 0 {name=x2}
C {gnd.sym} -180 -250 0 0 {name=l10 lab=GND}
C {vdd.sym} -180 -450 0 0 {name=l11 lab=VDD}
C {lab_wire.sym} -20 -360 1 0 {name=p8 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} 10 -340 1 0 {name=p9 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -370 -360 0 0 {name=p10 sig_type=std_logic lab=en}
C {lab_wire.sym} -370 -340 0 0 {name=p11 sig_type=std_logic lab=enb}
C {devices/code_shown.sym} 510 220 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {t2_loop_filter.sym} 270 110 0 0 {name=x3}
C {lab_pin.sym} 360 100 2 0 {name=p5 sig_type=std_logic lab=vout}
C {noconn.sym} 350 90 1 0 {name=l12}
