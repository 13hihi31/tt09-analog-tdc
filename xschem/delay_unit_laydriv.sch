v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -210 420 -190 {
lab=in_1}
N 380 -240 380 -160 {
lab=in_2}
N 420 -200 500 -200 {
lab=in_1}
N 420 -270 420 -240 {
lab=VDD}
N 420 -160 420 -130 {
lab=VSS}
N 580 -210 580 -190 {
lab=in_2}
N 540 -240 540 -160 {
lab=in_1}
N 580 -200 660 -200 {
lab=in_2}
N 580 -270 580 -240 {
lab=VDD}
N 580 -160 580 -130 {
lab=VSS}
N 740 -210 740 -190 {
lab=out_1}
N 700 -240 700 -160 {
lab=in_2}
N 740 -200 820 -200 {
lab=out_1}
N 740 -270 740 -240 {
lab=VDD}
N 740 -160 740 -130 {
lab=VSS}
N 900 -210 900 -190 {
lab=out_1}
N 860 -240 860 -160 {
lab=in_2}
N 900 -200 980 -200 {
lab=out_1}
N 900 -270 900 -240 {
lab=VDD}
N 900 -160 900 -130 {
lab=VSS}
N 1060 -210 1060 -190 {
lab=out_1}
N 1020 -240 1020 -160 {
lab=in_2}
N 1060 -200 1140 -200 {
lab=out_1}
N 1060 -270 1060 -240 {
lab=VDD}
N 1060 -160 1060 -130 {
lab=VSS}
N 1220 -210 1220 -190 {
lab=out_2}
N 1180 -240 1180 -160 {
lab=in_1}
N 1220 -200 1300 -200 {
lab=out_2}
N 1220 -270 1220 -240 {
lab=VDD}
N 1220 -160 1220 -130 {
lab=VSS}
N 1380 -210 1380 -190 {
lab=out_2}
N 1340 -240 1340 -160 {
lab=in_1}
N 1380 -200 1460 -200 {
lab=out_2}
N 1380 -270 1380 -240 {
lab=VDD}
N 1380 -160 1380 -130 {
lab=VSS}
N 1540 -210 1540 -190 {
lab=out_2}
N 1500 -240 1500 -160 {
lab=in_1}
N 1540 -200 1620 -200 {
lab=out_2}
N 1540 -270 1540 -240 {
lab=VDD}
N 1540 -160 1540 -130 {
lab=VSS}
N 280 -320 1500 -320 {
lab=in_1}
N 1500 -320 1500 -240 {
lab=in_1}
N 1340 -320 1340 -240 {
lab=in_1}
N 1180 -320 1180 -240 {
lab=in_1}
N 280 -80 1020 -80 {
lab=in_2}
N 1020 -160 1020 -80 {
lab=in_2}
N 860 -160 860 -80 {
lab=in_2}
N 700 -160 700 -80 {
lab=in_2}
N 380 -160 380 -80 {
lab=in_2}
N 660 -200 660 -80 {
lab=in_2}
N 500 -320 500 -200 {
lab=in_1}
N 540 -320 540 -240 {
lab=in_1}
N 1300 -200 1300 -80 {
lab=out_2}
N 1300 -80 1720 -80 {
lab=out_2}
N 1460 -200 1460 -80 {
lab=out_2}
N 1620 -200 1620 -80 {
lab=out_2}
N 820 -360 820 -200 {
lab=out_1}
N 820 -360 1720 -360 {
lab=out_1}
N 980 -360 980 -200 {
lab=out_1}
N 1140 -360 1140 -200 {
lab=out_1}
C {devices/iopin.sym} 60 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 80 -220 0 0 {name=p3 lab=in_1}
C {devices/opin.sym} 60 -140 0 0 {name=p5 lab=out_1}
C {devices/iopin.sym} 60 -20 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 80 -180 0 0 {name=p4 lab=in_2
}
C {devices/opin.sym} 60 -100 0 0 {name=p6 lab=out_2}
C {sky130_fd_pr/pfet_01v8.sym} 400 -240 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 400 -160 0 0 {name=M4
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
C {devices/lab_pin.sym} 420 -270 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -130 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 560 -240 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -160 0 0 {name=M8
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
C {devices/lab_pin.sym} 580 -270 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 -130 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 720 -240 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -160 0 0 {name=M2
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
C {devices/lab_pin.sym} 740 -270 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -130 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 880 -240 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -160 0 0 {name=M7
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
C {devices/lab_pin.sym} 900 -270 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 -130 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -240 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -160 0 0 {name=M10
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
C {devices/lab_pin.sym} 1060 -270 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -130 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1200 -240 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1200 -160 0 0 {name=M12
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
C {devices/lab_pin.sym} 1220 -270 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1220 -130 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1360 -240 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 1360 -160 0 0 {name=M14
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
C {devices/lab_pin.sym} 1380 -270 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1380 -130 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1520 -240 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 1520 -160 0 0 {name=M16
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
C {devices/lab_pin.sym} 1540 -270 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1540 -130 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -320 0 0 {name=p23 sig_type=std_logic lab=in_1}
C {devices/lab_wire.sym} 280 -80 0 0 {name=p24 sig_type=std_logic lab=in_2}
C {devices/lab_wire.sym} 1720 -360 0 1 {name=p25 sig_type=std_logic lab=out_1}
C {devices/lab_wire.sym} 1720 -80 0 1 {name=p26 sig_type=std_logic lab=out_2}
