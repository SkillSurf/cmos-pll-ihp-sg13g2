v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -340 -80 -340 -0 {lab=VDD}
N -340 -80 -20 -80 {lab=VDD}
N -20 -80 -20 -50 {lab=VDD}
N -200 -0 -100 -0 {lab=Vin}
N -340 60 -340 120 {lab=GND}
N -200 60 -200 120 {lab=GND}
N -20 60 -20 120 {lab=GND}
N 60 0 120 0 {lab=VOUT}
C {vsource.sym} -340 30 0 0 {name=VDD value=1.2 savecurrent=false}
C {vsource.sym} -200 30 0 0 {name=Vin value=0.8 savecurrent=false}
C {gnd.sym} -340 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -200 120 0 0 {name=l2 lab=GND}
C {gnd.sym} -20 120 0 0 {name=l3 lab=GND}
C {opin.sym} 120 0 0 0 {name=p1 lab=VOUT}
C {devices/code_shown.sym} 200 -220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
.options maxstep=10n reltol=1e-3 abstol=1e-6
tran 50p 50n
plot v(VOUT)
.endc
"}
C {lab_pin.sym} -160 -80 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -160 0 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 210 10 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {/foss/designs/Team1/VCO/VCO_3Stages.sym} 0 0 0 0 {name=x1}
