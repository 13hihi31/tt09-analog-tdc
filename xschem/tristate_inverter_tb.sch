v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -490 140 -470 {
lab=#net1}
N 100 -520 100 -440 {
lab=in_pulse}
N 140 -550 140 -520 {
lab=vdd}
N 140 -440 140 -410 {
lab=GND}
N 300 -490 300 -470 {
lab=#net2}
N 260 -520 260 -440 {
lab=#net1}
N 300 -550 300 -520 {
lab=vdd}
N 300 -440 300 -410 {
lab=GND}
N 460 -490 460 -470 {
lab=#net3}
N 420 -520 420 -440 {
lab=#net2}
N 460 -550 460 -520 {
lab=vdd}
N 460 -440 460 -410 {
lab=GND}
N 140 -480 260 -480 {
lab=#net1}
N 300 -480 420 -480 {
lab=#net2}
N 620 -490 620 -470 {
lab=in}
N 580 -520 580 -440 {
lab=#net3}
N 620 -550 620 -520 {
lab=vdd}
N 620 -440 620 -410 {
lab=GND}
N 460 -480 580 -480 {
lab=#net3}
N 620 -480 700 -480 {
lab=in}
N 900 -370 900 -350 {
lab=#net4}
N 860 -400 860 -320 {
lab=out}
N 900 -430 900 -400 {
lab=vdd}
N 900 -320 900 -290 {
lab=GND}
N 900 -160 900 -140 {
lab=#net5}
N 860 -190 860 -110 {
lab=out}
N 900 -220 900 -190 {
lab=vdd}
N 900 -110 900 -80 {
lab=GND}
N 860 -320 860 -190 {
lab=out}
C {tristate_inverter.sym} 390 -250 0 0 {name=x1}
C {devices/code.sym} 510 -790 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 330 -790 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.0001n 5n
.save v(in) v(out)

.control
run
set wr_vecnames
wrdata tristate_inverter_9313_tb.txt v(in) v(out)
.endc
"}
C {sky130_fd_pr/pfet_01v8.sym} 120 -520 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 120 -440 0 0 {name=M18
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
C {devices/lab_pin.sym} 140 -550 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 100 -480 0 0 {name=p25 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 140 -410 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 280 -520 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -440 0 0 {name=M20
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
C {devices/lab_pin.sym} 300 -550 0 1 {name=p26 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 300 -410 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 440 -520 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -440 0 0 {name=M22
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
C {devices/lab_pin.sym} 460 -550 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 460 -410 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 700 -480 0 1 {name=p29 sig_type=std_logic lab=in}
C {sky130_fd_pr/pfet_01v8.sym} 600 -520 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -440 0 0 {name=M26
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
C {devices/lab_pin.sym} 620 -550 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 620 -410 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 400 -40 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 400 -70 0 0 {name=V3 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 400 -100 0 0 {name=p19 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 160 -40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 160 -70 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 160 -100 0 0 {name=p1 sig_type=std_logic lab=en}
C {devices/gnd.sym} 260 -40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 260 -70 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 260 -100 0 0 {name=p2 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 240 -250 0 0 {name=p5 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 240 -230 0 0 {name=p6 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 240 -270 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/gnd.sym} 540 -230 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 540 -250 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 540 -270 0 1 {name=p8 sig_type=std_logic lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 880 -400 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -320 0 0 {name=M2
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
C {devices/lab_pin.sym} 900 -430 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 900 -290 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 880 -190 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -110 0 0 {name=M4
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
C {devices/lab_pin.sym} 900 -220 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 900 -80 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 860 -250 0 0 {name=p11 sig_type=std_logic lab=out}
