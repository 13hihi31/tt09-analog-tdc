v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -270 240 -240 {
lab=VDD}
N 240 -140 240 -110 {
lab=VSS}
N 200 -240 200 -140 {
lab=in}
N 240 -210 240 -170 {
lab=out}
C {devices/iopin.sym} 40 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 70 -140 0 0 {name=p3 lab=in}
C {devices/opin.sym} 40 -100 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 40 -20 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 220 -240 0 0 {name=M1
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
C {devices/lab_pin.sym} 240 -270 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 220 -140 0 0 {name=M2
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
C {devices/lab_pin.sym} 240 -110 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -190 0 0 {name=p13 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 240 -190 0 1 {name=p14 sig_type=std_logic lab=out}
