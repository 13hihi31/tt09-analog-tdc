v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -490 450 -460 {
lab=VDD}
N 450 -180 450 -150 {
lab=VSS}
N 450 -250 450 -210 {
lab=#net1}
N 450 -280 530 -280 {
lab=VSS}
N 580 -490 580 -460 {
lab=VDD}
N 450 -430 580 -430 {
lab=out}
N 450 -430 450 -310 {
lab=out}
C {devices/iopin.sym} 80 -100 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 100 -220 0 0 {name=p3 lab=a}
C {devices/opin.sym} 80 -140 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 80 -60 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 430 -280 0 0 {name=M7
L=0.15
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -460 0 0 {name=M1
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
C {devices/lab_pin.sym} 450 -490 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 430 -180 0 0 {name=M2
L=0.15
W=2
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
C {devices/lab_pin.sym} 450 -150 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -280 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 -180 0 0 {name=p9 lab=b}
C {devices/lab_pin.sym} 450 -370 0 1 {name=p14 sig_type=std_logic lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 560 -460 0 0 {name=M3
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
C {devices/lab_pin.sym} 580 -490 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -460 0 0 {name=p10 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 540 -460 0 0 {name=p11 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 410 -280 0 0 {name=p13 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 410 -180 0 0 {name=p15 sig_type=std_logic lab=b}
