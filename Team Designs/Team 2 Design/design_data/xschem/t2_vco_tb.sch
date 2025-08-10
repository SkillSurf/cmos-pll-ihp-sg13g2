v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 200 -590 1000 -190 {flags=graph
y1=-0.3904
y2=1.1016
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0321523e-08
x2=2.6763974e-08
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
N -580 -200 -580 -110 {lab=GND}
N -520 -200 -520 -110 {lab=GND}
N -460 -200 -460 -110 {lab=GND}
N -390 -200 -390 -110 {lab=GND}
N -340 -200 -340 -110 {lab=GND}
N -640 -200 -640 -110 {lab=GND}
N -390 -310 -210 -310 {lab=#net1}
N -390 -310 -390 -260 {lab=#net1}
N -460 -330 -460 -260 {lab=#net2}
N -460 -330 -210 -330 {lab=#net2}
N -520 -350 -520 -260 {lab=#net3}
N -520 -350 -210 -350 {lab=#net3}
N 90 -330 140 -330 {lab=Vout}
N -580 -400 -70 -400 {lab=#net4}
N -580 -400 -580 -260 {lab=#net4}
N -50 -260 -50 -110 {lab=GND}
N -340 -260 -70 -260 {lab=#net5}
N -640 -420 -640 -260 {lab=#net6}
N -640 -420 -50 -420 {lab=#net6}
N -50 -420 -50 -400 {lab=#net6}
C {vsource.sym} -580 -230 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} -520 -230 0 0 {name=vctl value=1 savecurrent=false}
C {vsource.sym} -460 -230 0 0 {name=Ven value=1.2 savecurrent=false}
C {vsource.sym} -390 -230 0 0 {name=Venb value=0 savecurrent=false}
C {vsource.sym} -340 -230 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} -640 -230 0 0 {name=VPB value=1.2 savecurrent=false}
C {gnd.sym} -50 -110 0 0 {name=l1 lab=GND}
C {gnd.sym} -640 -110 0 0 {name=l2 lab=GND}
C {gnd.sym} -340 -110 0 0 {name=l3 lab=GND}
C {gnd.sym} -390 -110 0 0 {name=l4 lab=GND}
C {gnd.sym} -460 -110 0 0 {name=l5 lab=GND}
C {gnd.sym} -520 -110 0 0 {name=l6 lab=GND}
C {gnd.sym} -580 -110 0 0 {name=l9 lab=GND}
C {opin.sym} 140 -330 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} -640 -480 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {launcher.sym} 720 -110 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_vco_tb.raw tran"
}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco.sym} -60 -330 0 0 {name=x1}
C {devices/code_shown.sym} 540 -40 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.tran 50p 50n
.save all 
"}
