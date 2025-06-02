v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -520 120 -520 210 {lab=GND}
N -460 120 -460 210 {lab=GND}
N -400 120 -400 210 {lab=GND}
N -330 120 -330 210 {lab=GND}
N -280 120 -280 210 {lab=GND}
N -230 120 -230 210 {lab=GND}
N -230 50 -230 60 {lab=#net1}
N -230 50 -150 50 {lab=#net1}
N -280 30 -280 60 {lab=#net2}
N -280 30 -150 30 {lab=#net2}
N -330 10 -150 10 {lab=#net3}
N -330 10 -330 60 {lab=#net3}
N -400 -10 -400 60 {lab=#net4}
N -400 -10 -150 -10 {lab=#net4}
N -460 -30 -460 60 {lab=#net5}
N -460 -30 -150 -30 {lab=#net5}
N -520 -60 -520 60 {lab=#net6}
N -520 -60 -0 -60 {lab=#net6}
N 0 80 0 210 {lab=GND}
N 150 10 200 10 {lab=Vout}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco.sym} 0 10 0 0 {name=x1}
C {vsource.sym} -520 90 0 0 {name=VPWR value=1.8 savecurrent=false}
C {vsource.sym} -460 90 0 0 {name=vctl value=1.8 savecurrent=false}
C {vsource.sym} -400 90 0 0 {name=en value=1.8 savecurrent=false}
C {vsource.sym} -330 90 0 0 {name=enb value=0 savecurrent=false}
C {vsource.sym} -280 90 0 0 {name=VNB value=0 savecurrent=false}
C {vsource.sym} -230 90 0 0 {name=VPB value=1.8 savecurrent=false}
C {gnd.sym} 0 210 0 0 {name=l1 lab=GND}
C {gnd.sym} -230 210 0 0 {name=l2 lab=GND}
C {gnd.sym} -280 210 0 0 {name=l3 lab=GND}
C {gnd.sym} -330 210 0 0 {name=l4 lab=GND}
C {gnd.sym} -400 210 0 0 {name=l5 lab=GND}
C {gnd.sym} -460 210 0 0 {name=l6 lab=GND}
C {gnd.sym} -520 210 0 0 {name=l9 lab=GND}
C {opin.sym} 200 10 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 270 -170 0 0 {name=NGSPICE only_toplevel=true 
value="
.include dc_lv_nmos.save
.param temp=27

* Power Supplies
VVPWR VPWR 0 1.8
VVPB  VPB  0 1.8
VVGND VGND 0 0
VVNB  VNB  0 0

* Control Inputs
VCTL vctl 0 PULSE(0.4 1.4 0 1n 1n 1u 2u)   ; Control voltage: oscillates to vary frequency
VEN   en   0 DC 1.8                         ; Enable signal (active high)
VENB  enb  0 DC 0                           ; Enable bar signal (active low)

* VCO Instance
Xvco vctl en enb out VPWR VPB VGND VNB t2_vco_tb

* Transient Simulation
.tran 0.01u 20u

* Control Block
.control
save all
run

* Plot output waveform
plot v(out)

* Optional: Save waveform for external viewing
write vco_output.raw

.endc
"}
C {devices/code_shown.sym} -580 -160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
