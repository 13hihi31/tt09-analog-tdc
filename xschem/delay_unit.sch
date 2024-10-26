v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -600 560 -580 {
lab=out_2}
N 520 -630 520 -550 {
lab=in_1}
N 560 -180 560 -160 {
lab=out_1}
N 520 -210 520 -130 {
lab=in_2}
N 240 -300 240 -280 {
lab=in_1}
N 200 -330 200 -250 {
lab=in_2}
N 280 -480 280 -460 {
lab=in_2}
N 320 -510 320 -430 {
lab=in_1}
N 180 -590 520 -590 {
lab=in_1}
N 180 -170 520 -170 {
lab=in_2}
N 200 -250 200 -170 {
lab=in_2}
N 240 -290 320 -290 {
lab=in_1}
N 200 -470 200 -330 {
lab=in_2}
N 200 -470 280 -470 {
lab=in_2}
N 320 -430 320 -290 {
lab=in_1}
N 320 -590 320 -510 {
lab=in_1}
N 280 -540 280 -510 {
lab=VDD}
N 280 -430 280 -400 {
lab=VSS}
N 240 -360 240 -330 {
lab=VDD}
N 240 -250 240 -220 {
lab=VSS}
N 560 -240 560 -210 {
lab=VDD}
N 560 -130 560 -100 {
lab=VSS}
N 560 -550 560 -520 {
lab=VSS}
N 560 -660 560 -630 {
lab=VDD}
N 560 -170 660 -170 {
lab=out_1}
N 660 -660 660 -170 {
lab=out_1}
N 660 -660 760 -660 {
lab=out_1}
N 710 -590 710 -100 {
lab=out_2}
N 560 -590 710 -590 {}
N 710 -100 760 -100 {}
C {devices/iopin.sym} 30 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 180 -590 0 0 {name=p3 lab=in_1}
C {devices/opin.sym} 760 -660 0 0 {name=p5 lab=out_1}
C {devices/iopin.sym} 30 -20 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 180 -170 0 0 {name=p4 lab=in_2
}
C {devices/opin.sym} 760 -100 0 0 {name=p6 lab=out_2}
C {sky130_fd_pr/pfet_01v8.sym} 540 -630 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -550 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -210 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -130 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 220 -330 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -250 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -510 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -430 0 1 {name=M8
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
C {devices/lab_pin.sym} 240 -360 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -220 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -540 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -400 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -100 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -240 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -660 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -520 0 1 {name=p14 sig_type=std_logic lab=VSS}
