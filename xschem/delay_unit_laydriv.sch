v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -430 240 -410 {
lab=in_1}
N 200 -460 200 -380 {
lab=in_2}
N 240 -420 320 -420 {
lab=in_1}
N 240 -490 240 -460 {
lab=VDD}
N 240 -380 240 -350 {
lab=VSS}
N 400 -430 400 -410 {
lab=in_2}
N 360 -460 360 -380 {
lab=in_1}
N 400 -420 480 -420 {
lab=in_2}
N 400 -490 400 -460 {
lab=VDD}
N 400 -380 400 -350 {
lab=VSS}
N 560 -430 560 -410 {
lab=out_1}
N 520 -460 520 -380 {
lab=in_2}
N 560 -420 640 -420 {
lab=out_1}
N 560 -490 560 -460 {
lab=VDD}
N 560 -380 560 -350 {
lab=VSS}
N 720 -430 720 -410 {
lab=out_1}
N 680 -460 680 -380 {
lab=in_2}
N 720 -420 800 -420 {
lab=out_1}
N 720 -490 720 -460 {
lab=VDD}
N 720 -380 720 -350 {
lab=VSS}
N 880 -430 880 -410 {
lab=out_1}
N 840 -460 840 -380 {
lab=in_2}
N 880 -420 960 -420 {
lab=out_1}
N 880 -490 880 -460 {
lab=VDD}
N 880 -380 880 -350 {
lab=VSS}
N 1040 -430 1040 -410 {
lab=out_2}
N 1000 -460 1000 -380 {
lab=in_1}
N 1040 -420 1120 -420 {
lab=out_2}
N 1040 -490 1040 -460 {
lab=VDD}
N 1040 -380 1040 -350 {
lab=VSS}
N 1200 -430 1200 -410 {
lab=out_2}
N 1160 -460 1160 -380 {
lab=in_1}
N 1200 -420 1280 -420 {
lab=out_2}
N 1200 -490 1200 -460 {
lab=VDD}
N 1200 -380 1200 -350 {
lab=VSS}
N 1360 -430 1360 -410 {
lab=out_2}
N 1320 -460 1320 -380 {
lab=in_1}
N 1360 -420 1440 -420 {
lab=out_2}
N 1360 -490 1360 -460 {
lab=VDD}
N 1360 -380 1360 -350 {
lab=VSS}
N 100 -540 1320 -540 {
lab=in_1}
N 1320 -540 1320 -460 {
lab=in_1}
N 1160 -540 1160 -460 {
lab=in_1}
N 1000 -540 1000 -460 {
lab=in_1}
N 100 -300 840 -300 {
lab=in_2}
N 840 -380 840 -300 {
lab=in_2}
N 680 -380 680 -300 {
lab=in_2}
N 520 -380 520 -300 {
lab=in_2}
N 200 -380 200 -300 {
lab=in_2}
N 480 -420 480 -300 {
lab=in_2}
N 320 -540 320 -420 {
lab=in_1}
N 360 -540 360 -460 {
lab=in_1}
N 1120 -420 1120 -300 {
lab=out_2}
N 1120 -300 1540 -300 {
lab=out_2}
N 1280 -420 1280 -300 {
lab=out_2}
N 1440 -420 1440 -300 {
lab=out_2}
N 640 -580 640 -420 {
lab=out_1}
N 640 -580 1540 -580 {
lab=out_1}
N 800 -580 800 -420 {
lab=out_1}
N 960 -580 960 -420 {
lab=out_1}
N 960 -420 960 -220 {
lab=out_1}
C {devices/iopin.sym} 30 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 100 -540 0 0 {name=p3 lab=in_1}
C {devices/opin.sym} 1540 -580 0 0 {name=p5 lab=out_1}
C {devices/iopin.sym} 30 -20 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 100 -300 0 0 {name=p4 lab=in_2
}
C {devices/opin.sym} 1540 -300 0 0 {name=p6 lab=out_2}
C {sky130_fd_pr/pfet_01v8.sym} 220 -460 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -380 0 0 {name=M4
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
C {devices/lab_pin.sym} 240 -490 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -350 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 380 -460 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 380 -380 0 0 {name=M8
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
C {devices/lab_pin.sym} 400 -490 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -350 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 540 -460 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -380 0 0 {name=M2
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
C {devices/lab_pin.sym} 560 -490 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -350 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 700 -460 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -380 0 0 {name=M7
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
C {devices/lab_pin.sym} 720 -490 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 -350 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 860 -460 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -380 0 0 {name=M10
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
C {devices/lab_pin.sym} 880 -490 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -350 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1020 -460 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1020 -380 0 0 {name=M12
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
C {devices/lab_pin.sym} 1040 -490 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1040 -350 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1180 -460 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 1180 -380 0 0 {name=M14
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
C {devices/lab_pin.sym} 1200 -490 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1200 -350 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1340 -460 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 1340 -380 0 0 {name=M16
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
C {devices/lab_pin.sym} 1360 -490 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1360 -350 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 960 -220 0 0 {name=p23 lab=out_1}
