v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 840 -70 840 20 {lab=GND}
N 900 -70 900 20 {lab=GND}
N 960 -70 960 20 {lab=GND}
N 1030 -70 1030 20 {lab=GND}
N 1080 -70 1080 20 {lab=GND}
N 780 -70 780 20 {lab=GND}
N 1030 -180 1210 -180 {lab=#net1}
N 1030 -180 1030 -130 {lab=#net1}
N 960 -200 960 -130 {lab=#net2}
N 960 -200 1210 -200 {lab=#net2}
N 900 -220 900 -130 {lab=#net3}
N 900 -220 1210 -220 {lab=#net3}
N 1510 -200 1560 -200 {lab=Vout}
N 840 -270 1350 -270 {lab=#net4}
N 840 -270 840 -130 {lab=#net4}
N 1370 -130 1370 20 {lab=GND}
N 1080 -130 1350 -130 {lab=#net5}
N 780 -290 780 -130 {lab=#net6}
N 780 -290 1370 -290 {lab=#net6}
N 1370 -290 1370 -270 {lab=#net6}
C {devices/code_shown.sym} 1620 -290 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
set filetype=ascii
set numdgt=10

foreach vval 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2
    alter Vctl dc $vval
    tran 0.1n 1u
    meas tran t1 TRIG v(Vout) VAL=0.6 RISE=1 TARG v(Vout) VAL=0.6 RISE=2
    let freq = 1 / t1
    print freq
    * Append vctl and freq formatted to txt file
    shell echo "$vval,$freq" >> freq_vs_vctl.txt
end

.endc
.end

"}
C {vsource.sym} 840 -100 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 900 -100 0 0 {name=vctl value=1 savecurrent=false}
C {vsource.sym} 960 -100 0 0 {name=Ven value=1.2 savecurrent=false}
C {vsource.sym} 1030 -100 0 0 {name=Venb value=0 savecurrent=false}
C {vsource.sym} 1080 -100 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} 780 -100 0 0 {name=VPB value=1.2 savecurrent=false}
C {gnd.sym} 1370 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 780 20 0 0 {name=l2 lab=GND}
C {gnd.sym} 1080 20 0 0 {name=l3 lab=GND}
C {gnd.sym} 1030 20 0 0 {name=l4 lab=GND}
C {gnd.sym} 960 20 0 0 {name=l5 lab=GND}
C {gnd.sym} 900 20 0 0 {name=l6 lab=GND}
C {gnd.sym} 840 20 0 0 {name=l9 lab=GND}
C {opin.sym} 1560 -200 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 780 -350 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco.sym} 1360 -200 0 0 {name=x1}
