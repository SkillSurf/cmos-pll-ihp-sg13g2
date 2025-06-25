v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1420 -560 2220 -160 {flags=graph
y1=-0.14380562
y2=1.3481945
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.4669403e-07
x2=2.5245863e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 770 -10 770 80 {lab=GND}
N 850 -10 850 80 {lab=GND}
N 770 -180 770 -70 {lab=#net1}
N 770 -180 1150 -180 {lab=#net1}
N 1150 -180 1150 -150 {lab=#net1}
N 850 -80 850 -70 {lab=#net2}
N 850 -80 1040 -80 {lab=#net2}
N 1150 -10 1150 70 {lab=GND}
N 1250 -80 1310 -80 {lab=Vout}
C {devices/code_shown.sym} 880 -550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {launcher.sym} 1920 -70 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/t2_vco_new_tb.raw tran"
}
C {devices/code_shown.sym} 940 -450 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
.options maxstep=10n reltol=1e-3 abstol=1e-6
tran 50p 3u
plot v(Vout) xlimit 500n 1u
fft v(Vout)
let vmag = db(mag(v(Vout)))
plot vmag xlabel 'Frequency (Hz)' xlimit 0 400Meg
wrdata fft_output(Vcon=0.9).txt vmag
.endc
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_new.sym} 1150 -80 0 0 {name=x1}
C {vsource.sym} 770 -40 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 850 -40 0 0 {name=vctl value=1.2 savecurrent=false}
C {gnd.sym} 850 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 770 80 0 0 {name=l9 lab=GND}
C {opin.sym} 1310 -80 0 0 {name=p17 lab=Vout}
C {gnd.sym} 1150 70 0 0 {name=l1 lab=GND}
