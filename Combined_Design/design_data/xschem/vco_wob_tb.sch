v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 770 -10 770 80 {lab=GND}
N 850 -10 850 80 {lab=GND}
N 770 -180 770 -70 {lab=#net1}
N 770 -180 1150 -180 {lab=#net1}
N 1150 -180 1150 -150 {lab=#net1}
N 850 -80 850 -70 {lab=#net2}
N 850 -80 1040 -80 {lab=#net2}
N 1150 -10 1150 70 {lab=GND}
N 1250 -80 1310 -80 {lab=Vout}
C {devices/code_shown.sym} 1350 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
"}
C {devices/code_shown.sym} 1410 -150 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all

op
write op_vco_wob_tb.raw
.endc
"}
C {vsource.sym} 770 -40 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 850 -40 0 0 {name=vctl value=1 savecurrent=false}
C {gnd.sym} 850 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 770 80 0 0 {name=l9 lab=GND}
C {opin.sym} 1310 -80 0 0 {name=p17 lab=Vout}
C {gnd.sym} 1150 70 0 0 {name=l1 lab=GND}
C {vco_wob.sym} 1150 -80 0 0 {name=x1}
