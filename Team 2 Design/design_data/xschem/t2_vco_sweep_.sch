v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 850 130 850 220 {lab=GND}
N 910 130 910 220 {lab=GND}
N 970 130 970 220 {lab=GND}
N 1040 130 1040 220 {lab=GND}
N 1090 130 1090 220 {lab=GND}
N 790 130 790 220 {lab=GND}
N 1040 20 1220 20 {lab=#net1}
N 1040 20 1040 70 {lab=#net1}
N 970 0 970 70 {lab=#net2}
N 970 0 1220 0 {lab=#net2}
N 910 -20 910 70 {lab=#net3}
N 910 -20 1220 -20 {lab=#net3}
N 1520 0 1570 0 {lab=Vout}
N 850 -70 1360 -70 {lab=#net4}
N 850 -70 850 70 {lab=#net4}
N 1380 70 1380 220 {lab=GND}
N 1090 70 1360 70 {lab=#net5}
N 790 -90 790 70 {lab=#net6}
N 790 -90 1380 -90 {lab=#net6}
N 1380 -90 1380 -70 {lab=#net6}
C {devices/code_shown.sym} 1090 -440 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 1700 -530 0 0 {name=NGSPICE only_toplevel=true 
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
C {vsource.sym} 850 100 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 910 100 0 0 {name=vctl value=1 savecurrent=false}
C {vsource.sym} 970 100 0 0 {name=Ven value=1.2 savecurrent=false}
C {vsource.sym} 1040 100 0 0 {name=Venb value=0 savecurrent=false}
C {vsource.sym} 1090 100 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} 790 100 0 0 {name=VPB value=1.2 savecurrent=false}
C {gnd.sym} 1380 220 0 0 {name=l1 lab=GND}
C {gnd.sym} 790 220 0 0 {name=l2 lab=GND}
C {gnd.sym} 1090 220 0 0 {name=l3 lab=GND}
C {gnd.sym} 1040 220 0 0 {name=l4 lab=GND}
C {gnd.sym} 970 220 0 0 {name=l5 lab=GND}
C {gnd.sym} 910 220 0 0 {name=l6 lab=GND}
C {gnd.sym} 850 220 0 0 {name=l9 lab=GND}
C {opin.sym} 1570 0 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 790 -150 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco.sym} 1370 0 0 0 {name=x1}
