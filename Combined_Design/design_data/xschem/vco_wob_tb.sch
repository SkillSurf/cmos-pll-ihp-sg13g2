v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1300 40 2100 440 {flags=graph
y1=0.605441
y2=2.605441
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.1165228e-06
x2=6.8834772e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/op_vco_wob_tb.raw
sim_type=tran}
N 770 -10 770 80 {lab=GND}
N 850 -10 850 80 {lab=GND}
N 770 -180 770 -70 {lab=#net1}
N 770 -180 1150 -180 {lab=#net1}
N 1150 -180 1150 -150 {lab=#net1}
N 850 -80 850 -70 {lab=#net2}
N 850 -80 1040 -80 {lab=#net2}
N 1150 -10 1150 70 {lab=GND}
N 1250 -80 1310 -80 {lab=Vout}
C {devices/code_shown.sym} 1350 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
"}
C {devices/code_shown.sym} 1410 -150 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all

op
write vco_wob_tb.raw
.endc
"}
C {vsource.sym} 770 -40 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 850 -40 0 0 {name=vctl value=1 savecurrent=false}
C {gnd.sym} 850 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 770 80 0 0 {name=l9 lab=GND}
C {opin.sym} 1310 -80 0 0 {name=p17 lab=Vout}
C {gnd.sym} 1150 70 0 0 {name=l1 lab=GND}
C {vco_wob.sym} 1150 -80 0 0 {name=x1}
C {launcher.sym} 990 310 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/vco_wob_tb.raw tran"
}
