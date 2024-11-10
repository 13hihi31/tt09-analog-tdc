v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -590 300 -560 {
lab=VDD}
N 300 -180 300 -150 {
lab=VSS}
N 300 -530 300 -410 {
lab=#net1}
N 520 -180 520 -150 {
lab=VSS}
N 920 -560 920 -530 {
lab=VDD}
N 920 -430 920 -400 {
lab=VSS}
N 880 -530 880 -430 {
lab=#net1}
N 920 -500 920 -460 {
lab=out}
N 300 -470 880 -470 {
lab=#net1}
N 300 -280 380 -280 {
lab=VSS}
N 520 -280 600 -280 {
lab=VSS}
N 300 -310 520 -310 {
lab=#net2}
N 300 -250 520 -250 {
lab=#net3}
N 300 -210 520 -210 {
lab=#net3}
N 300 -380 380 -380 {
lab=VSS}
N 300 -350 300 -310 {
lab=#net2}
N 260 -560 260 -180 {
lab=in}
N 300 -250 300 -210 {
lab=#net3}
N 520 -380 600 -380 {
lab=VSS}
N 740 -380 820 -380 {
lab=VSS}
N 700 -440 700 -380 {
lab=in}
N 480 -440 480 -380 {
lab=in}
N 300 -410 740 -410 {
lab=#net1}
N 300 -350 740 -350 {
lab=#net2}
N 260 -440 700 -440 {
lab=in}
C {devices/iopin.sym} 60 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 80 -240 0 0 {name=p3 lab=in}
C {devices/opin.sym} 60 -120 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 60 -40 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 280 -560 0 0 {name=M1
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
C {devices/lab_pin.sym} 300 -590 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 280 -180 0 0 {name=M2
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
C {devices/lab_pin.sym} 300 -150 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 80 -200 0 0 {name=p9 lab=t0}
C {devices/lab_pin.sym} 920 -480 0 1 {name=p14 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 260 -470 0 0 {name=p10 sig_type=std_logic lab=in}
C {sky130_fd_pr/nfet_01v8.sym} 500 -180 0 0 {name=M5
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
C {devices/lab_pin.sym} 520 -150 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 80 -160 0 0 {name=p15 lab=t1}
C {devices/lab_pin.sym} 480 -280 0 0 {name=p18 sig_type=std_logic lab=t0}
C {devices/lab_pin.sym} 480 -180 0 0 {name=p19 sig_type=std_logic lab=t1}
C {sky130_fd_pr/pfet_01v8.sym} 900 -530 0 0 {name=M8
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
C {devices/lab_pin.sym} 920 -560 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 900 -430 0 0 {name=M9
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
C {devices/lab_pin.sym} 920 -400 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 280 -280 0 0 {name=M10
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
C {devices/lab_pin.sym} 380 -280 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 500 -280 0 0 {name=M11
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
C {devices/lab_pin.sym} 600 -280 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 280 -380 0 0 {name=M3
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
C {devices/lab_pin.sym} 380 -380 0 1 {name=p7 sig_type=std_logic lab=VSS
W=1}
C {sky130_fd_pr/nfet_01v8.sym} 500 -380 0 0 {name=M4
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
C {devices/lab_pin.sym} 600 -380 0 1 {name=p8 sig_type=std_logic lab=VSS
W=1}
C {sky130_fd_pr/nfet_01v8.sym} 720 -380 0 0 {name=M6
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
C {devices/lab_pin.sym} 820 -380 0 1 {name=p11 sig_type=std_logic lab=VSS
W=1}
