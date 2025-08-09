v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 680 -880 1480 -480 {flags=graph
y1=-7.6e-06
y2=7.7e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_out"
color="6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 -160 0 640 400 {flags=graph
y1=0.8
y2=0.91
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.3bit_freq_divider_0.CLK_IN
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1840 -880 -1040 -480 {flags=graph
y1=-0.002
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.PFD_0.UP
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1000 -880 -200 -480 {flags=graph
y1=-0.00078
y2=0.00099
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.PFD_0.DOWN
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -160 -880 640 -480 {flags=graph
y1=0
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_in"
color="4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 -160 -440 640 -40 {flags=graph
y1=0.033
y2=0.36
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.vco_wob_0.vctl"
color=14
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -1810 50 -1810 70 {lab=GND}
N -1810 -30 -1810 -10 {lab=VDD}
N -1640 50 -1640 70 {lab=GND}
N -1640 -70 -1640 -10 {lab=CLK_IN}
N -1160 -160 -1160 -130 {lab=VDD}
N -1160 30 -1160 60 {lab=GND}
N -1380 -30 -1330 -30 {lab=GND}
N -1380 -30 -1380 20 {lab=GND}
N -1640 -70 -1330 -70 {lab=CLK_IN}
N -1340 200 -1340 240 {lab=GND}
N -1230 200 -1230 240 {lab=GND}
N -1230 30 -1230 140 {lab=A1}
N -1340 80 -1260 80 {lab=A0}
N -1090 -50 -1050 -50 {lab=CLK_OUT}
N -1050 -80 -1050 -50 {lab=CLK_OUT}
N -1050 -50 -1010 -50 {lab=CLK_OUT}
N -1340 80 -1340 140 {lab=A0}
N -1260 30 -1260 80 {lab=A0}
N -1120 200 -1120 240 {lab=GND}
N -1120 110 -1120 140 {lab=A2}
N -1200 110 -1120 110 {lab=A2}
N -1200 30 -1200 110 {lab=A2}
N -1600 -220 -1600 -180 {lab=GND}
N -1490 -220 -1490 -180 {lab=GND}
N -1380 -220 -1380 -180 {lab=GND}
N -1380 -320 -1380 -280 {lab=B2}
N -1380 -320 -1200 -320 {lab=B2}
N -1200 -320 -1200 -130 {lab=B2}
N -1230 -360 -1230 -130 {lab=B1}
N -1490 -360 -1230 -360 {lab=B1}
N -1490 -360 -1490 -280 {lab=B1}
N -1600 -400 -1600 -280 {lab=B0}
N -1600 -400 -1260 -400 {lab=B0}
N -1260 -400 -1260 -130 {lab=B0}
C {vsource.sym} -1810 20 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -1810 70 0 0 {name=l1 lab=GND}
C {vdd.sym} -1810 -30 0 0 {name=l2 lab=VDD}
C {devices/code_shown.sym} -879 -356 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.options reltol=1e-3 vabstol=1u iabstol=1n chgtol=1e-14 gmin=1e-10
.options method=gear maxord=2 trtol=2

.control
save all 
tran 10n 2u

write tran_pll_3bitDiv_tb_pex.raw
.endc

"}
C {launcher.sym} -393 -109 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran_pll_3bitDiv_tb_pex.raw tran"
}
C {vsource.sym} -1640 20 0 0 {name=V2 value="PULSE(0 1.2 0.2n 5n 5n 50n 100n)" savecurrent=false}
C {gnd.sym} -1640 70 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1640 -70 0 0 {name=p15 sig_type=std_logic lab=CLK_IN}
C {vdd.sym} -1160 -160 0 0 {name=l3 lab=VDD}
C {gnd.sym} -1160 60 0 0 {name=l4 lab=GND}
C {gnd.sym} -1380 20 0 0 {name=l5 lab=GND}
C {vsource.sym} -1340 170 0 0 {name=Va0 value="dc \{A0\}" savecurrent=false}
C {gnd.sym} -1340 240 0 0 {name=l6 lab=GND}
C {vsource.sym} -1230 170 0 0 {name=Va1 value="dc \{A1\}" savecurrent=false}
C {gnd.sym} -1230 240 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -1340 80 0 0 {name=p3 sig_type=std_logic lab=A0}
C {lab_pin.sym} -1230 100 0 0 {name=p4 sig_type=std_logic lab=A1}
C {lab_pin.sym} -1010 -50 2 0 {name=p16 sig_type=std_logic lab=CLK_OUT}
C {noconn.sym} -1050 -80 3 1 {name=l8}
C {devices/code_shown.sym} -1640 180 0 0 {name=PARAMS_A only_toplevel=true 
value="
.param A0 = 1.2
.param A1 = 0
.param A2 = 0
"}
C {devices/code_shown.sym} -940 130 0 0 {name=MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include ../../pex/pll_3bitDiv__pll_3bitDiv/magic_RC/pll_3bitDiv.pex.spice
"
place=header}
C {vsource.sym} -1120 170 0 0 {name=Va2 value="dc \{A2\}" savecurrent=false}
C {gnd.sym} -1120 240 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1120 110 2 0 {name=p1 sig_type=std_logic lab=A2}
C {vsource.sym} -1600 -250 0 0 {name=Vb0 value="dc \{B0\}" savecurrent=false}
C {gnd.sym} -1600 -180 0 0 {name=l11 lab=GND}
C {vsource.sym} -1490 -250 0 0 {name=Vb1 value="dc \{B1\}" savecurrent=false}
C {gnd.sym} -1490 -180 0 0 {name=l12 lab=GND}
C {vsource.sym} -1380 -250 0 0 {name=Vb2 value="dc \{B2\}" savecurrent=false}
C {gnd.sym} -1380 -180 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -1260 -400 2 0 {name=p2 sig_type=std_logic lab=B0}
C {lab_pin.sym} -1230 -360 2 0 {name=p5 sig_type=std_logic lab=B1}
C {lab_pin.sym} -1200 -320 2 0 {name=p6 sig_type=std_logic lab=B2}
C {devices/code_shown.sym} -1830 -310 0 0 {name=PARAMS_B only_toplevel=true 
value="
.param B0 = 1.2
.param B1 = 0
.param B2 = 0
"}
C {pll_3bitDiv.sym} -1210 -50 0 0 {name=x1}
C {code.sym} -790 -80 0 0 {name=RLEAK only_toplevel=false value=
"
RLEAK_0001 x1.a_52808_21795# VSS 1e11
RLEAK_0002 x1.a_52808_21817# VSS 1e11
RLEAK_0003 x1.a_52808_23551# VSS 1e11
RLEAK_0004 x1.a_52808_23573# VSS 1e11
RLEAK_0005 x1.a_55948_56737# VSS 1e11
RLEAK_0006 x1.a_56695_49467# VSS 1e11
RLEAK_0007 x1.a_56828_53480# VSS 1e11
RLEAK_0008 x1.a_56887_49467# VSS 1e11
RLEAK_0009 x1.a_60528_49446# VSS 1e11
RLEAK_0010 x1.a_60922_21796# VSS 1e11
RLEAK_0011 x1.a_60922_21818# VSS 1e11
RLEAK_0012 x1.a_60922_23552# VSS 1e11
RLEAK_0013 x1.a_60922_23574# VSS 1e11
RLEAK_0014 x1.m1_16847_2260# VSS 1e11
RLEAK_0015 x1.m1_17285_2698# VSS 1e11
RLEAK_0016 x1.m2_16847_2260# VSS 1e11
RLEAK_0017 x1.m2_17285_2698# VSS 1e11
RLEAK_0018 x1.m3_16847_2260# VSS 1e11
RLEAK_0019 x1.m3_17285_2698# VSS 1e11
RLEAK_0020 x1.m4_16847_2260# VSS 1e11
RLEAK_0021 x1.m4_17285_2698# VSS 1e11
RLEAK_0022 x1.m5_16847_2260# VSS 1e11
RLEAK_0023 x1.m5_17331_2744# VSS 1e11
RLEAK_0024 x1.m6_16847_2260# VSS 1e11
RLEAK_0025 x1.m6_17427_2840# VSS 1e11
RLEAK_0026 x1.m6_60810_42209# VSS 1e11
RLEAK_0027 x1.m7_16847_2260# VSS 1e11
RLEAK_0028 x1.a_53968_20434# VSS 1e11
"}
