v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -120 70 -80 {lab=GND}
N 70 -220 70 -180 {lab=VDD}
N 250 -120 250 -80 {lab=GND}
N 250 -220 250 -180 {lab=clk_in}
N 820 190 820 230 {lab=GND}
N 820 -130 820 -90 {lab=VDD}
N 880 50 920 50 {lab=clk_out}
N 920 20 920 50 {lab=clk_out}
N 920 50 960 50 {lab=clk_out}
N 500 20 540 20 {lab=clk_in}
N 650 190 650 240 {lab=a0}
N 690 190 690 260 {lab=a1}
N 730 190 730 280 {lab=a2}
N 770 190 770 300 {lab=a3}
N 430 180 430 220 {lab=GND}
N 430 80 430 120 {lab=en}
N 500 360 500 400 {lab=GND}
N 590 360 590 400 {lab=GND}
N 680 360 680 400 {lab=GND}
N 770 360 770 400 {lab=GND}
N 680 280 680 300 {lab=a2}
N 680 280 730 280 {lab=a2}
N 590 260 590 300 {lab=a1}
N 500 240 500 300 {lab=a0}
N 430 80 540 80 {lab=en}
N 500 240 650 240 {lab=a0}
N 590 260 690 260 {lab=a1}
C {devices/code_shown.sym} -460 -270 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.control
set filetype=ascii
destroy all

let i = 1
while i le 15
    * Get bits A0 to A3 from i
    let x0 = (i % 2) * 1.2
    let x1 = (floor(i/2) % 2) * 1.2
    let x2 = (floor(i/4) % 2) * 1.2
    let x3 = (floor(i/8) % 2) * 1.2

    alter Va0 DC = x0
    alter Va1 DC = x1
    alter Va2 DC = x2
    alter Va3 DC = x3

    tran 50p 120n

    meas tran tperiod TRIG v(clk_out) VAL=0.6 FALL=1 TARG v(clk_out) VAL=0.6 FALL=2
    let freq = 1e-6 / tperiod

    let y0 = floor(x0)
    let y1 = floor(x1)
    let y2 = floor(x2)
    let y3 = floor(x3)

    * Print and write result
    echo "$&i", "\{$&y3\}\{$&y2\}\{$&y1\}\{$&y0\}", "$&freq", >> freq_vs_input.txt

    let i = i + 1
end

.endc
"}
C {devices/code_shown.sym} 330 -350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
"}
C {vsource.sym} 70 -150 0 0 {name=Vs value=1.2 savecurrent=false}
C {lab_pin.sym} 70 -220 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {vsource.sym} 250 -150 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1.25n, 2.5n)" savecurrent=false}
C {lab_pin.sym} 250 -220 1 0 {name=p19 sig_type=std_logic lab=clk_in}
C {gnd.sym} 70 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 250 -80 0 0 {name=l3 lab=GND}
C {t2_freq_divider.sym} 420 50 0 0 {name=x1}
C {gnd.sym} 820 230 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 820 -130 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 50 2 0 {name=p16 sig_type=std_logic lab=clk_out}
C {noconn.sym} 920 20 3 1 {name=l8}
C {lab_pin.sym} 500 20 0 0 {name=p2 sig_type=std_logic lab=clk_in}
C {devices/code_shown.sym} 660 -350 0 0 {name=PARAMS only_toplevel=true 
value="
.param EN = 1.2

.param A0 = 0
.param A1 = 1.2
.param A2 = 0
.param A3 = 0
"}
C {vsource.sym} 430 150 0 0 {name=Ven value="dc \{EN\}" savecurrent=false}
C {gnd.sym} 430 220 0 0 {name=l4 lab=GND}
C {vsource.sym} 500 330 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} 500 400 0 0 {name=l5 lab=GND}
C {vsource.sym} 590 330 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} 590 400 0 0 {name=l6 lab=GND}
C {vsource.sym} 680 330 0 0 {name=Va2 value="dc \{A2\}" savecurrent=false}
C {gnd.sym} 680 400 0 0 {name=l7 lab=GND}
C {vsource.sym} 770 330 0 0 {name=Va3 value="dc \{A3\}" savecurrent=false}
C {gnd.sym} 770 400 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 650 220 0 0 {name=p3 sig_type=std_logic lab=a0}
C {lab_pin.sym} 690 220 0 0 {name=p4 sig_type=std_logic lab=a1}
C {lab_pin.sym} 730 220 0 0 {name=p5 sig_type=std_logic lab=a2}
C {lab_pin.sym} 770 220 0 0 {name=p6 sig_type=std_logic lab=a3}
C {lab_pin.sym} 430 80 0 0 {name=p7 sig_type=std_logic lab=en}
