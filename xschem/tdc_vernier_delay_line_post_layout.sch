v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -740 380 -720 {
lab=#net1}
N 340 -770 340 -690 {
lab=start}
N 380 -800 380 -770 {
lab=VDD}
N 380 -690 380 -660 {
lab=VSS}
N 520 -740 520 -720 {
lab=start_buff}
N 480 -770 480 -690 {
lab=#net1}
N 520 -800 520 -770 {
lab=VDD}
N 520 -690 520 -660 {
lab=VSS}
N 660 -740 660 -720 {
lab=start_delay}
N 620 -770 620 -690 {
lab=start_buff}
N 660 -800 660 -770 {
lab=VDD}
N 660 -690 660 -660 {
lab=VSS}
N 380 -730 480 -730 {
lab=#net1}
N 520 -730 620 -730 {
lab=start_buff}
N 660 -730 760 -730 {
lab=start_delay}
N 620 -690 620 -610 {
lab=start_buff}
N 940 -460 940 -440 {
lab=#net2}
N 900 -490 900 -410 {
lab=#net3}
N 940 -520 940 -490 {
lab=VDD}
N 940 -410 940 -380 {
lab=VSS}
N 1080 -460 1080 -440 {
lab=#net4}
N 1040 -490 1040 -410 {
lab=#net2}
N 1080 -520 1080 -490 {
lab=VDD}
N 1080 -410 1080 -380 {
lab=VSS}
N 940 -450 1040 -450 {
lab=#net2}
N 1220 -460 1220 -440 {
lab=#net5}
N 1180 -490 1180 -410 {
lab=#net4}
N 1220 -520 1220 -490 {
lab=VDD}
N 1220 -410 1220 -380 {
lab=VSS}
N 1080 -450 1180 -450 {
lab=#net4}
N 1360 -460 1360 -440 {
lab=#net6}
N 1320 -490 1320 -410 {
lab=#net5}
N 1360 -520 1360 -490 {
lab=VDD}
N 1360 -410 1360 -380 {
lab=VSS}
N 1220 -450 1320 -450 {
lab=#net5}
N 1500 -460 1500 -440 {
lab=#net7}
N 1460 -490 1460 -410 {
lab=#net6}
N 1500 -520 1500 -490 {
lab=VDD}
N 1500 -410 1500 -380 {
lab=VSS}
N 1360 -450 1460 -450 {
lab=#net6}
N 1640 -460 1640 -440 {
lab=#net8}
N 1600 -490 1600 -410 {
lab=#net7}
N 1640 -520 1640 -490 {
lab=VDD}
N 1640 -410 1640 -380 {
lab=VSS}
N 1500 -450 1600 -450 {
lab=#net7}
N 1780 -460 1780 -440 {
lab=#net9}
N 1740 -490 1740 -410 {
lab=#net8}
N 1780 -520 1780 -490 {
lab=VDD}
N 1780 -410 1780 -380 {
lab=VSS}
N 1920 -460 1920 -440 {
lab=stop_strong}
N 1880 -490 1880 -410 {
lab=#net9}
N 1920 -520 1920 -490 {
lab=VDD}
N 1920 -410 1920 -380 {
lab=VSS}
N 1780 -450 1880 -450 {
lab=#net9}
N 1640 -450 1740 -450 {
lab=#net8}
N 1920 -450 2020 -450 {
lab=stop_strong}
N 660 -460 660 -440 {
lab=#net10}
N 620 -490 620 -410 {
lab=#net11}
N 660 -520 660 -490 {
lab=VDD}
N 660 -410 660 -380 {
lab=VSS}
N 800 -460 800 -440 {
lab=#net3}
N 760 -490 760 -410 {
lab=#net10}
N 800 -520 800 -490 {
lab=VDD}
N 800 -410 800 -380 {
lab=VSS}
N 660 -450 760 -450 {
lab=#net10}
N 800 -450 900 -450 {
lab=#net3}
N 380 -460 380 -440 {
lab=#net12}
N 340 -490 340 -410 {
lab=stop}
N 380 -520 380 -490 {
lab=VDD}
N 380 -410 380 -380 {
lab=VSS}
N 520 -460 520 -440 {
lab=#net11}
N 480 -490 480 -410 {
lab=#net12}
N 520 -520 520 -490 {
lab=VDD}
N 520 -410 520 -380 {
lab=VSS}
N 380 -450 480 -450 {
lab=#net12}
N 520 -450 620 -450 {
lab=#net11}
C {devices/iopin.sym} 50 -80 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 50 -40 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 70 -480 0 0 {name=p3 lab=start}
C {devices/ipin.sym} 70 -440 0 0 {name=p4 lab=stop}
C {diff_gen.sym} 1190 -700 0 0 {name=x3}
C {devices/lab_pin.sym} 1340 -670 2 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1340 -690 2 0 {name=p5 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -770 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -690 0 0 {name=M2
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
C {devices/lab_pin.sym} 380 -660 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -800 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 500 -770 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 500 -690 0 0 {name=M4
L=0.15
W=4
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
C {devices/lab_pin.sym} 520 -660 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -800 0 1 {name=p40 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 640 -770 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -690 0 0 {name=M6
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
C {devices/lab_pin.sym} 660 -660 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -800 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 760 -730 0 1 {name=p43 sig_type=std_logic lab=start_delay}
C {devices/lab_wire.sym} 620 -610 0 1 {name=p44 sig_type=std_logic lab=start_buff}
C {devices/lab_pin.sym} 1040 -730 0 0 {name=p45 sig_type=std_logic lab=start_delay}
C {devices/lab_pin.sym} 1040 -710 0 0 {name=p46 sig_type=std_logic lab=start_buff}
C {devices/lab_wire.sym} 340 -730 0 0 {name=p47 sig_type=std_logic lab=start}
C {sky130_fd_pr/pfet_01v8.sym} 920 -490 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 920 -410 0 0 {name=M8
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
C {devices/lab_pin.sym} 940 -380 0 1 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -520 0 1 {name=p51 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -450 0 0 {name=p52 sig_type=std_logic lab=stop}
C {sky130_fd_pr/pfet_01v8.sym} 1060 -490 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1060 -410 0 0 {name=M10
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
C {devices/lab_pin.sym} 1080 -380 0 1 {name=p53 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1080 -520 0 1 {name=p54 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1200 -490 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1200 -410 0 0 {name=M12
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
C {devices/lab_pin.sym} 1220 -380 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1220 -520 0 1 {name=p56 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1340 -490 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 1340 -410 0 0 {name=M14
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
C {devices/lab_pin.sym} 1360 -380 0 1 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1360 -520 0 1 {name=p58 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1480 -490 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 1480 -410 0 0 {name=M16
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
C {devices/lab_pin.sym} 1500 -380 0 1 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1500 -520 0 1 {name=p60 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1620 -490 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 1620 -410 0 0 {name=M18
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
C {devices/lab_pin.sym} 1640 -380 0 1 {name=p61 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -520 0 1 {name=p62 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1760 -490 0 0 {name=M19
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1760 -410 0 0 {name=M20
L=0.15
W=4
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
C {devices/lab_pin.sym} 1780 -380 0 1 {name=p63 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1780 -520 0 1 {name=p64 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1900 -490 0 0 {name=M21
L=0.15
W=48
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
C {sky130_fd_pr/nfet_01v8.sym} 1900 -410 0 0 {name=M22
L=0.15
W=16
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
C {devices/lab_pin.sym} 1920 -380 0 1 {name=p65 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1920 -520 0 1 {name=p66 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2020 -450 0 1 {name=p67 sig_type=std_logic lab=stop_strong}
C {devices/opin.sym} 50 -400 0 0 {name=p68 lab=term_0}
C {devices/opin.sym} 50 -360 0 0 {name=p69 lab=term_1}
C {devices/opin.sym} 50 -320 0 0 {name=p70 lab=term_2}
C {devices/opin.sym} 50 -280 0 0 {name=p71 lab=term_3}
C {devices/opin.sym} 50 -240 0 0 {name=p72 lab=term_4}
C {devices/lab_pin.sym} 1340 -710 0 1 {name=p27 sig_type=std_logic lab=start_neg}
C {devices/lab_pin.sym} 1340 -730 0 1 {name=p28 sig_type=std_logic lab=start_pos}
C {sky130_fd_pr/pfet_01v8.sym} 640 -490 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -410 0 0 {name=M24
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
C {devices/lab_pin.sym} 660 -380 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -520 0 1 {name=p48 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 780 -490 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -410 0 0 {name=M26
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
C {devices/lab_pin.sym} 800 -380 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -520 0 1 {name=p90 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 360 -490 0 0 {name=M27
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -410 0 0 {name=M28
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
C {devices/lab_pin.sym} 380 -380 0 1 {name=p91 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -520 0 1 {name=p92 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 500 -490 0 0 {name=M29
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -410 0 0 {name=M30
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
C {devices/lab_pin.sym} 520 -380 0 1 {name=p93 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -520 0 1 {name=p94 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 50 -200 0 0 {name=p119 lab=term_5}
C {devices/opin.sym} 50 -160 0 0 {name=p120 lab=term_6}
C {devices/opin.sym} 50 -120 0 0 {name=p121 lab=term_7}
C {vernier_delay_line.sym} 510 -160 0 0 {name=x19
schematic=vernier_delay_line_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vernier_delay_line.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vernier_delay_line.sim.spice]"}
C {devices/lab_pin.sym} 360 -250 0 0 {name=p122 sig_type=std_logic lab=start_pos}
C {devices/lab_pin.sym} 360 -230 0 0 {name=p123 sig_type=std_logic lab=start_neg}
C {devices/lab_pin.sym} 360 -210 2 1 {name=p124 sig_type=std_logic lab=stop_strong
}
C {devices/lab_pin.sym} 660 -90 2 0 {name=p125 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 660 -70 2 0 {name=p126 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -250 2 0 {name=p127 sig_type=std_logic lab=term_0
}
C {devices/lab_pin.sym} 660 -230 2 0 {name=p128 sig_type=std_logic lab=term_1
}
C {devices/lab_pin.sym} 660 -210 2 0 {name=p129 sig_type=std_logic lab=term_2
}
C {devices/lab_pin.sym} 660 -190 2 0 {name=p130 sig_type=std_logic lab=term_3
}
C {devices/lab_pin.sym} 660 -170 2 0 {name=p131 sig_type=std_logic lab=term_4
}
C {devices/lab_pin.sym} 660 -150 2 0 {name=p132 sig_type=std_logic lab=term_5
}
C {devices/lab_pin.sym} 660 -130 2 0 {name=p133 sig_type=std_logic lab=term_6
}
C {devices/lab_pin.sym} 660 -110 2 0 {name=p134 sig_type=std_logic lab=term_7
}
