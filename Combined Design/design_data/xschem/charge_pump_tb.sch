v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -160.5 -453.5 639.5 -53.5 {flags=graph
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
node="up
down
vout_cp
vout"
color="5 4 6 15"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
N -757 159 -757 179 {lab=GND}
N -757 79 -757 99 {lab=VDD}
N -694 159 -694 179 {lab=GND}
N -634 159 -634 179 {lab=GND}
N -817 -198 -817 -178 {lab=GND}
N -767 -104 -767 -84 {lab=GND}
N -694 59 -694 99 {lab=bais_n}
N -634 59 -634 99 {lab=bais_p}
N -817 -378 -817 -258 {lab=up}
N -817 -378 -615 -378 {lab=up}
N -767 -358 -767 -164 {lab=down}
N -767 -358 -615 -358 {lab=down}
N -459 -368 -362 -368 {lab=vout_cp}
N -308.5 -299 -308.5 -278 {lab=GND}
N -563 -452 -563 -426 {lab=bais_p}
N -563 -313 -563 -289 {lab=bais_n}
N -511 -312 -511 -286 {lab=GND}
N -513 -458 -513 -425 {lab=VDD}
N -257 -368 -229 -368 {lab=vout}
C {vsource.sym} -757 129 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -757 179 0 0 {name=l1 lab=GND}
C {vdd.sym} -757 79 0 0 {name=l2 lab=VDD}
C {gnd.sym} -511 -288 0 0 {name=l3 lab=GND}
C {vdd.sym} -513 -455 0 0 {name=l4 lab=VDD}
C {vsource.sym} -694 129 0 0 {name=V2 value=0.4 savecurrent=false}
C {gnd.sym} -694 179 0 0 {name=l5 lab=GND}
C {vsource.sym} -634 129 0 0 {name=V3 value=0.8 savecurrent=false}
C {gnd.sym} -634 179 0 0 {name=l6 lab=GND}
C {vsource.sym} -817 -228 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 2NS 10NS)" savecurrent=false}
C {gnd.sym} -817 -178 0 0 {name=l7 lab=GND}
C {vsource.sym} -767 -134 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 0.02NS 10NS)" savecurrent=false}
C {gnd.sym} -767 -84 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -563 -452 1 0 {name=p3 sig_type=std_logic lab=bais_p}
C {lab_wire.sym} -563 -289 3 0 {name=p4 sig_type=std_logic lab=bais_n}
C {devices/code_shown.sym} 364 91 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n uic
.save all
"}
C {devices/code_shown.sym} -547 98 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -635 -378 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -635 -358 0 0 {name=p7 sig_type=std_logic lab=down}
C {lab_wire.sym} -694 59 1 0 {name=p8 sig_type=std_logic lab=bais_n}
C {lab_wire.sym} -634 59 1 0 {name=p9 sig_type=std_logic lab=bais_p}
C {devices/code_shown.sym} -547 148 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -425 -368 3 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {charge_pump.sym} -549 -370 0 0 {name=x2}
C {launcher.sym} 382 17 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/charge_pump_tb.raw tran"
}
C {gnd.sym} -308.5 -280 0 0 {name=l9 lab=GND}
C {loop_filter.sym} -308.5 -342 0 0 {name=x1}
C {lab_pin.sym} -229.5 -368 3 0 {name=p1 sig_type=std_logic lab=vout}
