v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -970 160 -970 200 {lab=GND}
N -970 60 -970 100 {lab=VDD}
N -810 160 -810 200 {lab=GND}
N -810 60 -810 100 {lab=CLK_IN}
N -330 80 -330 130 {lab=GND}
N -330 -40 -330 -20 {lab=VDD}
N -810 -80 -810 -40 {lab=GND}
N -810 -180 -810 -140 {lab=REF}
N -470 40 -420 40 {lab=CLK_IN}
N -440 20 -420 20 {lab=REF}
N -260 40 -230 40 {lab=down}
N -260 20 -230 20 {lab=up}
C {vsource.sym} -970 130 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} -970 60 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} -810 130 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 4n, 100p, 100p, 6.25n, 12.5n)" savecurrent=false}
C {lab_pin.sym} -810 60 1 0 {name=p19 sig_type=std_logic lab=CLK_IN}
C {gnd.sym} -970 200 0 0 {name=l2 lab=GND}
C {gnd.sym} -810 200 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -1020 -360 0 0 {name=MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
place=header}
C {devices/code_shown.sym} -150 -430 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.control
save all 
op

write op_PFD_tb.raw
.endc
"}
C {PFD.sym} -330 30 0 0 {name=x1}
C {gnd.sym} -330 120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -330 -40 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -810 -110 0 0 {name=Vclk1 value="dc 0 ac 0 pulse(0, 1.2, 2n, 100p, 100p, 6.25n, 12.5n)" savecurrent=false}
C {lab_pin.sym} -810 -180 1 0 {name=p2 sig_type=std_logic lab=REF}
C {gnd.sym} -810 -40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -470 40 1 0 {name=p3 sig_type=std_logic lab=CLK_IN}
C {lab_pin.sym} -440 20 1 0 {name=p4 sig_type=std_logic lab=REF}
C {lab_pin.sym} -230 40 2 0 {name=p5 sig_type=std_logic lab=down}
C {lab_pin.sym} -230 20 2 0 {name=p6 sig_type=std_logic lab=up}
