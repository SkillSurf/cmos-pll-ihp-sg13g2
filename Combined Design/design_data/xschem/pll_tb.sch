v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 632 -788 1432 -388 {flags=graph
y1=-0.056
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=3e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref_clk
vco_out"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 632 -353 1432 47 {flags=graph
y1=0.015
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=3e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1450 -788 2250 -388 {flags=graph
y1=-0.029
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=3e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=up
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1450 -353 2250 47 {flags=graph
y1=-0.034
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-12
x2=3e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=down
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
N 81 431 81 451 {lab=GND}
N 81 351 81 371 {lab=VDD}
N -280 -225 -183 -225 {lab=vout_cp}
N -129.5 -156 -129.5 -135 {lab=GND}
N -384 -309 -384 -283 {lab=bias_p}
N -384 -170 -384 -146 {lab=bias_n}
N -332 -169 -332 -143 {lab=GND}
N -334 -315 -334 -282 {lab=VDD}
N -78 -225 -50 -225 {lab=vout}
N 474 206 474 219 {lab=VDD}
N 460 219 474 219 {lab=VDD}
N 460 219 460 230 {lab=VDD}
N 490 219 490 230 {lab=VDD}
N 474 219 490 219 {lab=VDD}
N 460 390 460 397 {lab=GND}
N 476 397 490 397 {lab=GND}
N 490 389 490 397 {lab=GND}
N 476 397 476 406 {lab=GND}
N 460 397 476 397 {lab=GND}
N 192 368 192 388 {lab=GND}
N 250 397 250 417 {lab=GND}
N 567 330 590 330 {lab=bias_p}
N 192 300 273 300 {lab=#net1}
N 192 300 192 311 {lab=#net1}
N 250 320 250 340 {lab=#net2}
N 250 320 275 320 {lab=#net2}
N 567 290 588 290 {lab=bias_n}
N 219 -317 219 -287 {lab=VDD}
N 219 -147 219 -67 {lab=GND}
N 69 -217 109 -217 {lab=vout}
N -617 398 -617 418 {lab=GND}
N -617 267 -440 267 {lab=ref_clk}
N -617 267 -617 342 {lab=ref_clk}
N -463 287 -440 287 {lab=VCO_out}
N -267 267 -248 267 {lab=up}
N -266 287 -248 287 {lab=down}
N -343 333 -343 354 {lab=GND}
N -343 195 -343 223 {lab=VDD}
N 414 -279 414 -257 {lab=VDD}
N 493 -217 516 -217 {lab=VCO_out}
N 414 -181 414 -144 {lab=GND}
N 319 -217 368 -217 {lab=#net3}
N -457 -215 -429 -215 {lab=down}
N -457 -235 -429 -235 {lab=up}
C {vsource.sym} 81 401 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 81 451 0 0 {name=l1 lab=GND}
C {vdd.sym} 81 351 0 0 {name=l2 lab=VDD}
C {gnd.sym} -332 -145 0 0 {name=l3 lab=GND}
C {vdd.sym} -334 -312 0 0 {name=l4 lab=VDD}
C {lab_wire.sym} -384 -309 1 0 {name=p3 sig_type=std_logic lab=bias_p}
C {lab_wire.sym} -384 -146 3 0 {name=p4 sig_type=std_logic lab=bias_n}
C {devices/code_shown.sym} 771 414 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 1u uic
.save all
"}
C {devices/code_shown.sym} 669 239 0 0 {name=TRANS_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} -456 -235 0 0 {name=p6 sig_type=std_logic lab=up}
C {lab_wire.sym} -456 -215 0 0 {name=p7 sig_type=std_logic lab=down}
C {devices/code_shown.sym} 669 289 0 0 {name=RES_MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {lab_pin.sym} -246 -225 3 0 {name=p5 sig_type=std_logic lab=vout_cp}
C {charge_pump.sym} -370 -227 0 0 {name=x2}
C {gnd.sym} -129.5 -137 0 0 {name=l9 lab=GND}
C {loop_filter.sym} -129.5 -199 0 0 {name=x1}
C {lab_pin.sym} -50.5 -225 3 0 {name=p1 sig_type=std_logic lab=vout}
C {Bias_gen.sym} 420 310 0 0 {name=x3}
C {gnd.sym} 476 406 0 0 {name=l13 lab=GND}
C {vsource.sym} 192 338 0 0 {name=V7 value=1.2 savecurrent=false}
C {gnd.sym} 192 388 0 0 {name=l14 lab=GND}
C {vsource.sym} 250 367 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} 250 417 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 587 290 2 0 {name=p2 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} 589 330 2 0 {name=p10 sig_type=std_logic lab=bias_p}
C {vdd.sym} 474 210 0 0 {name=l5 lab=VDD}
C {gnd.sym} 219 -67 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 515 -217 2 0 {name=p8 sig_type=std_logic lab=VCO_out}
C {launcher.sym} 1177 481 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_tb.raw tran"
}
C {vco_new.sym} 219 -217 0 0 {name=x4}
C {vdd.sym} 219 -314 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} 70.5 -217 3 0 {name=p9 sig_type=std_logic lab=vout}
C {PFD.sym} -343 277 0 0 {name=x5}
C {vsource.sym} -617 368 0 0 {name=V2 value="PULSE(0 1.2 .2NS .2NS .2NS 15NS 30NS)" savecurrent=false}
C {gnd.sym} -617 418 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -462 287 0 0 {name=p11 sig_type=std_logic lab=VCO_out}
C {lab_pin.sym} -249 267 2 0 {name=p12 sig_type=std_logic lab=up}
C {lab_pin.sym} -249 287 2 0 {name=p13 sig_type=std_logic lab=down}
C {gnd.sym} -343 350 0 0 {name=l12 lab=GND}
C {vdd.sym} -343 202 0 0 {name=l16 lab=VDD}
C {lab_wire.sym} -526 267 0 0 {name=p14 sig_type=std_logic lab=ref_clk}
C {inverter.sym} 434 -217 0 0 {name=x6}
C {vdd.sym} 414 -274 0 0 {name=l17 lab=VDD}
C {gnd.sym} 414 -147 0 0 {name=l18 lab=GND}
