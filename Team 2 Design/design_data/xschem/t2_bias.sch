v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -380 -180 -350 {lab=VPWR}
N 420 -380 600 -380 {lab=VPWR}
N 420 -380 420 -150 {lab=VPWR}
N 280 -380 420 -380 {lab=VPWR}
N 80 -380 80 -350 {lab=VPWR}
N -180 -380 80 -380 {lab=VPWR}
N 280 -380 280 -70 {lab=VPWR}
N 80 -380 280 -380 {lab=VPWR}
N 80 -260 80 -150 {lab=dio_mid}
N -180 -290 -180 -120 {lab=#net1}
N 0 -120 40 -120 {lab=#net1}
N 0 -120 -0 -70 {lab=#net1}
N -180 -120 0 -120 {lab=#net1}
N -0 -70 80 -70 {lab=#net1}
N 80 -90 80 -70 {lab=#net1}
N 350 -120 380 -120 {lab=en}
N 420 -40 560 -40 {lab=bias_p}
N 420 -90 420 -40 {lab=bias_p}
N 340 -40 420 -40 {lab=bias_p}
N 600 220 600 250 {lab=bias_p}
N 280 220 280 250 {lab=bias_p}
N 340 -40 340 10 {lab=bias_p}
N 320 -40 340 -40 {lab=bias_p}
N 280 10 340 10 {lab=bias_p}
N 280 -20 280 10 {lab=bias_p}
N 80 190 80 250 {lab=#net1}
N -180 110 -180 160 {lab=bias_p}
N -180 110 280 110 {lab=bias_p}
N 280 10 280 110 {lab=bias_p}
N -140 190 80 190 {lab=#net1}
N 80 -70 80 190 {lab=#net1}
N -180 220 -180 330 {lab=kick_sw}
N -180 390 -180 480 {lab=VGND}
N 420 480 600 480 {lab=VGND}
N 600 310 600 480 {lab=VGND}
N 420 390 420 480 {lab=VGND}
N 280 480 420 480 {lab=VGND}
N 280 310 280 480 {lab=VGND}
N 80 480 280 480 {lab=VGND}
N 530 280 560 280 {lab=bias_p}
N 420 280 420 330 {lab=bias_p}
N 360 280 420 280 {lab=bias_p}
N 530 220 530 280 {lab=bias_p}
N 420 280 530 280 {lab=bias_p}
N 530 220 600 220 {lab=bias_p}
N 600 -10 600 220 {lab=bias_p}
N 280 220 360 220 {lab=bias_p}
N 280 110 280 220 {lab=bias_p}
N 360 220 360 280 {lab=bias_p}
N 320 280 360 280 {lab=bias_p}
N 120 220 120 280 {lab=bias_p}
N 120 220 280 220 {lab=bias_p}
N 80 310 80 480 {lab=VGND}
N -180 480 80 480 {lab=VGND}
N -270 360 -220 360 {lab=en}
N -270 -320 -220 -320 {lab=en}
N -0 -320 40 -320 {lab=dio_mid}
N 0 -320 0 -260 {lab=dio_mid}
N 0 -260 80 -260 {lab=dio_mid}
N 80 -290 80 -260 {lab=dio_mid}
N 340 360 380 360 {lab=enb}
N 600 -380 600 -260 {lab=VPWR}
N 600 -200 600 -70 {lab=res_bot}
C {iopin.sym} -550 -290 0 1 {name=p1 lab=VPWR}
C {iopin.sym} -550 -260 0 1 {name=p2 lab=VPB}
C {iopin.sym} -550 -230 0 1 {name=p3 lab=VGND}
C {iopin.sym} -550 -200 0 1 {name=p4 lab=VNB}
C {ipin.sym} -550 -110 0 0 {name=p6 lab=en}
C {ipin.sym} -550 -70 0 0 {name=p7 lab=enb}
C {opin.sym} -500 -110 0 0 {name=p8 lab=bias_n}
C {sg13g2_pr/sg13_lv_pmos.sym} -200 -320 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -40 0 1 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -320 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -120 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 400 -120 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 580 -40 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -200 360 0 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 190 0 1 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 280 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 280 0 1 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 360 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 280 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {opin.sym} -500 -70 0 0 {name=p5 lab=bias_p}
C {lab_pin.sym} -270 -320 0 0 {name=p9 sig_type=std_logic lab=en}
C {lab_pin.sym} -270 360 0 0 {name=p10 sig_type=std_logic lab=en}
C {lab_pin.sym} 600 -380 0 1 {name=p11 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -180 280 0 0 {name=p12 sig_type=std_logic lab=kick_sw}
C {lab_pin.sym} 280 170 0 0 {name=p13 sig_type=std_logic lab=bias_p}
C {lab_pin.sym} 600 130 0 0 {name=p14 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} 600 480 0 1 {name=p15 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 80 -210 0 0 {name=p16 sig_type=std_logic lab=dio_mid}
C {lab_pin.sym} 600 -100 0 0 {name=p17 sig_type=std_logic lab=res_bot}
C {lab_pin.sym} 350 -120 0 0 {name=p18 sig_type=std_logic lab=en}
C {lab_pin.sym} 340 360 0 0 {name=p19 sig_type=std_logic lab=enb}
C {sg13g2_pr/rhigh.sym} 600 -230 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
