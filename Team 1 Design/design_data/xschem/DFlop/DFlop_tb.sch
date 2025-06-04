v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 80 -20 180 {lab=GND}
N -740 60 -740 180 {lab=GND}
N -740 -60 -740 0 {lab=VDD}
N -20 -100 -20 -60 {lab=VDD}
N 80 -0 200 -0 {lab=Q}
N 80 20 200 20 {lab=QBAR}
N -560 60 -560 210 {lab=GND}
N -560 0 -120 -0 {lab=D}
N -430 80 -430 210 {lab=GND}
N -430 20 -120 20 {lab=CLK}
C {vsource.sym} -740 30 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} -740 180 0 0 {name=l1 lab=GND}
C {gnd.sym} -20 180 0 0 {name=l2 lab=GND}
C {opin.sym} 200 0 0 0 {name=p1 lab=Q}
C {opin.sym} 200 20 0 0 {name=p2 lab=QBAR}
C {lab_pin.sym} -740 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 -90 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 410 140 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 410 -120 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 100n
plot v(D)+4 v(CLK)+2 v(Q)
.endc
"}
C {vsource.sym} -560 30 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 3n, 100p, 100p, 3n, 6n)" savecurrent=false}
C {gnd.sym} -560 210 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -500 0 3 0 {name=p5 sig_type=std_logic lab=D
}
C {vsource.sym} -430 50 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 5n, 100p, 100p, 5n, 10n)" savecurrent=false}
C {gnd.sym} -430 210 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -220 20 3 0 {name=p6 sig_type=std_logic lab=CLK
}
C {/foss/designs/Team1/DFlop/DFlop.sym} -20 0 0 0 {name=x1}
