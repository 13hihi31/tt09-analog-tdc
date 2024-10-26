v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -570 560 -550 {
lab=out_1}
N 520 -600 520 -520 {
lab=in_1}
N 560 -150 560 -130 {
lab=out_2}
N 520 -180 520 -100 {
lab=in_2}
N 240 -270 240 -250 {
lab=in_1}
N 200 -300 200 -220 {
lab=in_2}
N 280 -450 280 -430 {
lab=in_2}
N 320 -480 320 -400 {
lab=in_1}
N 560 -560 670 -560 {
lab=out_1}
N 560 -140 670 -140 {
lab=out_2}
N 180 -560 520 -560 {
lab=in_1}
N 180 -140 520 -140 {
lab=in_2}
N 200 -220 200 -140 {
lab=in_2}
N 240 -260 320 -260 {
lab=in_1}
N 200 -440 200 -300 {
lab=in_2}
N 200 -440 280 -440 {
lab=in_2}
N 320 -400 320 -260 {
lab=in_1}
N 320 -560 320 -480 {
lab=in_1}
N 280 -510 280 -480 {
lab=VDD}
N 280 -400 280 -370 {
lab=VSS}
N 240 -330 240 -300 {
lab=VDD}
N 240 -220 240 -190 {
lab=VSS}
N 560 -210 560 -180 {
lab=VDD}
N 560 -100 560 -70 {
lab=VSS}
N 560 -520 560 -490 {
lab=VSS}
N 560 -630 560 -600 {
lab=VDD}
C {devices/iopin.sym} 30 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 180 -560 0 0 {name=p3 lab=in_1}
C {devices/opin.sym} 670 -560 0 0 {name=p5 lab=out_1}
C {devices/iopin.sym} 30 -40 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 180 -140 0 0 {name=p4 lab=in_2
}
C {devices/opin.sym} 670 -140 0 0 {name=p6 lab=out_2}
C {sky130_fd_pr/pfet_01v8.sym} 540 -600 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -520 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -180 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -100 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 220 -300 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -220 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -480 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -400 0 1 {name=M8
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
C {devices/lab_pin.sym} 240 -330 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -190 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -510 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -370 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -70 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -210 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -630 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -490 0 1 {name=p14 sig_type=std_logic lab=VSS}
