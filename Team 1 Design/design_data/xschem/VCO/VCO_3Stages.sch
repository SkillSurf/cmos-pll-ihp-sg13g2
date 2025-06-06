v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -600 -120 -600 220 {lab=#net1}
N -600 300 -600 400 {lab=VSS}
N -300 300 -300 400 {lab=VSS}
N -600 400 -300 400 {lab=VSS}
N 20 300 20 400 {lab=VSS}
N 340 300 340 400 {lab=VSS}
N -840 400 -600 400 {lab=VSS}
N -760 250 -640 250 {lab=VCON}
N -760 250 -760 360 {lab=VCON}
N -840 250 -760 250 {lab=VCON}
N -340 360 -20 360 {lab=VCON}
N -20 250 -20 360 {lab=VCON}
N -340 250 -340 360 {lab=VCON}
N -760 360 -340 360 {lab=VCON}
N -20 360 300 360 {lab=VCON}
N 300 250 300 360 {lab=VCON}
N -600 250 -560 250 {lab=VSS}
N -560 250 -560 300 {lab=VSS}
N -600 300 -560 300 {lab=VSS}
N -600 280 -600 300 {lab=VSS}
N -300 250 -260 250 {lab=VSS}
N -260 250 -260 300 {lab=VSS}
N -300 300 -260 300 {lab=VSS}
N -300 280 -300 300 {lab=VSS}
N 20 250 60 250 {lab=VSS}
N 60 250 60 300 {lab=VSS}
N 20 300 60 300 {lab=VSS}
N 20 280 20 300 {lab=VSS}
N 340 250 380 250 {lab=VSS}
N 380 250 380 300 {lab=VSS}
N 340 300 380 300 {lab=VSS}
N 340 280 340 300 {lab=VSS}
N -600 -260 -600 -240 {lab=VDD}
N -840 -360 -600 -360 {lab=VDD}
N -300 -260 -300 -240 {lab=VDD}
N -600 -360 -300 -360 {lab=VDD}
N 20 -260 20 -240 {lab=VDD}
N -300 -360 20 -360 {lab=VDD}
N 340 -260 340 -240 {lab=VDD}
N 20 -360 340 -360 {lab=VDD}
N 300 -210 300 -120 {lab=#net1}
N -20 -120 300 -120 {lab=#net1}
N -600 -140 -600 -120 {lab=#net1}
N -340 -210 -340 -120 {lab=#net1}
N -600 -120 -340 -120 {lab=#net1}
N -20 -210 -20 -120 {lab=#net1}
N -340 -120 -20 -120 {lab=#net1}
N -700 -210 -640 -210 {lab=#net1}
N -700 -210 -700 -140 {lab=#net1}
N -700 -140 -600 -140 {lab=#net1}
N -600 -180 -600 -140 {lab=#net1}
N -600 -210 -560 -210 {lab=VDD}
N -560 -260 -560 -210 {lab=VDD}
N -600 -260 -560 -260 {lab=VDD}
N -600 -360 -600 -260 {lab=VDD}
N -300 -210 -240 -210 {lab=VDD}
N -240 -260 -240 -210 {lab=VDD}
N -300 -260 -240 -260 {lab=VDD}
N -300 -360 -300 -260 {lab=VDD}
N 20 -210 80 -210 {lab=VDD}
N 80 -260 80 -210 {lab=VDD}
N 20 -260 80 -260 {lab=VDD}
N 20 -360 20 -260 {lab=VDD}
N 340 -210 400 -210 {lab=VDD}
N 400 -260 400 -210 {lab=VDD}
N 340 -260 400 -260 {lab=VDD}
N 340 -360 340 -260 {lab=VDD}
N -300 400 20 400 {lab=VSS}
N 20 400 340 400 {lab=VSS}
N 600 400 880 400 {lab=VSS}
N 880 200 880 400 {lab=VSS}
N 880 20 930 20 {lab=VOUT}
N 340 400 600 400 {lab=VSS}
N 880 20 880 140 {lab=VOUT}
N 760 20 880 20 {lab=VOUT}
N 600 120 600 400 {lab=VSS}
N 340 -360 600 -360 {lab=VDD}
N 600 -360 600 -80 {lab=VDD}
N 540 20 540 60 {lab=#net2}
N 280 20 280 60 {lab=#net3}
N -40 20 -40 60 {lab=#net4}
N 180 20 280 20 {lab=#net3}
N 280 -20 280 20 {lab=#net3}
N 540 -20 540 20 {lab=#net2}
N 500 20 540 20 {lab=#net2}
N 500 20 500 160 {lab=#net2}
N -360 20 -360 60 {lab=#net2}
N 340 120 340 220 {lab=#net5}
N 340 -180 340 -80 {lab=#net6}
N 20 120 20 220 {lab=#net7}
N 20 -180 20 -80 {lab=#net8}
N -440 160 500 160 {lab=#net2}
N -440 20 -440 160 {lab=#net2}
N -440 20 -360 20 {lab=#net2}
N -360 -20 -360 20 {lab=#net2}
N -300 -180 -300 -80 {lab=#net9}
N -300 120 -300 220 {lab=#net10}
N -140 20 -40 20 {lab=#net4}
N -40 -20 -40 20 {lab=#net4}
C {sg13g2_pr/sg13_lv_pmos.sym} -620 -210 0 0 {name=M1
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -320 -210 0 0 {name=M2
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -210 0 0 {name=M3
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -210 0 0 {name=M4
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -620 250 0 0 {name=M5
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -320 250 0 0 {name=M6
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 250 0 0 {name=M7
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 250 0 0 {name=M8
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -840 -360 2 0 {name=p1 lab=VDD}
C {iopin.sym} -840 400 2 0 {name=p2 lab=VSS}
C {ipin.sym} -840 250 0 0 {name=p3 lab=VCON}
C {opin.sym} 930 20 0 0 {name=p4 lab=VOUT}
C {capa.sym} 880 170 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/Team1/New_2NAND/New_2NAND.sym} -240 20 0 0 {name=x1}
C {/foss/designs/Team1/New_2NAND/New_2NAND.sym} 80 20 0 0 {name=x2}
C {/foss/designs/Team1/New_2NAND/New_2NAND.sym} 400 20 0 0 {name=x3}
C {/foss/designs/Team1/New_2NAND/New_2NAND.sym} 660 20 0 0 {name=x4}
