v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -680 520 -660 {
lab=left_latch_2}
N 560 -710 560 -630 {
lab=right_latch_1}
N 320 -800 320 -780 {
lab=right_latch_2}
N 280 -830 280 -750 {
lab=left_latch_1}
N 300 -1120 300 -1100 {
lab=left_latch_1}
N 340 -1150 340 -1070 {
lab=right_latch_1}
N 540 -1240 540 -1220 {
lab=right_latch_1}
N 500 -1270 500 -1190 {
lab=left_latch_1}
N 320 -300 320 -260 {
lab=q}
N 320 -480 320 -360 {
lab=#net1}
N 520 -480 520 -360 {
lab=#net2}
N 520 -300 520 -260 {
lab=nq}
N 520 -200 520 -100 {
lab=#net3}
N 320 -200 320 -100 {
lab=#net4}
N 620 -390 620 -180 {
lab=nq}
N 220 -390 220 -180 {
lab=q}
N 360 -510 400 -510 {
lab=nq}
N 400 -510 400 -70 {
lab=nq}
N 360 -70 400 -70 {
lab=nq}
N 440 -510 480 -510 {
lab=q}
N 440 -510 440 -70 {
lab=q}
N 440 -70 480 -70 {
lab=q}
N 220 -260 320 -260 {
lab=q}
N 320 -260 440 -260 {
lab=q}
N 400 -300 520 -300 {
lab=nq}
N 520 -300 620 -300 {
lab=nq}
N 180 -230 280 -230 {
lab=left_latch_1}
N 300 -1040 300 -1020 {
lab=#net5}
N 300 -960 540 -960 {
lab=#net6}
N 560 -230 660 -230 {
lab=right_latch_1}
N 360 -330 380 -330 {
lab=left_latch_2}
N 380 -670 380 -330 {
lab=left_latch_2}
N 460 -330 480 -330 {
lab=right_latch_2}
N 460 -790 460 -330 {
lab=right_latch_2}
N 180 -1320 180 -230 {
lab=left_latch_1}
N 660 -1320 660 -230 {
lab=right_latch_1}
N 180 -1110 300 -1110 {
lab=left_latch_1}
N 340 -1110 660 -1110 {
lab=right_latch_1}
N 560 -670 660 -670 {
lab=right_latch_1}
N 180 -790 280 -790 {
lab=left_latch_1}
N 660 -150 700 -150 {
lab=right_latch_2}
N 700 -790 700 -150 {
lab=right_latch_2}
N 320 -790 700 -790 {
lab=right_latch_2}
N 140 -670 520 -670 {
lab=left_latch_2}
N 140 -670 140 -150 {
lab=left_latch_2}
N 140 -150 180 -150 {
lab=left_latch_2}
N 540 -1160 540 -1020 {
lab=#net7}
N 180 -1230 500 -1230 {
lab=left_latch_1}
N 540 -1230 660 -1230 {
lab=right_latch_1}
N 540 -1190 600 -1190 {
lab=VSS}
N 240 -1070 300 -1070 {
lab=VSS}
N 480 -990 540 -990 {
lab=VSS}
N 300 -990 360 -990 {
lab=VSS}
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
N 300 -1180 300 -1150 {
lab=VDD}
N 540 -1300 540 -1270 {
lab=VDD}
N 660 -1380 660 -1350 {
lab=VDD}
N 180 -1380 180 -1350 {
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
N 420 -930 420 -900 {
lab=VSS}
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
C {devices/iopin.sym} 40 -100 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 60 -300 0 0 {name=p3 lab=d}
C {devices/opin.sym} 40 -180 0 0 {name=p6 lab=q}
C {sky130_fd_pr/pfet_01v8.sym} 160 -1350 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 680 -1350 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 520 -1270 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 320 -1150 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 520 -1190 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -1070 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -930 0 1 {name=M9
L=0.15
W=15
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -990 0 1 {name=M10
L=0.15
W=12
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -990 0 0 {name=M11
L=0.15
W=12
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -830 0 0 {name=M12
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 300 -750 0 0 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -710 0 1 {name=M14
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -630 0 1 {name=M15
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
C {devices/iopin.sym} 40 -60 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -260 0 0 {name=p4 lab=nd}
C {devices/ipin.sym} 60 -220 0 0 {name=p5 lab=clk}
C {devices/opin.sym} 40 -140 0 0 {name=p7 lab=nq}
C {devices/lab_pin.sym} 180 -1380 1 0 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 660 -1380 1 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 600 -1190 2 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 240 -1070 2 1 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 480 -990 2 1 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 360 -990 2 0 {name=p23 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 420 -900 2 0 {name=p25 sig_type=std_logic lab=VSS
}
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
C {devices/lab_pin.sym} 300 -1180 2 1 {name=p38 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 540 -1300 2 0 {name=p20 sig_type=std_logic lab=VDD
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
C {devices/lab_pin.sym} 140 -1350 0 0 {name=p43 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 700 -1350 0 1 {name=p44 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 460 -930 0 1 {name=p45 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 260 -990 0 0 {name=p46 sig_type=std_logic lab=d

}
C {devices/lab_pin.sym} 580 -990 0 1 {name=p47 sig_type=std_logic lab=nd

}
C {devices/lab_wire.sym} 370 -260 0 0 {name=p8 sig_type=std_logic lab=q}
C {devices/lab_wire.sym} 470 -300 2 0 {name=p9 sig_type=std_logic lab=nq}
C {devices/lab_wire.sym} 180 -1170 0 0 {name=p10 sig_type=std_logic lab=left_latch_1}
C {devices/lab_wire.sym} 660 -1170 0 1 {name=p11 sig_type=std_logic lab=right_latch_1}
C {devices/lab_wire.sym} 700 -500 0 1 {name=p12 sig_type=std_logic lab=right_latch_2}
C {devices/lab_wire.sym} 140 -500 0 0 {name=p24 sig_type=std_logic lab=left_latch_2}
