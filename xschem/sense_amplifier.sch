v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 640 -480 640 -400 {
lab=out2}
N 600 -370 600 -350 {
lab=#net1}
N 600 -220 840 -220 {
lab=#net2}
N 480 -440 600 -440 {
lab=out1}
N 640 -440 960 -440 {
lab=out2}
N 1240 -610 1360 -610 {
lab=out2}
N 1240 -570 1300 -570 {
lab=VSS}
N 540 -400 600 -400 {
lab=VSS}
N 990 -250 1050 -250 {
lab=VSS}
N 600 -250 660 -250 {
lab=VSS}
N 600 -550 600 -520 {
lab=VDD}
N 1240 -720 1240 -690 {
lab=VDD}
N 1360 -820 1360 -790 {
lab=VDD}
N 480 -820 480 -790 {
lab=VDD}
N 770 -110 770 -80 {
lab=VSS}
N 760 -450 760 -430 {
lab=out1}
N 700 -400 760 -400 {
lab=VSS}
N 600 -490 600 -430 {
lab=out1}
N 600 -470 760 -470 {
lab=out1}
N 760 -470 760 -450 {
lab=out1}
N 640 -520 640 -480 {
lab=out2}
N 780 -250 840 -250 {
lab=VSS}
N 420 -250 480 -250 {
lab=VSS}
N 240 -250 300 -250 {
lab=VSS}
N 240 -220 600 -220 {
lab=#net2}
N 240 -280 780 -280 {
lab=#net1}
N 600 -350 600 -280 {
lab=#net1}
N 1180 -250 1240 -250 {
lab=VSS}
N 1370 -250 1430 -250 {
lab=VSS}
N 1560 -250 1620 -250 {
lab=VSS}
N 840 -220 1620 -220 {
lab=#net2}
N 1050 -280 1620 -280 {
lab=#net3}
N 1080 -570 1140 -570 {
lab=VSS}
N 600 -370 760 -370 {
lab=#net1}
N 1080 -540 1240 -540 {
lab=#net3}
N 1080 -640 1240 -640 {
lab=out2}
N 800 -440 800 -400 {
lab=out2}
N 480 -610 1160 -610 {
lab=out1}
N 1000 -440 1360 -440 {
lab=out2}
N 1360 -760 1360 -440 {
lab=out2}
N 480 -760 480 -440 {
lab=out1}
N 1040 -610 1040 -570 {
lab=out1}
N 920 -110 920 -80 {
lab=VSS}
N 620 -110 620 -80 {
lab=VSS}
N 1070 -110 1070 -80 {
lab=VSS}
N 1220 -110 1220 -80 {
lab=VSS}
N 960 -440 1000 -440 {
lab=out2}
N 1160 -610 1200 -610 {
lab=out1}
N 1080 -640 1080 -600 {
lab=out2}
N 1240 -660 1240 -600 {
lab=out2}
N 1200 -690 1200 -570 {
lab=out1}
N 1240 -540 1240 -280 {
lab=#net3}
N 620 -140 1220 -140 {
lab=#net2}
N 920 -220 920 -140 {
lab=#net2}
C {devices/iopin.sym} 40 -100 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 60 -300 0 0 {name=p3 lab=d}
C {devices/opin.sym} 40 -180 0 0 {name=p6 lab=out1}
C {sky130_fd_pr/pfet_01v8.sym} 460 -790 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 1380 -790 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 1220 -690 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 620 -520 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 1220 -570 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -400 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 790 -110 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1070 -250 0 1 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 580 -250 0 0 {name=M11
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
C {devices/iopin.sym} 40 -60 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -260 0 0 {name=p4 lab=nd}
C {devices/ipin.sym} 60 -220 0 0 {name=p5 lab=clk}
C {devices/opin.sym} 40 -140 0 0 {name=p7 lab=out2}
C {devices/lab_pin.sym} 480 -820 1 0 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1360 -820 1 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1300 -570 2 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 540 -400 2 1 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 990 -250 2 1 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -250 2 0 {name=p23 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 770 -80 2 0 {name=p25 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 600 -550 2 1 {name=p38 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1240 -720 2 0 {name=p20 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 440 -790 0 0 {name=p43 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 1400 -790 0 1 {name=p44 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 810 -110 0 1 {name=p45 sig_type=std_logic lab=clk

}
C {devices/lab_pin.sym} 560 -250 0 0 {name=p46 sig_type=std_logic lab=d

}
C {devices/lab_pin.sym} 1090 -250 0 1 {name=p47 sig_type=std_logic lab=nd

}
C {devices/lab_wire.sym} 480 -500 0 0 {name=p10 sig_type=std_logic lab=out1}
C {devices/lab_wire.sym} 1360 -550 0 1 {name=p11 sig_type=std_logic lab=out2}
C {sky130_fd_pr/nfet_01v8.sym} 780 -400 0 1 {name=M1
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
C {devices/lab_pin.sym} 700 -400 2 1 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8.sym} 760 -250 0 0 {name=M2
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
C {devices/lab_pin.sym} 840 -250 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 740 -250 0 0 {name=p12 sig_type=std_logic lab=d

}
C {sky130_fd_pr/nfet_01v8.sym} 400 -250 0 0 {name=M12
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
C {devices/lab_pin.sym} 480 -250 2 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 380 -250 0 0 {name=p16 sig_type=std_logic lab=d

}
C {sky130_fd_pr/nfet_01v8.sym} 220 -250 0 0 {name=M13
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
C {devices/lab_pin.sym} 300 -250 2 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 200 -250 0 0 {name=p18 sig_type=std_logic lab=d

}
C {sky130_fd_pr/nfet_01v8.sym} 1260 -250 0 1 {name=M14
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
C {devices/lab_pin.sym} 1180 -250 2 1 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1280 -250 0 1 {name=p26 sig_type=std_logic lab=nd

}
C {sky130_fd_pr/nfet_01v8.sym} 1450 -250 0 1 {name=M15
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
C {devices/lab_pin.sym} 1370 -250 2 1 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1470 -250 0 1 {name=p28 sig_type=std_logic lab=nd

}
C {sky130_fd_pr/nfet_01v8.sym} 1640 -250 0 1 {name=M16
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
C {devices/lab_pin.sym} 1560 -250 2 1 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1660 -250 0 1 {name=p30 sig_type=std_logic lab=nd

}
C {sky130_fd_pr/nfet_01v8.sym} 1060 -570 0 0 {name=M17
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
C {devices/lab_pin.sym} 1140 -570 2 0 {name=p31 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8.sym} 940 -110 0 1 {name=M18
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
C {devices/lab_pin.sym} 920 -80 2 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 960 -110 0 1 {name=p33 sig_type=std_logic lab=clk

}
C {sky130_fd_pr/nfet_01v8.sym} 640 -110 0 1 {name=M19
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
C {devices/lab_pin.sym} 620 -80 2 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -110 0 1 {name=p35 sig_type=std_logic lab=clk

}
C {sky130_fd_pr/nfet_01v8.sym} 1090 -110 0 1 {name=M20
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
C {devices/lab_pin.sym} 1070 -80 2 0 {name=p36 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1110 -110 0 1 {name=p37 sig_type=std_logic lab=clk

}
C {sky130_fd_pr/nfet_01v8.sym} 1240 -110 0 1 {name=M21
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
C {devices/lab_pin.sym} 1220 -80 2 0 {name=p39 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -110 0 1 {name=p40 sig_type=std_logic lab=clk

}
