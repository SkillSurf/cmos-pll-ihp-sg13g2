v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 -40 -400 0 {lab=Vdd}
N -310 -40 -310 0 {lab=Vin}
N -210 20 -180 20 {lab=Vin}
N -100 -80 -100 -50 {lab=Vdd}
N -100 90 -100 140 {lab=GND}
N -310 60 -310 140 {lab=GND}
N -400 60 -400 140 {lab=GND}
N 20 20 80 20 {lab=Vout}
C {vsource.sym} -310 30 0 0 {name=Vin value=0 savecurrent=false}
C {vsource.sym} -400 30 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} -400 140 0 0 {name=l1 lab=GND}
C {gnd.sym} -310 140 0 0 {name=l2 lab=GND}
C {gnd.sym} -100 140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -400 -40 0 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -310 -40 0 0 {name=p2 sig_type=std_logic lab=Vin

}
C {lab_pin.sym} -100 -80 0 0 {name=p3 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -210 20 0 0 {name=p4 sig_type=std_logic lab=Vin

}
C {opin.sym} 70 20 0 0 {name=p5 lab=Vout
}
C {devices/code_shown.sym} -390 -200 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 60 -240 0 0 {name=NGSPICE only_toplevel=true 
value="

.param temp=27
.control
dc Vin 0 1.2 0.1
.save all
plot v(Vin) v(Vout)
.endc
"}
C {/foss/designs/IHP/Inverter/t2_inverter.sym} -100 20 0 0 {name=x1}
