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
"}
C {devices/code_shown.sym} 1410 -150 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
.options maxstep=10n reltol=1e-3 abstol=1e-6
tran 50p 10u
plot v(Vout) xlimit 500n 10u
fft v(Vout)
let vmag = db(mag(v(Vout)))
plot vmag xlabel 'Frequency (Hz)' xlimit 0 10Meg
wrdata fft_output(Vcon=0.4).txt vmag
.endc
"}
C {vsource.sym} 770 -40 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 850 -40 0 0 {name=vctl value=0.4 savecurrent=false}
C {gnd.sym} 850 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 770 80 0 0 {name=l9 lab=GND}
C {opin.sym} 1310 -80 0 0 {name=p17 lab=Vout}
C {gnd.sym} 1150 70 0 0 {name=l1 lab=GND}
C {/foss/designs/Team1/vco_new/11Stage_vco_new.sym} 1150 -80 0 0 {name=x1}
