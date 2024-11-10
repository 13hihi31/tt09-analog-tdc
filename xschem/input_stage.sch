v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -530 600 -530 {
lab=#net1}
N 600 -530 600 -460 {
lab=#net1}
N 220 -460 600 -460 {
lab=#net1}
N 220 -460 220 -430 {
lab=#net1}
N 520 -430 600 -430 {
lab=#net2}
N 600 -430 600 -360 {
lab=#net2}
N 220 -360 600 -360 {
lab=#net2}
N 220 -360 220 -330 {
lab=#net2}
N 520 -330 600 -330 {
lab=#net3}
N 600 -330 600 -260 {
lab=#net3}
N 220 -260 600 -260 {
lab=#net3}
N 220 -260 220 -230 {
lab=#net3}
C {nand_gate.sym} 370 -510 0 0 {name=x1}
C {inverter_2.sym} 370 -410 0 0 {name=x2}
C {fine_delay.sym} 370 -310 0 0 {name=x3}
C {devices/iopin.sym} 40 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 60 -360 0 0 {name=p3 lab=in}
C {devices/opin.sym} 40 -120 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 40 -40 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -280 0 0 {name=p9 lab=t0}
C {devices/ipin.sym} 60 -240 0 0 {name=p15 lab=t1}
C {fine_delay.sym} 370 -210 0 0 {name=x4}
C {devices/lab_pin.sym} 520 -390 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -490 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -290 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -190 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -210 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -310 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -410 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -510 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 60 -200 0 0 {name=p14 lab=t2}
C {devices/ipin.sym} 60 -160 0 0 {name=p16 lab=t3}
C {devices/lab_pin.sym} 520 -230 0 1 {name=p17 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 220 -190 0 0 {name=p18 sig_type=std_logic lab=t3}
C {devices/lab_pin.sym} 220 -210 0 0 {name=p19 sig_type=std_logic lab=t2}
C {devices/lab_pin.sym} 220 -290 0 0 {name=p20 sig_type=std_logic lab=t1}
C {devices/lab_pin.sym} 220 -310 0 0 {name=p21 sig_type=std_logic lab=t0}
C {devices/ipin.sym} 60 -320 0 0 {name=p22 lab=en}
C {devices/lab_pin.sym} 220 -510 0 0 {name=p23 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 220 -530 0 0 {name=p24 sig_type=std_logic lab=en}
