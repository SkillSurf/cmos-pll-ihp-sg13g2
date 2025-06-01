v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 -40 -400 0 {lab=Vdd}
N -310 -40 -310 0 {lab=Vin}
N -210 20 -180 20 {lab=Vin}
N -60 -120 -60 -90 {lab=Vdd}
N -60 90 -60 140 {lab=GND}
N -310 60 -310 140 {lab=GND}
N -400 60 -400 140 {lab=GND}
N 130 20 190 20 {lab=Vout}
C {vsource.sym} -310 30 0 0 {name=Vin value=0 savecurrent=false}
C {vsource.sym} -400 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -400 140 0 0 {name=l1 lab=GND}
C {gnd.sym} -310 140 0 0 {name=l2 lab=GND}
C {gnd.sym} -60 140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -400 -40 0 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -310 -40 0 0 {name=p2 sig_type=std_logic lab=Vin

}
C {lab_pin.sym} -60 -120 0 0 {name=p3 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -210 20 0 0 {name=p4 sig_type=std_logic lab=Vin

}
C {opin.sym} 180 20 0 0 {name=p5 lab=Vout
}
C {devices/code_shown.sym} -390 -200 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 60 -240 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
dc Vin 0 1.8 0.1
plot v(Vin) v(Vout)
.endc
"}
C {t2_inverter.sym} 0 20 0 0 {name=x2}
