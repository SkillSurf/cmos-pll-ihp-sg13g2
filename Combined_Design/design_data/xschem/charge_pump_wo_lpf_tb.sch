v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -687.5 -591.5 112.5 -191.5 {flags=graph
y1=0
y2=1.4
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
vout_cp"
color="5 4 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
N -1325 -25 -1325 -5 {lab=GND}
N -1325 -105 -1325 -85 {lab=VDD}
N -1344 -336 -1344 -316 {lab=GND}
N -1294 -242 -1294 -222 {lab=GND}
N -1344 -516 -1344 -396 {lab=up}
N -1344 -516 -1142 -516 {lab=up}
N -1294 -496 -1294 -302 {lab=down}
N -1294 -496 -1142 -496 {lab=down}
N -986 -506 -889 -506 {lab=vout_cp}
N -1090 -590 -1090 -564 {lab=bias_p}
N -1040 -596 -1040 -563 {lab=VDD}
N -796 -212 -796 -199 {lab=VDD}
N -810 -199 -796 -199 {lab=VDD}
N -810 -199 -810 -188 {lab=VDD}
N -780 -199 -780 -188 {lab=VDD}
N -796 -199 -780 -199 {lab=VDD}
N -810 -28 -810 -21 {lab=GND}
N -794 -21 -780 -21 {lab=GND}
N -780 -29 -780 -21 {lab=GND}
N -794 -21 -794 -12 {lab=GND}
N -810 -21 -794 -21 {lab=GND}
N -1078 -50 -1078 -30 {lab=GND}
N -1020 -21 -1020 -1 {lab=GND}
N -703 -88 -680 -88 {lab=bias_p}
N -1078 -118 -997 -118 {lab=#net1}
N -1078 -118 -1078 -107 {lab=#net1}
N -1020 -98 -1020 -78 {lab=#net2}
N -1020 -98 -995 -98 {lab=#net2}
N -703 -128 -682 -128 {lab=bias_n}
N -1090 -441 -1090 -419 {lab=bias_n}
N -1040 -439 -1040 -419 {lab=GND}
N -889 -451 -889 -429 {lab=GND}
C {vsource.sym} -1325 -55 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -1325 -5 0 0 {name=l1 lab=GND}
C {vdd.sym} -1325 -105 0 0 {name=l2 lab=VDD}
C {gnd.sym} -1040 -422 0 0 {name=l3 lab=GND}
C {vdd.sym} -1040 -593 0 0 {name=l4 lab=VDD}
C {vsource.sym} -1344 -366 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 0.02NS 10NS)" savecurrent=false}
C {gnd.sym} -1344 -316 0 0 {name=l7 lab=GND}
C {vsource.sym} -1294 -272 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 2NS 10NS)" savecurrent=false}
C {gnd.sym} -1294 -222 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -1090 -590 1 0 {name=p3 sig_type=std_logic lab=bias_p}
C {lab_wire.sym} -1090 -420 3 0 {name=p4 sig_type=std_logic lab=bias_n}
C {devices/code_shown.sym} -73 -57 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n uic
.save all
"}
C {devices/code_shown.sym} -594 -90 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -1162 -516 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -1162 -496 0 0 {name=p7 sig_type=std_logic lab=down}
C {devices/code_shown.sym} -594 -40 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -952 -506 3 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {charge_pump.sym} -1080 -506 0 0 {name=x2}
C {Bias_gen.sym} -850 -108 0 0 {name=x3}
C {gnd.sym} -794 -12 0 0 {name=l13 lab=GND}
C {vsource.sym} -1078 -80 0 0 {name=V7 value=1.2 savecurrent=false}
C {gnd.sym} -1078 -30 0 0 {name=l14 lab=GND}
C {vsource.sym} -1020 -51 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} -1020 -1 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -683 -128 2 0 {name=p2 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -681 -88 2 0 {name=p10 sig_type=std_logic lab=bias_p}
C {vdd.sym} -796 -208 0 0 {name=l5 lab=VDD}
C {capa-2.sym} -889 -476 0 0 {name=C1
m=1
value="100f ic=0.5"
footprint=1206
device=polarized_capacitor}
C {gnd.sym} -889 -432 0 0 {name=l6 lab=GND}
C {launcher.sym} -60 -151 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/charge_pump_wo_lpf_tb.raw tran"
}
