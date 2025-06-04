v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 80 0 180 {lab=GND}
N -520 80 -520 200 {lab=GND}
N -520 -40 -520 20 {lab=VDD}
N 0 -100 0 -60 {lab=VDD}
N 100 0 220 0 {lab=Q}
N -140 -0 -100 0 {lab=#net1}
N -410 80 -410 210 {lab=GND}
N -410 20 -100 20 {lab=CLK}
N 100 20 180 20 {lab=#net1}
N 180 -140 180 20 {lab=#net1}
N -140 -140 180 -140 {lab=#net1}
N -140 -140 -140 -0 {lab=#net1}
C {vsource.sym} -520 50 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} -520 200 0 0 {name=l1 lab=GND}
C {gnd.sym} 0 180 0 0 {name=l2 lab=GND}
C {opin.sym} 220 0 0 0 {name=p1 lab=Q}
C {lab_pin.sym} -520 -20 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -90 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 280 150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 280 -110 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 50p 100n
plot v(CLK)+2 v(Q)
.endc
"}
C {vsource.sym} -410 50 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 5n, 100p, 100p, 5n, 10n)" savecurrent=false}
C {gnd.sym} -410 210 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -200 20 3 0 {name=p6 sig_type=std_logic lab=CLK
}
C {/foss/designs/Team1/DFlop/DFlop.sym} 0 0 0 0 {name=x1}
