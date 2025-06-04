v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -0 80 60 {lab=#net1}
N 80 180 80 210 {lab=#net2}
N 260 240 440 240 {lab=#net2}
N 260 -60 440 -60 {lab=#net1}
N 80 -0 140 0 {lab=#net1}
N 80 -30 80 -0 {lab=#net1}
N 140 -60 140 -0 {lab=#net1}
N 120 -60 140 -60 {lab=#net1}
N 80 180 140 180 {lab=#net2}
N 80 120 80 180 {lab=#net2}
N 140 180 140 240 {lab=#net2}
N 120 240 140 240 {lab=#net2}
N 80 270 80 460 {lab=VGND}
N 260 460 480 460 {lab=VGND}
N 480 270 480 460 {lab=VGND}
N 260 390 260 460 {lab=VGND}
N 80 460 260 460 {lab=VGND}
N 260 240 260 330 {lab=#net2}
N 140 240 260 240 {lab=#net2}
N 170 360 220 360 {lab=enb}
N 80 -260 80 -90 {lab=VPWR}
N 260 -260 480 -260 {lab=VPWR}
N 480 -260 480 -90 {lab=VPWR}
N 260 -260 260 -190 {lab=VPWR}
N 80 -260 260 -260 {lab=VPWR}
N 260 -130 260 -60 {lab=#net1}
N 140 -60 260 -60 {lab=#net1}
N 150 -160 220 -160 {lab=en}
N -160 460 80 460 {lab=VGND}
N -160 390 -160 460 {lab=VGND}
N -160 90 -160 330 {lab=vctl}
N -160 90 40 90 {lab=vctl}
N -320 90 -160 90 {lab=vctl}
N -320 360 -200 360 {lab=enb}
N 1930 150 1930 230 {lab=Vout}
N 1850 260 1890 260 {lab=enb}
N 1930 290 1930 350 {lab=VGND}
N 480 -30 480 80 {lab=vco_source}
N 480 120 480 210 {lab=vco_sink}
N 260 -160 320 -160 {lab=VPB}
N 20 -60 80 -60 {lab=VPB}
N 480 -60 550 -60 {lab=VPB}
N 80 90 150 90 {lab=VNB}
N 10 240 80 240 {lab=VNB}
N 480 240 550 240 {lab=VNB}
N 260 360 330 360 {lab=VNB}
N -160 360 -80 360 {lab=VNB}
N 1930 260 2010 260 {lab=VNB}
N 1930 150 2070 150 {lab=Vout}
N 1240 -80 1240 60 {lab=3*VPB}
N 1080 150 1130 150 {lab=#net3}
N 780 150 870 150 {lab=Vout}
N 960 40 960 80 {lab=3*vco_source}
N 960 40 1220 40 {lab=3*vco_source}
N 1220 40 1220 80 {lab=3*vco_source}
N 1220 40 1470 40 {lab=3*vco_source}
N 1470 40 1470 80 {lab=3*vco_source}
N 980 60 980 80 {lab=3*VPB}
N 1240 60 1490 60 {lab=3*VPB}
N 1490 60 1490 80 {lab=3*VPB}
N 1240 60 1240 80 {lab=3*VPB}
N 980 60 1240 60 {lab=3*VPB}
N 1220 -80 1220 40 {lab=3*vco_source}
N 960 280 1220 280 {lab=3*vco_sink}
N 960 220 960 280 {lab=3*vco_sink}
N 1470 220 1470 280 {lab=3*vco_sink}
N 1220 280 1470 280 {lab=3*vco_sink}
N 1240 220 1240 260 {lab=3*VNB}
N 1240 260 1490 260 {lab=3*VNB}
N 1490 220 1490 260 {lab=3*VNB}
N 980 260 1240 260 {lab=3*VNB}
N 980 220 980 260 {lab=3*VNB}
N 1220 280 1220 400 {lab=3*vco_sink}
N 1220 220 1220 280 {lab=3*vco_sink}
N 1240 260 1240 400 {lab=3*VNB}
N 1340 150 1380 150 {lab=#net4}
N 780 150 780 450 {lab=Vout}
N 780 450 1640 450 {lab=Vout}
N 1640 150 1930 150 {lab=Vout}
N 1640 150 1640 450 {lab=Vout}
N 1590 150 1640 150 {lab=Vout}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -160 0 0 {name=M1
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -60 0 1 {name=M2
l=0.15u
w=3.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 -60 0 0 {name=M3
l=0.15u
w=3.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 90 0 0 {name=M4
l=0.15u
w=0.75u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 240 0 1 {name=M5
l=0.15u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 240 0 0 {name=M6
l=0.15u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 360 0 0 {name=M7
l=0.15u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 360 0 0 {name=M8
l=0.15u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1910 260 0 0 {name=M9
l=0.15u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -550 -290 0 1 {name=p1 lab=VPWR}
C {iopin.sym} -550 -260 0 1 {name=p2 lab=VPB}
C {iopin.sym} -550 -230 0 1 {name=p3 lab=VGND}
C {iopin.sym} -550 -200 0 1 {name=p4 lab=VNB}
C {ipin.sym} -550 -150 0 0 {name=p5 lab=vctl}
C {ipin.sym} -550 -110 0 0 {name=p6 lab=en}
C {ipin.sym} -550 -70 0 0 {name=p7 lab=enb}
C {opin.sym} -500 -170 0 0 {name=p8 lab=Vout}
C {lab_pin.sym} -320 90 0 0 {name=p9 sig_type=std_logic lab=vctl}
C {lab_pin.sym} 80 -260 0 0 {name=p10 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 480 80 0 0 {name=p11 sig_type=std_logic lab=vco_source}
C {lab_pin.sym} 480 120 0 0 {name=p12 sig_type=std_logic lab=vco_sink}
C {lab_pin.sym} 150 -160 0 0 {name=p13 sig_type=std_logic lab=en}
C {lab_pin.sym} 170 360 0 0 {name=p14 sig_type=std_logic lab=enb}
C {lab_pin.sym} -150 460 0 0 {name=p15 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1220 -80 0 0 {name=p16 sig_type=std_logic lab=3*vco_source
}
C {lab_pin.sym} 1220 400 0 0 {name=p17 sig_type=std_logic lab=3*vco_sink
}
C {lab_pin.sym} 2070 150 0 1 {name=p18 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 1930 350 0 0 {name=p22 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1850 260 0 0 {name=p23 sig_type=std_logic lab=enb}
C {lab_pin.sym} -320 360 0 0 {name=p24 sig_type=std_logic lab=enb}
C {lab_pin.sym} 320 -160 0 1 {name=p25 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 150 90 0 1 {name=p26 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} 550 -60 0 1 {name=p27 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 20 -60 0 0 {name=p28 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 550 240 0 1 {name=p29 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} 330 360 0 1 {name=p30 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} -80 360 0 1 {name=p31 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} 10 240 0 0 {name=p32 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} 2010 260 0 1 {name=p33 sig_type=std_logic lab=VNB
}
C {lab_pin.sym} 1240 400 0 1 {name=p37 sig_type=std_logic lab=3*VNB
}
C {lab_pin.sym} 1240 -80 0 1 {name=p38 sig_type=std_logic lab=3*VPB
}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 970 150 0 0 {name=x1
}
C {lab_pin.sym} 780 150 0 0 {name=p20 sig_type=std_logic lab=Vout}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 1230 150 0 0 {name=x2}
C {/foss/designs/cmos-pll-ihp-sg13g2/Team 2 Design/design_data/xschem/t2_vco_inverter.sym} 1480 150 0 0 {name=x3}
