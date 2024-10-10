v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -220 440 -220 {
lab=#net1}
N 740 -220 800 -220 {
lab=#net2}
C {inverter.sym} 590 -220 0 0 {name=x1}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {pad_model.sym} 230 -200 0 0 {name=x2}
C {devices/gnd.sym} 80 -180 0 1 {name=l2 lab=GND}
C {pad_model.sym} 950 -200 0 0 {name=x3}
C {devices/gnd.sym} 800 -180 0 1 {name=l3 lab=GND}
C {devices/gnd.sym} 590 -170 0 1 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1100 -220 0 1 {name=p3 sig_type=std_logic lab=output}
C {devices/lab_pin.sym} 590 -270 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 80 -220 0 0 {name=p2 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 80 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 220 -40 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 220 -70 0 0 {name=V2 value="pulse(0 1.8 1ns 1ns 1ns 23ns 50ns)" savecurrent=false}
C {devices/lab_pin.sym} 220 -100 0 0 {name=p5 sig_type=std_logic lab=input}
C {devices/code.sym} 880 -490 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 680 -490 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.01n 1u
.save all

.control
run
write inverter_tran.raw
.endc
"}
