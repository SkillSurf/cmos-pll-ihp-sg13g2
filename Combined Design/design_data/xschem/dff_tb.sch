v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 400 -260 1200 140 {flags=graph
y1=-0.048
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="q
"
color=9
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 400 -700 1200 -300 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="d
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 400 180 1200 580 {flags=graph
y1=-0.031
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="qn
"
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -440 -700 360 -300 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7.5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -180 0 -50 0 {lab=d}
N -180 0 -180 100 {lab=d}
N -260 90 -260 110 {lab=GND}
N -180 160 -180 180 {lab=GND}
N -100 20 -50 20 {lab=#net1}
N 160 -20 190 -20 {lab=q}
N 160 0 190 0 {lab=qn}
N 160 -40 160 -20 {lab=q}
N 130 -20 160 -20 {lab=q}
N 160 0 160 20 {lab=qn}
N 130 0 160 0 {lab=qn}
N -100 230 -100 250 {lab=GND}
N -100 20 -100 170 {lab=#net1}
N -260 -60 -260 30 {lab=clk}
N -260 -60 -100 -60 {lab=clk}
N -100 -60 -100 -20 {lab=clk}
N -100 -20 -50 -20 {lab=clk}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 40 0 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -260 60 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 6.25n, 100p, 100p, 6.25n, 12.5n)" savecurrent=false}
C {vsource.sym} -180 130 0 0 {name=Vdin value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 12.5n, 25n)" savecurrent=false}
C {gnd.sym} -260 110 0 0 {name=l1 lab=GND}
C {gnd.sym} -180 180 0 0 {name=l2 lab=GND}
C {noconn.sym} 190 -20 2 0 {name=l4}
C {noconn.sym} 190 0 2 0 {name=l5}
C {lab_pin.sym} -260 -20 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_pin.sym} -180 0 0 0 {name=p2 sig_type=std_logic lab=d}
C {lab_pin.sym} 160 -40 1 0 {name=p3 sig_type=std_logic lab=q}
C {lab_pin.sym} 160 20 3 0 {name=p4 sig_type=std_logic lab=qn}
C {devices/code_shown.sym} -440 -200 0 0 {name=MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
place=header}
C {devices/code_shown.sym} -440 230 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
vvdd vdd 0 dc 1.2
vvss vss 0 0
.control
pre_osdi ./psp103_nqs.osdi
save all 
tran 50p 75n

write tran_dff.raw
.endc
"}
C {devices/launcher.sym} -90 520 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tran_dff.raw tran"}
C {vsource.sym} -100 200 0 0 {name=Vrst value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 40n, 75n)" savecurrent=false}
C {gnd.sym} -100 250 0 0 {name=Vrst1 lab=GND}
