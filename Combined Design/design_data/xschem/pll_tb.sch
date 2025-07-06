v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 350 -800 1150 -400 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vco_out
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -828 233 -828 253 {lab=GND}
N -828 153 -828 173 {lab=VDD}
N -847 -78 -847 -58 {lab=GND}
N -797 16 -797 36 {lab=GND}
N -847 -258 -847 -138 {lab=up}
N -847 -258 -645 -258 {lab=up}
N -797 -238 -797 -44 {lab=down}
N -797 -238 -645 -238 {lab=down}
N -489 -248 -392 -248 {lab=vout_cp}
N -338.5 -179 -338.5 -158 {lab=GND}
N -593 -332 -593 -306 {lab=bias_p}
N -593 -193 -593 -169 {lab=bias_n}
N -541 -192 -541 -166 {lab=GND}
N -543 -338 -543 -305 {lab=VDD}
N -287 -248 -259 -248 {lab=vout}
N -299 46 -299 59 {lab=VDD}
N -313 59 -299 59 {lab=VDD}
N -313 59 -313 70 {lab=VDD}
N -283 59 -283 70 {lab=VDD}
N -299 59 -283 59 {lab=VDD}
N -313 230 -313 237 {lab=GND}
N -297 237 -283 237 {lab=GND}
N -283 229 -283 237 {lab=GND}
N -297 237 -297 246 {lab=GND}
N -313 237 -297 237 {lab=GND}
N -581 208 -581 228 {lab=GND}
N -523 237 -523 257 {lab=GND}
N -206 170 -183 170 {lab=bias_p}
N -581 140 -500 140 {lab=#net1}
N -581 140 -581 151 {lab=#net1}
N -523 160 -523 180 {lab=#net2}
N -523 160 -498 160 {lab=#net2}
N -206 130 -185 130 {lab=bias_n}
N -120 -120 -120 -30 {lab=GND}
N -40 -120 -40 -30 {lab=GND}
N -120 -290 -120 -180 {lab=#net3}
N -120 -290 260 -290 {lab=#net3}
N 260 -290 260 -260 {lab=#net3}
N -40 -190 -40 -180 {lab=#net4}
N -40 -190 150 -190 {lab=#net4}
N 260 -120 260 -40 {lab=GND}
N 360 -190 420 -190 {lab=VCO_out}
C {vsource.sym} -828 203 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -828 253 0 0 {name=l1 lab=GND}
C {vdd.sym} -828 153 0 0 {name=l2 lab=VDD}
C {gnd.sym} -541 -168 0 0 {name=l3 lab=GND}
C {vdd.sym} -543 -335 0 0 {name=l4 lab=VDD}
C {vsource.sym} -847 -108 0 0 {name=V4 value="PULSE(0 1.2 .2NS .2NS .2NS 2NS 10NS)" savecurrent=false}
C {gnd.sym} -847 -58 0 0 {name=l7 lab=GND}
C {vsource.sym} -797 -14 0 0 {name=V5 value="PULSE(0 1.2 .2NS .2NS .2NS 0.02NS 10NS)" savecurrent=false}
C {gnd.sym} -797 36 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -593 -332 1 0 {name=p3 sig_type=std_logic lab=bias_p}
C {lab_wire.sym} -593 -169 3 0 {name=p4 sig_type=std_logic lab=bias_n}
C {devices/code_shown.sym} 424 201 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 1u uic
.save all
"}
C {devices/code_shown.sym} -97 168 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -665 -258 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -665 -238 0 0 {name=p7 sig_type=std_logic lab=down}
C {devices/code_shown.sym} -97 218 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -455 -248 3 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {charge_pump.sym} -579 -250 0 0 {name=x2}
C {gnd.sym} -338.5 -160 0 0 {name=l9 lab=GND}
C {loop_filter.sym} -338.5 -222 0 0 {name=x1}
C {lab_pin.sym} -259.5 -248 3 0 {name=p1 sig_type=std_logic lab=vout}
C {Bias_gen.sym} -353 150 0 0 {name=x3}
C {gnd.sym} -297 246 0 0 {name=l13 lab=GND}
C {vsource.sym} -581 178 0 0 {name=V7 value=1.2 savecurrent=false}
C {gnd.sym} -581 228 0 0 {name=l14 lab=GND}
C {vsource.sym} -523 207 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} -523 257 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -186 130 2 0 {name=p2 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -184 170 2 0 {name=p10 sig_type=std_logic lab=bias_p}
C {vdd.sym} -299 50 0 0 {name=l5 lab=VDD}
C {vsource.sym} -120 -150 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} -40 -150 0 0 {name=vctl value=1.0 savecurrent=false}
C {gnd.sym} -40 -30 0 0 {name=l6 lab=GND}
C {gnd.sym} -120 -30 0 0 {name=l10 lab=GND}
C {gnd.sym} 260 -40 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 420 -190 2 0 {name=p8 sig_type=std_logic lab=VCO_out}
C {launcher.sym} 830 270 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_tb.raw tran"
}
C {vco_new.sym} 260 -190 0 0 {name=x4}
