v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 -20 -150 -20 {lab=#net1}
N -440 -40 -150 -40 {lab=#net2}
N 150 -40 200 -40 {lab=bias_n}
N 150 -20 200 -20 {lab=bias_p}
N -320 120 -320 160 {lab=GND}
N -390 -20 -390 40 {lab=#net1}
N -440 -40 -440 40 {lab=#net2}
N -580 -140 -580 40 {lab=#net3}
N -580 -140 10 -140 {lab=#net3}
N 10 -140 10 -110 {lab=#net3}
N -500 -110 -10 -110 {lab=#net4}
N -500 -110 -500 40 {lab=#net4}
N -270 60 -10 60 {lab=#net5}
N -10 50 -10 60 {lab=#net5}
N -580 100 -390 100 {lab=GND}
N -390 100 -390 120 {lab=GND}
N -320 120 10 120 {lab=GND}
N -390 120 -320 120 {lab=GND}
N 10 50 10 120 {lab=GND}
C {vsource.sym} -270 90 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} -580 70 0 0 {name=VPB1 value=1.2 savecurrent=false}
C {vsource.sym} -390 70 0 0 {name=Venb value=0 savecurrent=false}
C {vsource.sym} -440 70 0 0 {name=Ven value=1.2 savecurrent=false}
C {vsource.sym} -500 70 0 0 {name=VPWR value=1.2 savecurrent=false}
C {gnd.sym} -320 160 0 0 {name=l7 lab=GND}
C {opin.sym} 200 -40 0 0 {name=p1 lab=bias_n}
C {opin.sym} 200 -20 0 0 {name=p2 lab=bias_p
}
C {devices/code_shown.sym} -450 -210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 360 -170 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
dc Ven 0 1.2 0.1
.save all 
plot  v(bias_n)
.endc
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_bias.sym} 0 -30 0 0 {name=x1}
