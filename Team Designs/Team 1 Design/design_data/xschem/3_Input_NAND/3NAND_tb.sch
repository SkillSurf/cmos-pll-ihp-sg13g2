v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -470 60 -470 210 {lab=GND}
N -470 0 -110 -0 {lab=VB}
N -650 60 -650 210 {lab=GND}
N -650 -20 -650 0 {lab=VA}
N 160 0 180 0 {lab=Vout}
N 160 0 160 30 {lab=Vout}
N 160 90 160 200 {lab=GND}
N -340 80 -340 210 {lab=GND}
N -650 -20 -110 -20 {lab=VA}
N -340 20 -110 20 {lab=VC}
N 120 0 160 0 {lab=Vout}
C {vsource.sym} -470 30 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 8n, 16n)" savecurrent=false}
C {gnd.sym} -470 210 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -410 0 3 0 {name=p2 sig_type=std_logic lab=VB
}
C {vsource.sym} -650 30 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 2n, 10p, 10p, 2n, 4n)" savecurrent=false}
C {gnd.sym} -650 210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -590 -20 3 0 {name=p1 sig_type=std_logic lab=VA
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
tran 10n 30n
plot v(VA)+6 v(VB)+4 v(VC)+2 v(Vout)
.endc
"}
C {opin.sym} 180 0 0 0 {name=p3 lab=Vout}
C {capa.sym} 160 60 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 200 0 0 {name=l4 lab=GND}
C {vsource.sym} -340 50 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 5n, 10p, 10p, 5n, 10n)" savecurrent=false}
C {gnd.sym} -340 210 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -180 20 3 0 {name=p4 sig_type=std_logic lab=VC
}
C {/foss/designs/Team1/3NAND/3NAND.sym} 30 0 0 0 {name=x1}
