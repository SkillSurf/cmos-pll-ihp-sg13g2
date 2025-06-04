v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 40 100 40 {lab=Vout}
N 80 40 80 70 {lab=Vout}
N 80 130 80 240 {lab=GND}
N -320 140 -320 260 {lab=GND}
N -20 40 80 40 {lab=Vout}
N -500 130 -500 260 {lab=GND}
N -500 0 -500 70 {lab=VA}
N -500 0 -240 0 {lab=VA}
N -320 80 -240 80 {lab=VB}
N -180 140 -180 260 {lab=GND}
N -620 -60 -620 80 {lab=#net1}
N -620 -60 -180 -60 {lab=#net1}
N -620 140 -620 260 {lab=GND}
C {vsource.sym} -320 110 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 2n, 4n)" savecurrent=false}
C {gnd.sym} -320 260 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -260 80 3 0 {name=p2 sig_type=std_logic lab=VB
}
C {vsource.sym} -500 100 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 5n, 10p, 10p, 3n, 6n)" savecurrent=false}
C {gnd.sym} -500 260 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -440 0 3 0 {name=p1 sig_type=std_logic lab=VA
}
C {devices/code_shown.sym} 300 90 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 310 -80 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 1n 20n
plot v(VA)+4 v(VB)+2 v(Vout)
.endc
"}
C {opin.sym} 100 40 0 0 {name=p3 lab=Vout}
C {capa.sym} 80 100 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 80 240 0 0 {name=l4 lab=GND}
C {gnd.sym} -180 260 0 0 {name=l3 lab=GND}
C {vsource.sym} -620 110 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -620 260 0 0 {name=l5 lab=GND}
C {/foss/designs/Team1/New_2NAND/New_2NAND.sym} -120 40 0 0 {name=x1}
