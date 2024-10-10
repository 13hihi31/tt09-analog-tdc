v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -220 210 -180 {
lab=out}
N 170 -250 170 -150 {
lab=in}
N 120 -200 170 -200 {
lab=in}
N 210 -200 280 -200 {
lab=out}
N 210 -320 210 -280 {
lab=VDD}
N 210 -120 210 -80 {
lab=VSS}
N 210 -250 280 -250 {
lab=VDD}
N 210 -150 280 -150 {
lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 190 -250 0 0 {name=M1
L=0.15
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 190 -150 0 0 {name=M2
L=0.15
W=6
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
C {devices/ipin.sym} 120 -200 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 20 -340 0 0 {name=p2 lab=VDD
}
C {devices/opin.sym} 280 -200 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 20 -310 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 210 -320 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 -80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -150 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -250 0 1 {name=p8 sig_type=std_logic lab=VDD}
