v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -410 800 -390 {
lab=#net1}
N 760 -440 760 -360 {
lab=delay}
N 800 -470 800 -440 {
lab=vdd}
N 800 -360 800 -330 {
lab=GND}
N 180 -660 180 -640 {
lab=#net2}
N 140 -690 140 -610 {
lab=in_pulse}
N 180 -720 180 -690 {
lab=vdd}
N 180 -610 180 -580 {
lab=GND}
N 340 -660 340 -640 {
lab=#net3}
N 300 -690 300 -610 {
lab=#net2}
N 340 -720 340 -690 {
lab=vdd}
N 340 -610 340 -580 {
lab=GND}
N 500 -660 500 -640 {
lab=#net4}
N 460 -690 460 -610 {
lab=#net3}
N 500 -720 500 -690 {
lab=vdd}
N 500 -610 500 -580 {
lab=GND}
N 180 -650 300 -650 {
lab=#net2}
N 340 -650 460 -650 {
lab=#net3}
N 660 -660 660 -640 {
lab=in}
N 620 -690 620 -610 {
lab=#net4}
N 660 -720 660 -690 {
lab=vdd}
N 660 -610 660 -580 {
lab=GND}
N 500 -650 620 -650 {
lab=#net4}
N 660 -650 740 -650 {
lab=in}
C {variable_delay.sym} 450 -350 0 0 {name=x1
schematic=variable_delay_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/variable_delay.sim.spice])"
tclcommand="textwindow [file normalize ../mag/variable_delay.sim.spice]"}
C {devices/gnd.sym} 60 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -90 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -120 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1080 -60 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 1080 -90 0 0 {name=V20 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 1080 -120 0 0 {name=p19 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 600 -390 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 600 -410 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -430 0 1 {name=p2 sig_type=std_logic lab=delay}
C {sky130_fd_pr/pfet_01v8.sym} 780 -440 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -360 0 0 {name=M2
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
C {devices/lab_pin.sym} 800 -470 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 760 -400 0 0 {name=p47 sig_type=std_logic lab=delay}
C {devices/gnd.sym} 800 -330 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 160 -60 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 160 -90 0 0 {name=V0 value=0 savecurrent=false}
C {devices/lab_pin.sym} 160 -120 0 0 {name=p3 sig_type=std_logic lab=en_0}
C {devices/gnd.sym} 260 -60 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 260 -90 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 260 -120 0 0 {name=p5 sig_type=std_logic lab=en_1}
C {devices/gnd.sym} 360 -60 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 360 -90 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 360 -120 0 0 {name=p6 sig_type=std_logic lab=en_2}
C {devices/gnd.sym} 460 -60 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 460 -90 0 0 {name=V3 value=0 savecurrent=false}
C {devices/lab_pin.sym} 460 -120 0 0 {name=p7 sig_type=std_logic lab=en_3}
C {devices/gnd.sym} 560 -60 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 560 -90 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 560 -120 0 0 {name=p8 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 660 -60 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 660 -90 0 0 {name=V5 value=0 savecurrent=false}
C {devices/lab_pin.sym} 660 -120 0 0 {name=p9 sig_type=std_logic lab=en_5}
C {devices/gnd.sym} 760 -60 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 760 -90 0 0 {name=V6 value=0 savecurrent=false}
C {devices/lab_pin.sym} 760 -120 0 0 {name=p10 sig_type=std_logic lab=en_6}
C {devices/gnd.sym} 860 -60 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 860 -90 0 0 {name=V7 value=0 savecurrent=false}
C {devices/lab_pin.sym} 860 -120 0 0 {name=p11 sig_type=std_logic lab=en_7}
C {sky130_fd_pr/pfet_01v8.sym} 160 -690 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -610 0 0 {name=M18
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
C {devices/lab_pin.sym} 180 -720 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 140 -650 0 0 {name=p25 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 180 -580 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 320 -690 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -610 0 0 {name=M20
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
C {devices/lab_pin.sym} 340 -720 0 1 {name=p26 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 340 -580 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 480 -690 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 480 -610 0 0 {name=M22
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
C {devices/lab_pin.sym} 500 -720 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 500 -580 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 740 -650 0 1 {name=p29 sig_type=std_logic lab=in}
C {sky130_fd_pr/pfet_01v8.sym} 640 -690 0 0 {name=M25
L=0.15
W=9
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -610 0 0 {name=M26
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -720 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 660 -580 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 300 -430 0 0 {name=p12 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 300 -410 0 0 {name=p13 sig_type=std_logic lab=en_0}
C {devices/lab_pin.sym} 300 -390 0 0 {name=p14 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 300 -370 0 0 {name=p15 sig_type=std_logic lab=en_2}
C {devices/lab_pin.sym} 300 -350 0 0 {name=p16 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 300 -330 0 0 {name=p17 sig_type=std_logic lab=en_4}
C {devices/lab_pin.sym} 300 -310 0 0 {name=p18 sig_type=std_logic lab=en_5}
C {devices/lab_pin.sym} 300 -290 0 0 {name=p20 sig_type=std_logic lab=en_6}
C {devices/lab_pin.sym} 300 -270 0 0 {name=p21 sig_type=std_logic lab=en_7}
C {devices/code.sym} 530 -930 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 350 -930 0 0 {name=STIMULI only_toplevel=false value="

.control
foreach i 0 1 2 3 4 5 6 7
* Set all sources to 0 initially
alter V0 0
alter V1 0
alter V2 0
alter V3 0
alter V4 0
alter V5 0
alter V6 0
alter V7 0

* Set the current source to 1.8V
alter V$i 1.8

* Run transient analysis
tran 0.0001n 5n

* Save results for this step
save v(in) v(delay)
set wr_vecnames
wrdata variable_delay_tb_$i v(in) v(delay)

end
.endc
"}
