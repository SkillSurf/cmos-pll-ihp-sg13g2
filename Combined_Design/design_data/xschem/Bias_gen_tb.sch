v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 225 -199 1025 201 {flags=graph
y1=0.24
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="bias_p
bias_n"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N -304 -81 -304 -61 {lab=GND}
N -304 -161 -304 -141 {lab=VDD}
N 34 -104 34 -91 {lab=VDD}
N 20 -91 34 -91 {lab=VDD}
N 20 -91 20 -80 {lab=VDD}
N 50 -91 50 -80 {lab=VDD}
N 34 -91 50 -91 {lab=VDD}
N 20 80 20 87 {lab=GND}
N 36 87 50 87 {lab=GND}
N 50 79 50 87 {lab=GND}
N 36 87 36 96 {lab=GND}
N 20 87 36 87 {lab=GND}
N -310 57 -310 77 {lab=GND}
N -230 87 -230 107 {lab=GND}
N -230 10 -167 10 {lab=#net1}
N -230 10 -230 32 {lab=#net1}
N -310 -10 -167 -10 {lab=#net2}
N -310 -10 -310 2 {lab=#net2}
N 127 20 150 20 {lab=bias_p}
N 127 -20 148 -20 {lab=bias_n}
C {Bias_gen.sym} -20 0 0 0 {name=x1}
C {vsource.sym} -304 -111 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -304 -61 0 0 {name=l1 lab=GND}
C {vdd.sym} -304 -161 0 0 {name=l2 lab=VDD}
C {vdd.sym} 34 -101 0 0 {name=l3 lab=VDD}
C {gnd.sym} 36 96 0 0 {name=l4 lab=GND}
C {vsource.sym} -310 27 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -310 77 0 0 {name=l5 lab=GND}
C {vsource.sym} -230 57 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -230 107 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 147 -20 2 0 {name=p1 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} 149 20 2 0 {name=p2 sig_type=std_logic lab=bias_p}
C {devices/code_shown.sym} 847 240 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 1n 100n uic
.save all
"}
C {launcher.sym} 900 -227 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Bias_gen_tb.raw tran"
}
C {devices/code_shown.sym} 385 325 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 386 244 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
