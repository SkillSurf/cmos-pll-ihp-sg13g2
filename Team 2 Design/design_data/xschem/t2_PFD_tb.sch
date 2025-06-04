v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 210 -945 1010 -545 {flags=graph
y1=-0.2686826
y2=1.7313169
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ref_clk
color=21
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tran_pfd_t2.raw
sim_type=tran}
B 2 250 -500 1050 -100 {flags=graph
y1=-0.34299461
y2=1.6570053
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vco_clk
color=5
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
rawfile=$netlist_dir/tran_pfd_t2.raw
sim_type=tran}
B 2 -800 -1040 0 -640 {flags=graph
y1=-0.4
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=up
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -800 -680 0 -280 {flags=graph
y1=-0.4
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=down
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -800 -1440 0 -1040 {flags=graph
y1=-0.4
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref_clk
vco_clk"
color="8 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N -510 -120 -510 -90 {lab=vdd}
N -430 -120 -430 -90 {lab=ref_clk}
N -430 10 -430 40 {lab=vco_clk}
N -150 -80 -110 -80 {lab=ref_clk}
N -150 -40 -110 -40 {lab=vco_clk}
N 130 -80 170 -80 {lab=up}
N 130 -40 170 -40 {lab=down}
N 0 -140 -0 -120 {lab=vdd}
C {t2_PFD.sym} 40 -20 0 0 {name=x1}
C {vsource.sym} -510 -60 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -510 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} 0 0 0 0 {name=l2 lab=GND}
C {vsource.sym} -430 -60 0 0 {name=V2 value="PULSE(0 1.2 0 50p 50p 2.5n 5n" savecurrent=false}
C {gnd.sym} -430 -30 0 0 {name=l3 lab=GND}
C {gnd.sym} -430 100 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -430 -120 0 0 {name=p2 sig_type=std_logic lab=ref_clk}
C {lab_pin.sym} -430 10 0 0 {name=p3 sig_type=std_logic lab=vco_clk}
C {vsource.sym} -430 70 0 0 {name=V3 value="PULSE(0 1.2 1n 50p 50p 2.5n 5n" savecurrent=false}
C {lab_pin.sym} -150 -80 0 0 {name=p4 sig_type=std_logic lab=ref_clk}
C {lab_pin.sym} -150 -40 0 0 {name=p5 sig_type=std_logic lab=vco_clk}
C {lab_pin.sym} -510 -120 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 0 -140 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 170 -80 0 1 {name=p8 sig_type=std_logic lab=up}
C {lab_pin.sym} 170 -40 0 1 {name=p9 sig_type=std_logic lab=down}
C {devices/code_shown.sym} -830 160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -930 -190 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10p 40n
write tran_pfd_t2.raw
.endc
"}
C {launcher.sym} 420 -40 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/tran_pfd_t2.raw tran"
  }
