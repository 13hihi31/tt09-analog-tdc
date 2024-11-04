v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -150 600 -130 {
lab=#net1}
N 560 -180 560 -100 {
lab=#net2}
N 600 -210 600 -180 {
lab=VDD}
N 600 -100 600 -70 {
lab=VSS}
N 740 -150 740 -130 {
lab=#net3}
N 700 -180 700 -100 {
lab=#net1}
N 740 -210 740 -180 {
lab=VDD}
N 740 -100 740 -70 {
lab=VSS}
N 600 -140 700 -140 {
lab=#net1}
N 880 -150 880 -130 {
lab=#net4}
N 840 -180 840 -100 {
lab=#net3}
N 880 -210 880 -180 {
lab=VDD}
N 880 -100 880 -70 {
lab=VSS}
N 740 -140 840 -140 {
lab=#net3}
N 1020 -150 1020 -130 {
lab=#net5}
N 980 -180 980 -100 {
lab=#net4}
N 1020 -210 1020 -180 {
lab=VDD}
N 1020 -100 1020 -70 {
lab=VSS}
N 880 -140 980 -140 {
lab=#net4}
N 1160 -150 1160 -130 {
lab=#net6}
N 1120 -180 1120 -100 {
lab=#net5}
N 1160 -210 1160 -180 {
lab=VDD}
N 1160 -100 1160 -70 {
lab=VSS}
N 1020 -140 1120 -140 {
lab=#net5}
N 1300 -150 1300 -130 {
lab=#net7}
N 1260 -180 1260 -100 {
lab=#net6}
N 1300 -210 1300 -180 {
lab=VDD}
N 1300 -100 1300 -70 {
lab=VSS}
N 1160 -140 1260 -140 {
lab=#net6}
N 1440 -150 1440 -130 {
lab=#net8}
N 1400 -180 1400 -100 {
lab=#net7}
N 1440 -210 1440 -180 {
lab=VDD}
N 1440 -100 1440 -70 {
lab=VSS}
N 1580 -150 1580 -130 {
lab=stop_strong}
N 1540 -180 1540 -100 {
lab=#net8}
N 1580 -210 1580 -180 {
lab=VDD}
N 1580 -100 1580 -70 {
lab=VSS}
N 1440 -140 1540 -140 {
lab=#net8}
N 1300 -140 1400 -140 {
lab=#net7}
N 1580 -140 1680 -140 {
lab=stop_strong}
N 320 -150 320 -130 {
lab=#net9}
N 280 -180 280 -100 {
lab=stop}
N 320 -210 320 -180 {
lab=VDD}
N 320 -100 320 -70 {
lab=VSS}
N 460 -150 460 -130 {
lab=#net2}
N 420 -180 420 -100 {
lab=#net9}
N 460 -210 460 -180 {
lab=VDD}
N 460 -100 460 -70 {
lab=VSS}
N 320 -140 420 -140 {
lab=#net9}
N 460 -140 560 -140 {
lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} 580 -180 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 580 -100 0 0 {name=M8
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
C {devices/lab_pin.sym} 600 -70 0 1 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -210 0 1 {name=p51 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 -140 0 0 {name=p52 sig_type=std_logic lab=stop}
C {sky130_fd_pr/pfet_01v8.sym} 720 -180 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -100 0 0 {name=M10
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
C {devices/lab_pin.sym} 740 -70 0 1 {name=p53 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -210 0 1 {name=p54 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 860 -180 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -100 0 0 {name=M12
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
C {devices/lab_pin.sym} 880 -70 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -210 0 1 {name=p56 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1000 -180 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 1000 -100 0 0 {name=M14
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
C {devices/lab_pin.sym} 1020 -70 0 1 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1020 -210 0 1 {name=p58 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -180 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -100 0 0 {name=M16
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
C {devices/lab_pin.sym} 1160 -70 0 1 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -210 0 1 {name=p60 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1280 -180 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 1280 -100 0 0 {name=M18
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
C {devices/lab_pin.sym} 1300 -70 0 1 {name=p61 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1300 -210 0 1 {name=p62 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1420 -180 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 1420 -100 0 0 {name=M20
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
C {devices/lab_pin.sym} 1440 -70 0 1 {name=p63 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1440 -210 0 1 {name=p64 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1560 -180 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 1560 -100 0 0 {name=M22
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
C {devices/lab_pin.sym} 1580 -70 0 1 {name=p65 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1580 -210 0 1 {name=p66 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1680 -140 0 1 {name=p67 sig_type=std_logic lab=stop_strong}
C {sky130_fd_pr/pfet_01v8.sym} 300 -180 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -100 0 0 {name=M24
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
C {devices/lab_pin.sym} 320 -70 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -210 0 1 {name=p48 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 440 -180 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -100 0 0 {name=M26
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
C {devices/lab_pin.sym} 460 -70 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -210 0 1 {name=p90 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 60 -100 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 60 -60 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 80 -180 0 0 {name=p4 lab=stop}
C {devices/opin.sym} 60 -140 0 0 {name=p68 lab=stop_strong}
