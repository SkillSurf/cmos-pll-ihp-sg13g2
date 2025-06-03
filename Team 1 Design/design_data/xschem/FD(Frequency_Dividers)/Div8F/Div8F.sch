v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 80 0 180 {lab=VDD}
N 0 -100 0 -60 {lab=VDD}
N 100 0 220 0 {lab=#net1}
N -140 0 -100 0 {lab=#net2}
N 100 20 180 20 {lab=#net2}
N 180 -140 180 20 {lab=#net2}
N -140 -140 180 -140 {lab=#net2}
N -140 -140 -140 0 {lab=#net2}
N 410 80 410 180 {lab=VDD}
N 410 -100 410 -60 {lab=VDD}
N 510 0 630 0 {lab=#net3}
N 270 0 310 0 {lab=#net4}
N 510 20 590 20 {lab=#net4}
N 590 -140 590 20 {lab=#net4}
N 270 -140 590 -140 {lab=#net4}
N 270 -140 270 0 {lab=#net4}
N 220 -0 220 20 {lab=#net1}
N 220 20 310 20 {lab=#net1}
N 820 80 820 180 {lab=VDD}
N 820 -100 820 -60 {lab=VDD}
N 920 0 1040 0 {lab=FOUT}
N 680 0 720 0 {lab=#net5}
N 920 20 1000 20 {lab=#net5}
N 1000 -140 1000 20 {lab=#net5}
N 680 -140 1000 -140 {lab=#net5}
N 680 -140 680 0 {lab=#net5}
N 630 0 630 20 {lab=#net3}
N 630 20 720 20 {lab=#net3}
N -310 20 -100 20 {lab=FIN}
N 410 180 820 180 {lab=VDD}
N 0 180 410 180 {lab=VDD}
N -140 180 -0 180 {lab=VDD}
N 410 -100 820 -100 {lab=VDD}
N -300 -100 0 -100 {lab=VDD}
N 0 -100 410 -100 {lab=VDD}
C {/foss/designs/Team2/DFlop/DFlop.sym} 0 0 0 0 {name=x1}
C {/foss/designs/Team2/DFlop/DFlop.sym} 410 0 0 0 {name=x2}
C {/foss/designs/Team2/DFlop/DFlop.sym} 820 0 0 0 {name=x3}
C {opin.sym} 1040 0 0 0 {name=p5 lab=FOUT}
C {ipin.sym} -310 20 0 0 {name=p3 lab=FIN}
C {iopin.sym} -300 -100 2 0 {name=p7 lab=VDD}
C {iopin.sym} -140 180 2 0 {name=p1 lab=VSS}
