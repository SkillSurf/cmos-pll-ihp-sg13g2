v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 0 180 0 {lab=Vout}
N 160 0 160 30 {lab=Vout}
N 160 90 160 200 {lab=GND}
N -240 100 -240 220 {lab=GND}
N 60 -0 160 0 {lab=Vout}
N -420 90 -420 220 {lab=GND}
N -420 -40 -420 30 {lab=VA}
N -420 -40 -160 -40 {lab=VA}
N -240 40 -160 40 {lab=VB}
C {vsource.sym} -240 70 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 2n, 4n)" savecurrent=false}
C {gnd.sym} -240 220 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -180 40 3 0 {name=p2 sig_type=std_logic lab=VB
}
C {vsource.sym} -420 60 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 5n, 10p, 10p, 3n, 6n)" savecurrent=false}
C {gnd.sym} -420 220 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -360 -40 3 0 {name=p1 sig_type=std_logic lab=VA
}
C {devices/code_shown.sym} 380 50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 390 -120 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 1n 20n
plot v(VA)+4 v(VB)+2 v(Vout)
.endc
"}
C {opin.sym} 180 0 0 0 {name=p3 lab=Vout}
C {capa.sym} 160 60 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 200 0 0 {name=l4 lab=GND}
C {/foss/designs/Team1/2NAND/2NAND.sym} 60 0 0 0 {name=x1}
