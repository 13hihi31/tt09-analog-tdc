v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -320 340 -300 {
lab=output}
N 300 -350 300 -270 {
lab=input}
N 340 -380 340 -350 {
lab=vdd}
N 340 -270 340 -240 {
lab=GND}
N 340 -310 420 -310 {
lab=output}
N 220 -310 300 -310 {
lab=input}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 320 -350 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -270 0 0 {name=M2
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
C {devices/lab_pin.sym} 340 -380 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 340 -240 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 420 -310 0 1 {name=p1 sig_type=std_logic lab=output}
C {devices/code.sym} 280 -550 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 105 -550 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.01 1.0
.save all

.control
run
write inverter_file_tran.raw
.endc
"}
C {devices/gnd.sym} 180 -40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 180 -70 0 0 {name=V2 value="PWL 0 0 0.1 0.1 0.2 0.2 0.3 0.3 0.4 0.4" savecurrent=false}
C {devices/lab_pin.sym} 180 -100 0 0 {name=p3 sig_type=std_logic lab=input}
C {devices/lab_wire.sym} 220 -310 0 0 {name=p2 sig_type=std_logic lab=input}
