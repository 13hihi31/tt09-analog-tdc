v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1340 -320 1340 -300 {
lab=#net1}
N 1300 -350 1300 -270 {
lab=delay}
N 1340 -380 1340 -350 {
lab=vdd}
N 1340 -270 1340 -240 {
lab=GND}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -110 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 860 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 860 -110 0 0 {name=V20 value="pulse(0 1.8 1ns 0.5ns 0.5ns 2ns 5ns)" savecurrent=false}
C {devices/lab_pin.sym} 840 -530 0 0 {name=p19 sig_type=std_logic lab=analog_input}
C {sky130_fd_pr/pfet_01v8.sym} 1320 -350 0 0 {name=M1
L=0.15
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1320 -270 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1340 -380 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1300 -310 0 0 {name=p47 sig_type=std_logic lab=delay}
C {devices/gnd.sym} 1340 -240 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 200 -80 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 200 -110 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 300 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 300 -110 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p5 sig_type=std_logic lab=en_1}
C {devices/gnd.sym} 400 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 400 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 400 -140 0 0 {name=p6 sig_type=std_logic lab=en_2}
C {devices/gnd.sym} 500 -80 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 500 -110 0 0 {name=V3 value=0 savecurrent=false}
C {devices/lab_pin.sym} 500 -140 0 0 {name=p7 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 840 -310 0 0 {name=p14 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 840 -290 0 0 {name=p15 sig_type=std_logic lab=en_2}
C {devices/code.sym} 260 -580 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 90 -580 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.1ns 105ns
.save all

.control
run
write input_stage_andpwr_parax_tb.raw
.endc
"}
C {devices/gnd.sym} 1140 -330 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1140 -350 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1140 -370 0 1 {name=p9 sig_type=std_logic lab=delay}
C {devices/lab_pin.sym} 840 -270 0 0 {name=p17 sig_type=std_logic lab=en_3}
C {pad_model.sym} 990 -510 0 0 {name=x2}
C {devices/gnd.sym} 840 -490 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1340 -140 0 0 {name=p2 sig_type=std_logic lab=analog_input}
C {devices/gnd.sym} 1140 -80 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1140 -110 0 0 {name=V5 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 1140 -140 0 0 {name=p10 sig_type=std_logic lab=and_input_2}
C {input_stage_andpwr.sym} 990 -310 0 0 {name=x1
schematic=input_stage_andpwr_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/input_stage_andpwr.sim.spice])"
tclcommand="textwindow [file normalize ../mag/input_stage_andpwr.sim.spice]"}
C {devices/gnd.sym} 1340 -80 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1340 -110 0 0 {name=V6 value="PWL(0ns 0V 100ns 1.8V)" savecurrent=false}
C {devices/lab_pin.sym} 1140 -530 2 0 {name=p16 sig_type=std_logic lab=and_pwr}
C {devices/lab_pin.sym} 840 -250 0 0 {name=p20 sig_type=std_logic lab=and_pwr}
C {devices/lab_pin.sym} 840 -370 0 0 {name=p1 sig_type=std_logic lab=and_input_1}
C {devices/lab_pin.sym} 860 -140 0 0 {name=p12 sig_type=std_logic lab=and_input_1}
C {devices/lab_pin.sym} 840 -350 0 0 {name=p13 sig_type=std_logic lab=and_input_2}
C {devices/lab_pin.sym} 200 -140 0 0 {name=p3 sig_type=std_logic lab=en_0}
C {devices/lab_pin.sym} 840 -330 0 0 {name=p11 sig_type=std_logic lab=en_0}
