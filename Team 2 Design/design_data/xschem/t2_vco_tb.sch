v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 200 -590 1000 -190 {flags=graph
y1=0.2064
y2=1.6984
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.7500806e-07
x2=1.7505076e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1120 -610 1920 -210 {flags=graph
y1=1.6185657
y2=3.6185657
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.7500806e-07
x2=1.7505076e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
}
N -520 120 -520 210 {lab=GND}
N -460 120 -460 210 {lab=GND}
N -400 120 -400 210 {lab=GND}
N -330 120 -330 210 {lab=GND}
N -280 120 -280 210 {lab=GND}
N -580 120 -580 210 {lab=GND}
N -330 10 -150 10 {lab=#net1}
N -330 10 -330 60 {lab=#net1}
N -400 -10 -400 60 {lab=#net2}
N -400 -10 -150 -10 {lab=#net2}
N -460 -30 -460 60 {lab=#net3}
N -460 -30 -150 -30 {lab=#net3}
N 150 -10 200 -10 {lab=Vout}
N -520 -80 -10 -80 {lab=#net4}
N -520 -80 -520 60 {lab=#net4}
N 10 60 10 210 {lab=GND}
N -280 60 -10 60 {lab=#net5}
N -580 -100 -580 60 {lab=#net6}
N -580 -100 10 -100 {lab=#net6}
N 10 -100 10 -80 {lab=#net6}
C {vsource.sym} -520 90 0 0 {name=VDD value=1.2 savecurrent=false}
C {vsource.sym} -460 90 0 0 {name=vctl value=1.2 savecurrent=false}
C {vsource.sym} -400 90 0 0 {name=Ven value=1.2 savecurrent=false}
C {vsource.sym} -330 90 0 0 {name=Venb value=0 savecurrent=false}
C {vsource.sym} -280 90 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} -580 90 0 0 {name=VPB value=1.2 savecurrent=false}
C {gnd.sym} 10 210 0 0 {name=l1 lab=GND}
C {gnd.sym} -580 210 0 0 {name=l2 lab=GND}
C {gnd.sym} -280 210 0 0 {name=l3 lab=GND}
C {gnd.sym} -330 210 0 0 {name=l4 lab=GND}
C {gnd.sym} -400 210 0 0 {name=l5 lab=GND}
C {gnd.sym} -460 210 0 0 {name=l6 lab=GND}
C {gnd.sym} -520 210 0 0 {name=l9 lab=GND}
C {opin.sym} 200 -10 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} -580 -160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 310 10 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.ic v(Vout)=0
.tran 10 5u
.save all
.plot v(Vout)
.endc
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco.sym} 0 -10 0 0 {name=x1}
C {launcher.sym} 710 -130 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_vco_tb.raw tran"
}
