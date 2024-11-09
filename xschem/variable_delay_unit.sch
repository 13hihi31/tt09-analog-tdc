v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 -300 960 -300 {
lab=out}
N 960 -300 960 -200 {
lab=out}
N 540 -400 600 -400 {
lab=forward}
N 600 -400 600 -300 {
lab=forward}
N 600 -200 1000 -200 {
lab=out}
C {tristate_inverter.sym} 750 -280 0 0 {name=x1}
C {inverter_2.sym} 390 -380 0 0 {name=x2}
C {devices/iopin.sym} 60 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 80 -280 0 0 {name=p3 lab=in}
C {devices/opin.sym} 60 -120 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 60 -40 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 540 -380 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -360 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -400 0 0 {name=p6 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 900 -260 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 -280 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {inverter_2.sym} 390 -100 0 0 {name=x3}
C {devices/lab_pin.sym} 540 -100 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -80 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -120 0 0 {name=p12 sig_type=std_logic lab=en}
C {devices/ipin.sym} 80 -240 0 0 {name=p13 lab=en}
C {tristate_inverter.sym} 1150 -180 0 1 {name=x4}
C {devices/lab_pin.sym} 1000 -160 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -180 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -120 0 1 {name=p16 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 600 -280 0 0 {name=p17 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 600 -260 0 0 {name=p18 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 1300 -180 0 1 {name=p19 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 1300 -160 0 1 {name=p20 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 1300 -200 0 1 {name=p21 sig_type=std_logic lab=back}
C {devices/ipin.sym} 80 -200 0 0 {name=p22 lab=back}
C {devices/lab_wire.sym} 600 -200 0 0 {name=p24 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 600 -400 0 1 {name=p23 sig_type=std_logic lab=forward}
C {devices/opin.sym} 60 -160 0 0 {name=p25 lab=forward}
