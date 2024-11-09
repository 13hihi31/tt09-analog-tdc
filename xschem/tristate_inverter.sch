v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -250 280 -230 {
lab=out}
N 240 -280 240 -200 {
lab=in}
N 280 -240 430 -240 {
lab=out}
N 280 -410 280 -380 {
lab=VDD}
N 280 -100 280 -70 {
lab=VSS}
N 280 -170 280 -130 {
lab=#net1}
N 280 -200 360 -200 {
lab=VSS}
N 280 -350 280 -310 {
lab=#net2}
N 280 -280 360 -280 {
lab=VDD}
N 160 -240 240 -240 {
lab=in}
C {devices/iopin.sym} 40 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 70 -220 0 0 {name=p3 lab=in}
C {devices/opin.sym} 40 -100 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 40 -20 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 260 -280 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 260 -200 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -380 0 0 {name=M1
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
C {devices/lab_pin.sym} 280 -410 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 260 -100 0 0 {name=M2
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
C {devices/lab_pin.sym} 280 -70 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -200 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -280 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 70 -180 0 0 {name=p9 lab=en}
C {devices/ipin.sym} 70 -140 0 0 {name=p10 lab=nen}
C {devices/lab_pin.sym} 240 -380 0 0 {name=p11 sig_type=std_logic lab=nen}
C {devices/lab_pin.sym} 240 -100 0 0 {name=p12 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 160 -240 0 0 {name=p13 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 430 -240 0 1 {name=p14 sig_type=std_logic lab=out}
