v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1140 -370 1140 -350 {
lab=#net1}
N 1100 -400 1100 -320 {
lab=delay}
N 1140 -430 1140 -400 {
lab=vdd}
N 1140 -320 1140 -290 {
lab=GND}
C {input_stage.sym} 710 -360 0 0 {name=x1
schematic=input_stage_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/input_stage.sim.spice])"
tclcommand="textwindow [file normalize ../mag/input_stage.sim.spice]"}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -110 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 980 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 980 -110 0 0 {name=V20 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 980 -140 0 0 {name=p19 sig_type=std_logic lab=input}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -400 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 1120 -320 0 0 {name=M2
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
C {devices/lab_pin.sym} 1140 -430 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1100 -360 0 0 {name=p47 sig_type=std_logic lab=delay}
C {devices/gnd.sym} 1140 -290 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 200 -80 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 200 -110 0 0 {name=V0 value=0 savecurrent=false}
C {devices/lab_pin.sym} 200 -140 0 0 {name=p3 sig_type=std_logic lab=en_0}
C {devices/gnd.sym} 300 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 300 -110 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p5 sig_type=std_logic lab=en_1}
C {devices/gnd.sym} 400 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 400 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 400 -140 0 0 {name=p6 sig_type=std_logic lab=en_2}
C {devices/gnd.sym} 500 -80 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 500 -110 0 0 {name=V3 value=0 savecurrent=false}
C {devices/lab_pin.sym} 500 -140 0 0 {name=p7 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 560 -410 0 0 {name=p12 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 560 -370 0 0 {name=p14 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 560 -350 0 0 {name=p15 sig_type=std_logic lab=en_2}
C {devices/code.sym} 260 -710 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 90 -710 0 0 {name=STIMULI only_toplevel=false value="

.control
alter V0 0
alter V1 0
alter V2 0
alter V3 0
alter V4 0

foreach i 0 1 2 3 4
alter V$i 1.8

* Run transient analysis
tran 0.0001n 5n

* Save results for this step
save v(in) v(delay)
set wr_vecnames
wrdata input_stage_tb_$i v(in) v(delay)

end
.endc
"}
C {devices/gnd.sym} 860 -370 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 860 -390 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 860 -410 0 1 {name=p9 sig_type=std_logic lab=delay}
C {devices/lab_pin.sym} 560 -330 0 0 {name=p17 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 560 -310 0 0 {name=p18 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 600 -80 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 600 -110 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 600 -140 0 0 {name=p11 sig_type=std_logic lab=en_4}
C {pad_model.sym} 250 -390 0 0 {name=x2}
C {devices/gnd.sym} 100 -370 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p2 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 400 -410 0 1 {name=p1 sig_type=std_logic lab=in}
C {devices/gnd.sym} 700 -80 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 700 -110 0 0 {name=V5 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 700 -140 0 0 {name=p10 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 560 -390 0 0 {name=p13 sig_type=std_logic lab=en}
