v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -20 300 -20 {lab=UP}
N 140 0 300 -0 {lab=UPB}
N 220 40 300 40 {lab=DN}
N 40 60 300 60 {lab=DNB}
N -460 130 -460 260 {lab=GND}
N -460 0 -460 70 {lab=#net1}
N -460 -0 -120 -0 {lab=#net1}
N -280 170 -280 300 {lab=GND}
N -280 40 -280 110 {lab=#net2}
N -280 40 -120 40 {lab=#net2}
N 60 210 60 320 {lab=GND}
N 140 210 140 320 {lab=GND}
N 220 210 220 320 {lab=GND}
N 300 210 300 320 {lab=GND}
N 60 -20 60 150 {lab=UP}
N 40 -20 60 -20 {lab=UP}
N 140 0 140 150 {lab=UPB}
N 40 0 140 0 {lab=UPB}
N 220 40 220 150 {lab=DN}
N 40 40 220 40 {lab=DN}
N 300 60 300 150 {lab=DNB}
C {opin.sym} 300 -20 0 0 {name=p1 lab=UP}
C {opin.sym} 300 0 0 0 {name=p2 lab=UPB}
C {opin.sym} 300 40 0 0 {name=p3 lab=DN}
C {opin.sym} 300 60 0 0 {name=p4 lab=DNB}
C {devices/code_shown.sym} 440 100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 450 -70 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 1n 20n
.endc
"}
C {vsource.sym} -460 100 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 2n, 2n, 2n, 2n, 4n)" savecurrent=false}
C {gnd.sym} -460 260 0 0 {name=l1 lab=GND}
C {vsource.sym} -280 140 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 2n, 2n, 2n, 3n, 6n)" savecurrent=false}
C {gnd.sym} -280 300 0 0 {name=l2 lab=GND}
C {gnd.sym} 60 320 0 0 {name=l4 lab=GND}
C {gnd.sym} 140 320 0 0 {name=l3 lab=GND}
C {gnd.sym} 220 320 0 0 {name=l5 lab=GND}
C {gnd.sym} 300 320 0 0 {name=l6 lab=GND}
C {/foss/designs/Team2/PFD/PFD.sym} 20 20 0 0 {name=x1}
C {res.sym} 60 180 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 180 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 220 180 0 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 300 180 0 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
