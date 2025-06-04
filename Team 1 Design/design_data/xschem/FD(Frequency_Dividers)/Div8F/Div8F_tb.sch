v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 120 -400 240 {lab=GND}
N -280 120 -280 250 {lab=GND}
N -280 -0 -280 60 {lab=FIN}
N -280 0 -100 0 {lab=FIN}
N -400 -80 -400 60 {lab=VDD}
N -400 -80 -0 -80 {lab=VDD}
N 0 -80 -0 -60 {lab=VDD}
N 0 60 -0 240 {lab=GND}
N 100 -0 160 -0 {lab=FOUT}
C {vsource.sym} -400 90 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} -400 240 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -400 20 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -280 90 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 5n, 100p, 100p, 5n, 10n)" savecurrent=false}
C {gnd.sym} -280 250 0 0 {name=l4 lab=GND}
C {gnd.sym} 0 240 0 0 {name=l2 lab=GND}
C {opin.sym} 160 0 0 0 {name=p1 lab=FOUT}
C {lab_pin.sym} -200 0 1 0 {name=p2 sig_type=std_logic lab=FIN}
C {devices/code_shown.sym} 280 120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 280 -140 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 100n
plot v(FIN)+2 v(FOUT)
.endc
"}
C {/foss/designs/Team1/FD/Div8F/Div8F.sym} 60 0 0 0 {name=x1}
