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
N -798 113 -798 133 {lab=GND}
N -798 33 -798 53 {lab=VDD}
N -817 -198 -817 -178 {lab=GND}
N -767 -104 -767 -84 {lab=GND}
N -817 -378 -817 -258 {lab=up}
N -817 -378 -615 -378 {lab=up}
N -767 -358 -767 -164 {lab=down}
N -767 -358 -615 -358 {lab=down}
N -459 -368 -362 -368 {lab=vout_cp}
N -308.5 -299 -308.5 -278 {lab=GND}
N -563 -452 -563 -426 {lab=bias_p}
N -513 -458 -513 -425 {lab=VDD}
N -257 -368 -229 -368 {lab=vout}
N -269 -74 -269 -61 {lab=VDD}
N -283 -61 -269 -61 {lab=VDD}
N -283 -61 -283 -50 {lab=VDD}
N -253 -61 -253 -50 {lab=VDD}
N -269 -61 -253 -61 {lab=VDD}
N -283 110 -283 117 {lab=GND}
N -267 117 -253 117 {lab=GND}
N -253 109 -253 117 {lab=GND}
N -267 117 -267 126 {lab=GND}
N -283 117 -267 117 {lab=GND}
N -551 88 -551 108 {lab=GND}
N -493 117 -493 137 {lab=GND}
N -176 50 -153 50 {lab=bias_p}
N -551 20 -470 20 {lab=#net1}
N -551 20 -551 31 {lab=#net1}
N -493 40 -493 60 {lab=#net2}
N -493 40 -468 40 {lab=#net2}
N -176 10 -155 10 {lab=bias_n}
N -563 -303 -563 -281 {lab=bias_n}
N -513 -301 -513 -281 {lab=GND}
C {vsource.sym} -798 83 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -798 133 0 0 {name=l1 lab=GND}
C {vdd.sym} -798 33 0 0 {name=l2 lab=VDD}
C {gnd.sym} -513 -284 0 0 {name=l3 lab=GND}
C {vdd.sym} -513 -455 0 0 {name=l4 lab=VDD}
C {vsource.sym} -817 -228 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 2NS 10NS)" savecurrent=false}
C {gnd.sym} -817 -178 0 0 {name=l7 lab=GND}
C {vsource.sym} -767 -134 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 0.02NS 10NS)" savecurrent=false}
C {gnd.sym} -767 -84 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -563 -452 1 0 {name=p3 sig_type=std_logic lab=bias_p}
C {lab_wire.sym} -563 -282 3 0 {name=p4 sig_type=std_logic lab=bias_n}
C {devices/code_shown.sym} 454 81 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n uic
.save all
"}
C {devices/code_shown.sym} -67 48 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -635 -378 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -635 -358 0 0 {name=p7 sig_type=std_logic lab=down}
C {devices/code_shown.sym} -67 98 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -425 -368 3 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {charge_pump.sym} -553 -368 0 0 {name=x2}
C {launcher.sym} 502 7 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/charge_pump_tb.raw tran"
}
C {gnd.sym} -308.5 -280 0 0 {name=l9 lab=GND}
C {loop_filter.sym} -308.5 -338 0 0 {name=x1}
C {lab_pin.sym} -229.5 -368 3 0 {name=p1 sig_type=std_logic lab=vout}
C {Bias_gen.sym} -323 30 0 0 {name=x3}
C {gnd.sym} -267 126 0 0 {name=l13 lab=GND}
C {vsource.sym} -551 58 0 0 {name=V7 value=1.2 savecurrent=false}
C {gnd.sym} -551 108 0 0 {name=l14 lab=GND}
C {vsource.sym} -493 87 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} -493 137 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -156 10 2 0 {name=p2 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -154 50 2 0 {name=p10 sig_type=std_logic lab=bias_p}
C {vdd.sym} -269 -70 0 0 {name=l5 lab=VDD}
