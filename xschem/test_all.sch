v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2240 -720 2240 -700 {
lab=#net1}
N 2200 -750 2200 -670 {
lab=term_0}
N 2240 -780 2240 -750 {
lab=vdd}
N 2240 -670 2240 -640 {
lab=GND}
N 2240 -540 2240 -520 {
lab=#net2}
N 2200 -570 2200 -490 {
lab=term_1}
N 2240 -600 2240 -570 {
lab=vdd}
N 2240 -490 2240 -460 {
lab=GND}
N 2240 -360 2240 -340 {
lab=#net3}
N 2200 -390 2200 -310 {
lab=term_2}
N 2240 -420 2240 -390 {
lab=vdd}
N 2240 -310 2240 -280 {
lab=GND}
N 2240 -180 2240 -160 {
lab=#net4}
N 2200 -210 2200 -130 {
lab=term_3}
N 2240 -240 2240 -210 {
lab=vdd}
N 2240 -130 2240 -100 {
lab=GND}
N 2440 -720 2440 -700 {
lab=#net5}
N 2400 -750 2400 -670 {
lab=term_4}
N 2440 -780 2440 -750 {
lab=vdd}
N 2440 -670 2440 -640 {
lab=GND}
N 2440 -540 2440 -520 {
lab=#net6}
N 2400 -570 2400 -490 {
lab=term_5}
N 2440 -600 2440 -570 {
lab=vdd}
N 2440 -490 2440 -460 {
lab=GND}
N 2440 -360 2440 -340 {
lab=#net7}
N 2400 -390 2400 -310 {
lab=term_6}
N 2440 -420 2440 -390 {
lab=vdd}
N 2440 -310 2440 -280 {
lab=GND}
N 2440 -180 2440 -160 {
lab=#net8}
N 2400 -210 2400 -130 {
lab=term_7}
N 2440 -240 2440 -210 {
lab=vdd}
N 2440 -130 2440 -100 {
lab=GND}
C {input_stage.sym} 710 -360 0 0 {name=x1
schematic=input_stage_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/input_stage.sim.spice])"
tclcommand="textwindow [file normalize ../mag/input_stage.sim.spice]"}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -110 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1460 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 1460 -110 0 0 {name=V20 value="pulse(0 1.8 0ns 0.5ns 0.5ns 3ns 7ns)" savecurrent=false}
C {devices/lab_pin.sym} 1460 -140 0 0 {name=p19 sig_type=std_logic lab=input}
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
* Set all sources to 0 initially
alter V0 0
alter V1 0
alter V2 0
alter V3 0
alter V4 0

* Run transient analysis
tran 0.0001n 2.5n

* Save results for this step
save v(in) v(start) v(stop) v(start_delayed) v(stop_delayed) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7) 
set wr_vecnames
wrdata test_all_6 v(in) v(start) v(stop) v(start_delayed) v(stop_delayed) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7)

.endc
"}
C {devices/gnd.sym} 860 -370 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 860 -390 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 860 -410 0 1 {name=p9 sig_type=std_logic lab=stop}
C {pad_model.sym} 250 -390 0 0 {name=x2}
C {devices/gnd.sym} 100 -370 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p2 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 400 -410 0 1 {name=p1 sig_type=std_logic lab=in}
C {devices/gnd.sym} 1340 -80 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1340 -110 0 0 {name=V22 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 1340 -140 0 0 {name=p10 sig_type=std_logic lab=en_start}
C {devices/gnd.sym} 1940 -310 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1940 -330 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1940 -490 0 1 {name=p22 sig_type=std_logic lab=term_0}
C {devices/lab_pin.sym} 1940 -470 0 1 {name=p23 sig_type=std_logic lab=term_1}
C {devices/lab_pin.sym} 1940 -450 0 1 {name=p24 sig_type=std_logic lab=term_2}
C {devices/lab_pin.sym} 1940 -430 0 1 {name=p25 sig_type=std_logic lab=term_3}
C {devices/lab_pin.sym} 1940 -410 0 1 {name=p26 sig_type=std_logic lab=term_4}
C {devices/lab_pin.sym} 1640 -490 0 0 {name=p27 sig_type=std_logic lab=start_delayed}
C {devices/lab_pin.sym} 1640 -470 0 0 {name=p28 sig_type=std_logic lab=stop_delayed}
C {sky130_fd_pr/pfet_01v8.sym} 2220 -750 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 2220 -670 0 0 {name=M4
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
C {devices/lab_pin.sym} 2240 -780 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2200 -710 0 0 {name=p30 sig_type=std_logic lab=term_0}
C {devices/gnd.sym} 2240 -640 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2220 -570 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 2220 -490 0 0 {name=M6
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
C {devices/lab_pin.sym} 2240 -600 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2200 -530 0 0 {name=p32 sig_type=std_logic lab=term_1}
C {devices/gnd.sym} 2240 -460 0 0 {name=l16 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2220 -390 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 2220 -310 0 0 {name=M8
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
C {devices/lab_pin.sym} 2240 -420 0 1 {name=p33 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2200 -350 0 0 {name=p34 sig_type=std_logic lab=term_2}
C {devices/gnd.sym} 2240 -280 0 0 {name=l17 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2220 -210 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 2220 -130 0 0 {name=M10
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
C {devices/lab_pin.sym} 2240 -240 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2200 -170 0 0 {name=p36 sig_type=std_logic lab=term_3}
C {devices/gnd.sym} 2240 -100 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2420 -750 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 2420 -670 0 0 {name=M12
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
C {devices/lab_pin.sym} 2440 -780 0 1 {name=p37 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2400 -710 0 0 {name=p39 sig_type=std_logic lab=term_4}
C {devices/gnd.sym} 2440 -640 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 1940 -390 0 1 {name=p54 sig_type=std_logic lab=term_5}
C {devices/lab_pin.sym} 1940 -370 0 1 {name=p55 sig_type=std_logic lab=term_6}
C {devices/lab_pin.sym} 1940 -350 0 1 {name=p56 sig_type=std_logic lab=term_7}
C {sky130_fd_pr/pfet_01v8.sym} 2420 -570 0 0 {name=M29
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
C {sky130_fd_pr/nfet_01v8.sym} 2420 -490 0 0 {name=M30
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
C {devices/lab_pin.sym} 2440 -600 0 1 {name=p57 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2400 -530 0 0 {name=p58 sig_type=std_logic lab=term_5}
C {devices/gnd.sym} 2440 -460 0 0 {name=l29 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2420 -390 0 0 {name=M31
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
C {sky130_fd_pr/nfet_01v8.sym} 2420 -310 0 0 {name=M32
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
C {devices/lab_pin.sym} 2440 -420 0 1 {name=p59 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2400 -350 0 0 {name=p60 sig_type=std_logic lab=term_6}
C {devices/gnd.sym} 2440 -280 0 0 {name=l30 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2420 -210 0 0 {name=M33
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
C {sky130_fd_pr/nfet_01v8.sym} 2420 -130 0 0 {name=M34
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
C {devices/lab_pin.sym} 2440 -240 0 1 {name=p61 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2400 -170 0 0 {name=p62 sig_type=std_logic lab=term_7}
C {devices/gnd.sym} 2440 -100 0 0 {name=l31 lab=GND}
C {tdc_vernier_buffers.sym} 1790 -400 0 0 {name=x3
schematic=tdc_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/tdc.sim.spice])"
tclcommand="textwindow [file normalize ../mag/tdc.sim.spice]"}
C {input_stage.sym} 710 -520 0 0 {name=x4
schematic=input_stage_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/input_stage.sim.spice])"
tclcommand="textwindow [file normalize ../mag/input_stage.sim.spice]"}
C {devices/lab_pin.sym} 560 -570 0 0 {name=p16 sig_type=std_logic lab=in}
C {devices/gnd.sym} 860 -530 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 860 -550 0 1 {name=p41 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 860 -570 0 1 {name=p42 sig_type=std_logic lab=start}
C {devices/lab_pin.sym} 560 -550 0 0 {name=p45 sig_type=std_logic lab=en_start}
C {devices/gnd.sym} 1340 -370 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1340 -390 0 1 {name=p46 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1340 -410 0 1 {name=p48 sig_type=std_logic lab=stop_delayed}
C {devices/lab_pin.sym} 1040 -410 0 0 {name=p49 sig_type=std_logic lab=stop}
C {devices/lab_pin.sym} 1040 -390 0 0 {name=p50 sig_type=std_logic lab=en_0}
C {devices/lab_pin.sym} 1040 -370 0 0 {name=p51 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 1040 -350 0 0 {name=p52 sig_type=std_logic lab=en_2}
C {devices/lab_pin.sym} 1040 -330 0 0 {name=p53 sig_type=std_logic lab=en_3}
C {devices/gnd.sym} 560 -470 0 0 {name=l23 lab=GND}
C {devices/gnd.sym} 560 -490 0 0 {name=l24 lab=GND}
C {devices/gnd.sym} 560 -510 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 560 -530 0 0 {name=l26 lab=GND}
C {variable_delay_dummy.sym} 1190 -550 0 0 {name=x7
schematic=variable_delay_dummy_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/variable_delay_dummy.sim.spice])"
tclcommand="textwindow [file normalize ../mag/variable_delay_dummy.sim.spice]"}
C {devices/lab_pin.sym} 1040 -570 0 0 {name=p18 sig_type=std_logic lab=start}
C {devices/lab_pin.sym} 1340 -570 0 1 {name=p20 sig_type=std_logic lab=start_delayed}
C {devices/lab_pin.sym} 1340 -550 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1340 -530 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 560 -390 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {variable_delay_short.sym} 1190 -360 0 0 {name=x5
schematic=variable_delay_short_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/variable_delay_short.sim.spice])"
tclcommand="textwindow [file normalize ../mag/variable_delay_short.sim.spice]"}
C {devices/lab_pin.sym} 1040 -310 0 0 {name=p40 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 600 -80 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 600 -110 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 600 -140 0 0 {name=p43 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 560 -310 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 560 -330 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 560 -350 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 560 -370 0 0 {name=l22 lab=GND}
