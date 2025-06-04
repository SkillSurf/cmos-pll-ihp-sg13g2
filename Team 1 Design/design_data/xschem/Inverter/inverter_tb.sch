v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 60 -180 210 {lab=GND}
N 320 0 340 0 {lab=Vout}
N -180 0 -20 0 {lab=Vin}
N 320 0 320 30 {lab=Vout}
N 320 90 320 200 {lab=GND}
N 220 -0 320 0 {lab=Vout}
C {vsource.sym} -180 30 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 0.8n, 0.8n, 2n, 4n)" savecurrent=false}
C {gnd.sym} -180 210 0 0 {name=l2 lab=GND}
C {opin.sym} 340 0 0 0 {name=p1 lab=Vout}
C {lab_pin.sym} -120 0 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 480 -50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 490 -220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 20n
.endc
"}
C {capa.sym} 320 60 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 320 200 0 0 {name=l4 lab=GND}
C {/foss/designs/Team1/inverter/inverter.sym} 100 0 0 0 {name=x1}
