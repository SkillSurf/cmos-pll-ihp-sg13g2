v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -20 40 -20 {lab=#net1}
N -20 -0 40 0 {lab=UP}
N -20 20 40 20 {lab=#net2}
N -20 40 40 40 {lab=DN}
N 240 -0 300 0 {lab=VCON}
N 380 60 380 100 {lab=GND}
N 140 100 380 100 {lab=GND}
N 140 80 140 100 {lab=GND}
N 460 -0 520 -0 {lab=#net3}
N 520 -0 520 220 {lab=#net3}
N 180 220 520 220 {lab=#net3}
N -280 20 -220 20 {lab=Ffeed}
N -280 20 -280 220 {lab=Ffeed}
N -280 220 -20 220 {lab=Ffeed}
N 120 -120 120 -60 {lab=Vdd}
N 140 -120 140 -60 {lab=ICP}
N 380 -120 380 -50 {lab=Vdd}
N 80 120 80 160 {lab=Vdd}
N -670 60 -670 80 {lab=GND}
N 80 280 80 300 {lab=GND}
N 380 100 380 120 {lab=GND}
N -670 -60 -670 0 {lab=Vdd}
N -590 -60 -590 0 {lab=Vdd}
N -590 60 -590 100 {lab=ICP}
N -520 60 -520 190 {lab=GND}
N -520 -0 -220 -0 {lab=Fref}
C {/foss/designs/Team1/PFD/PFD.sym} -120 0 0 0 {name=x1}
C {/foss/designs/Team1/CP_LF/CP_LF.sym} 160 0 0 0 {name=x2}
C {/foss/designs/Team1/VCO/VCO_3Stages.sym} 400 0 0 0 {name=x3}
C {/foss/designs/Team1/FD/Div8F/Div8F.sym} 20 220 0 1 {name=x4}
C {vsource.sym} -670 30 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -670 80 0 0 {name=l4 lab=GND}
C {isource.sym} -590 30 0 0 {name=I0 value=80u}
C {gnd.sym} 80 300 0 0 {name=l1 lab=GND}
C {gnd.sym} 380 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -670 -40 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -590 -40 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 120 -100 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 380 -100 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 80 140 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -590 80 0 0 {name=p6 sig_type=std_logic lab=ICP}
C {lab_pin.sym} 140 -100 2 0 {name=p7 sig_type=std_logic lab=ICP}
C {vsource.sym} -520 30 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 2.5n, 5n)" savecurrent=false}
C {gnd.sym} -520 190 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -400 0 1 0 {name=p8 sig_type=std_logic lab=Fref}
C {lab_pin.sym} -240 220 1 0 {name=p9 sig_type=std_logic lab=Ffeed}
C {devices/code_shown.sym} 560 -60 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
.options maxstep=10n reltol=1e-3 abstol=1e-6
tran 50p 200n
plot v(Fref) v(Ffeed)
.endc
"}
C {devices/code_shown.sym} 570 170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_pin.sym} 0 0 1 0 {name=p10 sig_type=std_logic lab=UP}
C {lab_pin.sym} 0 40 3 0 {name=p11 sig_type=std_logic lab=DN}
C {lab_pin.sym} 260 0 1 0 {name=p12 sig_type=std_logic lab=VCON}
