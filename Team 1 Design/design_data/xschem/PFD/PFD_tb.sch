v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -20 300 -20 {lab=UPB}
N 140 0 300 -0 {lab=UP}
N -460 130 -460 260 {lab=GND}
N -460 0 -460 70 {lab=Fref}
N -280 170 -280 300 {lab=GND}
N 60 210 60 320 {lab=GND}
N 140 210 140 320 {lab=GND}
N 220 210 220 320 {lab=GND}
N 280 210 280 320 {lab=GND}
N 60 -20 60 150 {lab=UPB}
N 40 -20 60 -20 {lab=UPB}
N 140 0 140 150 {lab=UP}
N 40 0 140 0 {lab=UP}
N -280 20 -280 110 {lab=Ffeed}
N -280 20 -160 20 {lab=Ffeed}
N -460 -0 -160 0 {lab=Fref}
N 280 40 300 40 {lab=DN}
N 220 20 300 20 {lab=DNB}
N 220 20 220 150 {lab=DNB}
N 40 20 220 20 {lab=DNB}
N 280 40 280 150 {lab=DN}
N 40 40 280 40 {lab=DN}
C {opin.sym} 300 -20 0 0 {name=p1 lab=UPB}
C {opin.sym} 300 0 0 0 {name=p2 lab=UP}
C {opin.sym} 300 20 0 0 {name=p3 lab=DNB}
C {opin.sym} 300 40 0 0 {name=p4 lab=DN}
C {devices/code_shown.sym} 360 110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 370 -60 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
.options abstol=1e-12 reltol=1e-3 vntol=1e-6 chgtol=1e-15 trtol=2
save all 
tran 1n 20n
plot v(Fref)+6 v(Ffeed)+4 v(UP)+2 v(DN)
.endc
"}
C {vsource.sym} -460 100 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 3n, 6n)" savecurrent=false}
C {gnd.sym} -460 260 0 0 {name=l1 lab=GND}
C {vsource.sym} -280 140 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 1n, 10p, 10p, 1n, 2n)" savecurrent=false}
C {gnd.sym} -280 300 0 0 {name=l2 lab=GND}
C {gnd.sym} 60 320 0 0 {name=l4 lab=GND}
C {gnd.sym} 140 320 0 0 {name=l3 lab=GND}
C {gnd.sym} 220 320 0 0 {name=l5 lab=GND}
C {gnd.sym} 280 320 0 0 {name=l6 lab=GND}
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
C {res.sym} 280 180 0 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -340 0 1 0 {name=p5 sig_type=std_logic lab=Fref}
C {lab_pin.sym} -240 20 1 0 {name=p6 sig_type=std_logic lab=Ffeed}
C {/foss/designs/Team1/PFD/PFD.sym} -60 0 0 0 {name=x1}
