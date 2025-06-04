v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 200 -590 1000 -190 {flags=graph
y1=-0.092
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
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
x1=0
x2=0.001
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
N -580 120 -580 210 {lab=GND}
N -520 -80 -520 60 {lab=vco_source}
N -580 -100 -580 60 {lab=VPB}
N 700 -10 700 130 {lab=3*VPB}
N 540 220 590 220 {lab=#net1}
N 240 220 330 220 {lab=Vout}
N 420 110 420 150 {lab=3*vco_source}
N 420 110 680 110 {lab=3*vco_source}
N 680 110 680 150 {lab=3*vco_source}
N 680 110 930 110 {lab=3*vco_source}
N 930 110 930 150 {lab=3*vco_source}
N 440 130 440 150 {lab=3*VPB}
N 700 130 950 130 {lab=3*VPB}
N 950 130 950 150 {lab=3*VPB}
N 700 130 700 150 {lab=3*VPB}
N 440 130 700 130 {lab=3*VPB}
N 680 -10 680 110 {lab=3*vco_source}
N 420 350 680 350 {lab=GND}
N 420 290 420 350 {lab=GND}
N 930 290 930 350 {lab=GND}
N 680 350 930 350 {lab=GND}
N 700 290 700 330 {lab=GND}
N 700 330 950 330 {lab=GND}
N 950 290 950 330 {lab=GND}
N 440 330 700 330 {lab=GND}
N 440 290 440 330 {lab=GND}
N 680 350 680 470 {lab=GND}
N 680 290 680 350 {lab=GND}
N 700 330 700 470 {lab=GND}
N 800 220 840 220 {lab=#net2}
N 240 220 240 520 {lab=Vout}
N 240 520 1100 520 {lab=Vout}
N 1100 220 1530 220 {lab=Vout}
N 1100 220 1100 520 {lab=Vout}
N 1050 220 1100 220 {lab=Vout}
C {vsource.sym} -520 90 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} -580 90 0 0 {name=VPB value=1.2 savecurrent=false}
C {gnd.sym} 680 470 0 0 {name=l1 lab=GND}
C {gnd.sym} -580 210 0 0 {name=l2 lab=GND}
C {gnd.sym} -520 210 0 0 {name=l9 lab=GND}
C {opin.sym} 1530 220 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} -580 -160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 1190 -10 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.ic v(Vout)=1.2
.tran 10 1000u
.save all
"}
C {launcher.sym} 720 -110 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_vco_tb.raw tran"
}
C {lab_pin.sym} 680 -10 0 0 {name=p16 sig_type=std_logic lab=3*vco_source
}
C {lab_pin.sym} 700 -10 0 1 {name=p38 sig_type=std_logic lab=3*VPB
}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 430 220 0 0 {name=x1
}
C {lab_pin.sym} 240 220 0 0 {name=p20 sig_type=std_logic lab=Vout}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 690 220 0 0 {name=x2}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 940 220 0 0 {name=x3}
C {lab_pin.sym} -580 -100 0 0 {name=p2 sig_type=std_logic lab=VPB
}
C {lab_pin.sym} -520 -80 0 1 {name=p3 sig_type=std_logic lab=vco_source
}
C {gnd.sym} 700 470 0 0 {name=l3 lab=GND}
