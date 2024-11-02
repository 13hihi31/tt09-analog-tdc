v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -680 520 -660 {
lab=#net1}
N 560 -710 560 -630 {
lab=b2}
N 320 -800 320 -780 {
lab=#net2}
N 280 -830 280 -750 {
lab=a2}
N 320 -300 320 -260 {
lab=c}
N 320 -480 320 -360 {
lab=#net3}
N 520 -480 520 -360 {
lab=#net4}
N 520 -300 520 -260 {
lab=nc}
N 520 -200 520 -100 {
lab=#net5}
N 320 -200 320 -100 {
lab=#net6}
N 620 -390 620 -180 {
lab=nc}
N 220 -390 220 -180 {
lab=c}
N 360 -510 400 -510 {
lab=nc}
N 400 -510 400 -70 {
lab=nc}
N 360 -70 400 -70 {
lab=nc}
N 440 -510 480 -510 {
lab=c}
N 440 -510 440 -70 {
lab=c}
N 440 -70 480 -70 {
lab=c}
N 220 -260 320 -260 {
lab=c}
N 320 -260 440 -260 {
lab=c}
N 400 -300 520 -300 {
lab=nc}
N 520 -300 620 -300 {
lab=nc}
N 180 -230 280 -230 {
lab=a1}
N 560 -230 660 -230 {
lab=b1}
N 360 -330 380 -330 {
lab=#net1}
N 380 -670 380 -330 {
lab=#net1}
N 460 -330 480 -330 {
lab=#net2}
N 460 -790 460 -330 {
lab=#net2}
N 660 -150 700 -150 {
lab=#net2}
N 700 -790 700 -150 {
lab=#net2}
N 320 -790 700 -790 {
lab=#net2}
N 140 -670 520 -670 {
lab=#net1}
N 140 -670 140 -150 {
lab=#net1}
N 140 -150 180 -150 {
lab=#net1}
N 520 -630 520 -600 {
lab=VSS}
N 320 -750 320 -720 {
lab=VSS}
N 520 -740 520 -710 {
lab=VDD}
N 320 -860 320 -830 {
lab=VDD}
N 520 -540 520 -510 {
lab=VDD}
N 320 -540 320 -510 {
lab=VDD}
N 220 -450 220 -420 {
lab=VDD}
N 620 -450 620 -420 {
lab=VDD}
N 220 -150 260 -150 {
lab=VSS}
N 520 -70 560 -70 {
lab=VSS}
N 280 -70 320 -70 {
lab=VSS}
N 580 -150 620 -150 {
lab=VSS}
N 320 -230 350 -230 {
lab=VSS}
N 490 -230 520 -230 {
lab=VSS}
N 280 -330 320 -330 {
lab=VDD}
N 520 -330 560 -330 {
lab=VDD}
N 180 -840 180 -230 {
lab=a1}
N 660 -840 660 -230 {
lab=b1}
C {sky130_fd_pr/nfet_01v8.sym} 500 -70 0 0 {name=M2
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
C {devices/iopin.sym} 40 -140 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 60 -380 0 0 {name=p3 lab=a1}
C {devices/opin.sym} 40 -220 0 0 {name=p6 lab=c}
C {sky130_fd_pr/pfet_01v8.sym} 300 -830 0 0 {name=M12
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -750 0 0 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -710 0 1 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -630 0 1 {name=M15
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
C {sky130_fd_pr/pfet_01v8.sym} 200 -420 0 0 {name=M16
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
C {sky130_fd_pr/nfet_01v8.sym} 200 -150 0 0 {name=M17
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
C {sky130_fd_pr/pfet_01v8.sym} 640 -420 0 1 {name=M18
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -150 0 1 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -510 0 0 {name=M20
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -330 0 0 {name=M21
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -330 0 1 {name=M22
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -510 0 1 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -230 0 0 {name=M24
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -230 0 1 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -70 0 1 {name=M26
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
C {devices/iopin.sym} 40 -100 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -260 0 0 {name=p4 lab=b2}
C {devices/opin.sym} 40 -180 0 0 {name=p7 lab=nc}
C {devices/lab_pin.sym} 320 -720 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 520 -600 2 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 320 -860 0 1 {name=p28 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 520 -740 0 0 {name=p29 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 320 -540 0 0 {name=p30 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 520 -540 0 1 {name=p31 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 220 -450 0 1 {name=p32 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 620 -450 0 0 {name=p33 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 520 -40 2 1 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 320 -40 2 0 {name=p35 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 620 -120 2 0 {name=p36 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 220 -120 2 1 {name=p37 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 260 -150 2 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 560 -70 2 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 350 -230 2 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 280 -70 2 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 580 -150 2 1 {name=p39 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 490 -230 2 1 {name=p40 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 280 -330 0 0 {name=p41 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 560 -330 0 1 {name=p42 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 370 -260 0 0 {name=p8 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 470 -300 2 0 {name=p9 sig_type=std_logic lab=nc}
C {devices/lab_wire.sym} 660 -820 0 1 {name=p12 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 180 -820 0 0 {name=p24 sig_type=std_logic lab=a1}
C {devices/lab_wire.sym} 280 -790 0 0 {name=p5 sig_type=std_logic lab=a2}
C {devices/lab_wire.sym} 560 -670 0 1 {name=p10 sig_type=std_logic lab=b2}
C {devices/ipin.sym} 60 -340 0 0 {name=p11 lab=a2}
C {devices/ipin.sym} 60 -300 0 0 {name=p13 lab=b1}
