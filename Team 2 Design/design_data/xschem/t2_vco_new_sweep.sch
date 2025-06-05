v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -180 780 -90 {lab=GND}
N 860 -180 860 -90 {lab=GND}
N 780 -350 780 -240 {lab=#net1}
N 780 -350 1160 -350 {lab=#net1}
N 1160 -350 1160 -320 {lab=#net1}
N 860 -250 860 -240 {lab=#net2}
N 860 -250 1050 -250 {lab=#net2}
N 1160 -180 1160 -100 {lab=GND}
N 1260 -250 1320 -250 {lab=Vout}
C {devices/code_shown.sym} 1090 -440 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 1690 -510 0 0 {name=NGSPICE only_toplevel=true 
value="
.include t2_vco_new_sweep_.spice
.control
let VPWR = 1.2
let vstart = 0.8
let vstop = 0.8
let vstep = 0.1
let tol = 0.01       ; 1% frequency tolerance
let last_freq = 0
let done = 0

set numdgt=6         ; Print more precision
set units=degrees

foreach vctrl $&[vstart:vstep:vstop]
  alter Vctrl $vctrl

  * Step 1: Rough estimate of period
  tran 1n 100n
  meas tran t1 WHEN v(Vout) VAL=\{VPWR/2\} CROSS=1 RISE
  meas tran t2 WHEN v(Vout) VAL=\{VPWR/2\} CROSS=2 RISE
  let tperiod = t2 - t1
  let timestep = tperiod / 1000
  last_freq = 1/tperiod

  * Step 2: Fine simulation with adaptive timestep
  let freq = 0
  let prev_t1 = 0
  let settled = 0

  while not settled
    tran $timestep 10*$tperiod
    meas tran new_t1 WHEN v(Vout) VAL=\{VPWR/2\} CROSS=1 RISE
    meas tran new_t2 WHEN v(Vout) VAL=\{VPWR/2\} CROSS=2 RISE
    let new_tperiod = new_t2 - new_t1
    let freq = 1 / new_tperiod

    if abs(freq - last_freq)/last_freq < tol
      let settled = 1
      print "Frequency settled at " freq " Hz for Vctrl = " $vctrl
    else
      let last_freq = freq
    end
  endwhile

.endc
.end
"}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_new.sym} 1160 -250 0 0 {name=x1}
C {vsource.sym} 780 -210 0 0 {name=VPWR value=1.2 savecurrent=false}
C {vsource.sym} 860 -210 0 0 {name=vctl value=0.8 savecurrent=false}
C {gnd.sym} 860 -90 0 0 {name=l2 lab=GND}
C {gnd.sym} 780 -90 0 0 {name=l9 lab=GND}
C {opin.sym} 1320 -250 0 0 {name=p17 lab=Vout}
C {gnd.sym} 1160 -100 0 0 {name=l1 lab=GND}
