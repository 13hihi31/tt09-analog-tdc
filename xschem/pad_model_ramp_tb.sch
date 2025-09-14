v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 580 -410 580 -390 {
lab=#net1}
N 540 -440 540 -360 {
lab=in}
N 580 -470 580 -440 {
lab=vdd}
N 580 -360 580 -330 {
lab=GND}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -110 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 220 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 220 -110 0 0 {name=V20 value="PWL(0ms 0V 1ms 1.8V)" savecurrent=false}
C {devices/lab_pin.sym} 220 -140 0 0 {name=p19 sig_type=std_logic lab=input}
C {sky130_fd_pr/pfet_01v8.sym} 560 -440 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -360 0 0 {name=M2
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
C {devices/lab_pin.sym} 580 -470 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 540 -400 0 0 {name=p47 sig_type=std_logic lab=in}
C {devices/gnd.sym} 580 -330 0 0 {name=l3 lab=GND}
C {devices/code.sym} 260 -710 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 90 -710 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.1u 1m
.save all

.control
run
write pad_model_ramp_tb.raw
.endc
"}
C {pad_model.sym} 250 -390 0 0 {name=x2}
C {devices/gnd.sym} 100 -370 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p2 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 400 -410 0 1 {name=p1 sig_type=std_logic lab=in}
