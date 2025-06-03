v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 20 -150 20 {lab=#net1}
N -320 0 -320 20 {lab=#net2}
N -320 0 -150 0 {lab=#net2}
N -390 -20 -390 20 {lab=#net3}
N -390 -20 -150 -20 {lab=#net3}
N -440 -40 -440 20 {lab=#net4}
N -440 -40 -150 -40 {lab=#net4}
N -500 -90 -500 20 {lab=#net5}
N -500 -90 -0 -90 {lab=#net5}
N 0 70 0 120 {lab=GND}
N -270 80 -270 120 {lab=GND}
N -320 80 -320 120 {lab=GND}
N -390 80 -390 120 {lab=GND}
N -440 80 -440 120 {lab=GND}
N -500 80 -500 120 {lab=GND}
N 150 -20 200 -20 {lab=bias_n}
N 150 0 200 0 {lab=bias_p}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_bias.sym} 0 -10 0 0 {name=x1}
C {vsource.sym} -270 50 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} -320 50 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} -390 50 0 0 {name=V3 value=3 savecurrent=false}
C {vsource.sym} -440 50 0 0 {name=V4 value=3 savecurrent=false}
C {vsource.sym} -500 50 0 0 {name=V5 value=3 savecurrent=false}
C {gnd.sym} -270 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -270 120 0 0 {name=l2 lab=GND}
C {gnd.sym} -320 120 0 0 {name=l3 lab=GND}
C {gnd.sym} -390 120 0 0 {name=l4 lab=GND}
C {gnd.sym} -440 120 0 0 {name=l5 lab=GND}
C {gnd.sym} -500 120 0 0 {name=l6 lab=GND}
C {gnd.sym} 0 120 0 0 {name=l7 lab=GND}
C {opin.sym} 200 -20 0 0 {name=p1 lab=bias_n}
C {opin.sym} 200 0 0 0 {name=p2 lab=bias_p
}
