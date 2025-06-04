v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -20 120 -20 {lab=#net1}
N 60 0 120 0 {lab=UP}
N -440 130 -440 260 {lab=GND}
N -440 0 -440 70 {lab=Fref}
N -260 20 -140 20 {lab=Ffeed}
N -440 0 -140 0 {lab=Fref}
N -260 20 -260 80 {lab=Ffeed}
N -260 140 -260 260 {lab=GND}
N 220 80 220 260 {lab=GND}
N 200 -160 200 -60 {lab=#net2}
N 160 -160 200 -160 {lab=#net2}
N 160 -100 160 -80 {lab=GND}
N 220 -80 220 -60 {lab=#net3}
N 220 -80 240 -80 {lab=#net3}
N 240 -160 240 -140 {lab=#net2}
N 200 -160 240 -160 {lab=#net2}
N 320 -0 400 0 {lab=VCON}
N 60 20 120 20 {lab=#net4}
N 60 40 120 40 {lab=DN}
C {vsource.sym} -440 100 0 0 {name=Vin1 value="dc 0 ac 0 pulse(0, 1.2, 0, 10p, 10p, 1n, 2n)" savecurrent=false}
C {gnd.sym} -440 260 0 0 {name=l1 lab=GND}
C {vsource.sym} -260 110 0 0 {name=Vin2 value="dc 0 ac 0 pulse(0, 1.2, 1n, 10p, 10p, 3n, 6n)" savecurrent=false}
C {gnd.sym} -260 260 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -320 0 1 0 {name=p5 sig_type=std_logic lab=Fref}
C {lab_pin.sym} -220 20 1 0 {name=p6 sig_type=std_logic lab=Ffeed}
C {gnd.sym} 220 260 0 0 {name=l3 lab=GND}
C {vsource.sym} 160 -130 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 160 -80 0 0 {name=l4 lab=GND}
C {isource.sym} 240 -110 0 0 {name=I0 value=80u}
C {opin.sym} 400 0 0 0 {name=p1 lab=VCON}
C {devices/code_shown.sym} 500 80 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 510 -90 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
.options abstol=1e-12 reltol=1e-3 vntol=1e-6 chgtol=1e-15 trtol=2
save all 
tran 1n 100n
plot v(Fref)+8 v(Ffeed)+6 v(UP)+4 v(DN)+2 v(VCON)
.endc
"}
C {lab_pin.sym} 80 0 1 0 {name=p2 sig_type=std_logic lab=UP}
C {lab_pin.sym} 80 40 3 0 {name=p3 sig_type=std_logic lab=DN}
C {/foss/designs/Team2/CP_LF/CP_LF.sym} 240 0 0 0 {name=x1}
C {/foss/designs/Team2/PFD/PFD.sym} -40 0 0 0 {name=x2}
