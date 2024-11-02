v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1080 -330 1210 -330 {
lab=#net1}
N 1080 -310 1210 -310 {
lab=#net2}
N 1430 -330 1560 -330 {
lab=#net3}
N 1430 -310 1560 -310 {
lab=#net4}
N 660 -550 660 -530 {
lab=#net5}
N 620 -580 620 -500 {
lab=#net6}
N 660 -610 660 -580 {
lab=vdd}
N 660 -500 660 -470 {
lab=GND}
N 800 -550 800 -530 {
lab=buffered}
N 760 -580 760 -500 {
lab=#net5}
N 800 -610 800 -580 {
lab=vdd}
N 800 -500 800 -470 {
lab=GND}
N 940 -550 940 -530 {
lab=delayed}
N 900 -580 900 -500 {
lab=buffered}
N 940 -610 940 -580 {
lab=vdd}
N 940 -500 940 -470 {
lab=GND}
N 660 -540 760 -540 {
lab=#net5}
N 800 -540 900 -540 {
lab=buffered}
N 940 -540 1040 -540 {
lab=delayed}
N 900 -500 900 -420 {
lab=buffered}
N 520 -550 520 -530 {
lab=#net6}
N 480 -580 480 -500 {
lab=#net7}
N 520 -610 520 -580 {
lab=vdd}
N 520 -500 520 -470 {
lab=GND}
N 520 -540 620 -540 {
lab=#net6}
N 380 -550 380 -530 {
lab=#net7}
N 340 -580 340 -500 {
lab=input}
N 380 -610 380 -580 {
lab=vdd}
N 380 -500 380 -470 {
lab=GND}
N 380 -540 480 -540 {
lab=#net7}
N 1020 -210 1130 -210 {
lab=#net1}
N 1130 -330 1130 -210 {
lab=#net1}
N 1150 -310 1150 -190 {
lab=#net2}
N 1020 -190 1150 -190 {
lab=#net2}
N 1370 -210 1490 -210 {
lab=#net3}
N 1490 -330 1490 -210 {
lab=#net3}
N 1510 -310 1510 -190 {
lab=#net4}
N 1370 -190 1510 -190 {
lab=#net4}
N 1780 -310 1890 -310 {
lab=#net8}
N 1780 -330 1890 -330 {
lab=#net9}
N 1830 -330 1830 -210 {
lab=#net9}
N 1720 -210 1830 -210 {
lab=#net9}
N 1850 -310 1850 -190 {
lab=#net8}
N 1720 -190 1850 -190 {
lab=#net8}
C {diff_gen.sym} 570 -300 0 0 {name=x1}
C {devices/gnd.sym} 80 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 80 -120 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 220 -60 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 220 -90 0 0 {name=V2 value="pulse(0 1.8 10ns 1ns 1ns 10ns 22ns)" savecurrent=false}
C {devices/lab_pin.sym} 220 -120 0 0 {name=p5 sig_type=std_logic lab=input}
C {devices/code.sym} 510 -810 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 330 -810 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.001n 50n
.save v(buffered) v(delayed) v(pos) v(neg)

.control
run
set wr_vecnames
wrdata diff_gen_tb.txt v(buffered) v(delayed) v(pos) v(neg)
.endc
"}
C {devices/gnd.sym} 720 -270 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 720 -290 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {delay_unit.sym} 970 -300 0 0 {name=x2}
C {saff.sym} 940 -180 0 1 {name=x3}
C {devices/gnd.sym} 1080 -270 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1080 -290 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 860 -150 0 1 {name=l4 lab=GND}
C {devices/lab_pin.sym} 860 -170 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1020 -170 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 860 -330 0 0 {name=p7 sig_type=std_logic lab=pos}
C {devices/lab_pin.sym} 860 -310 0 0 {name=p8 sig_type=std_logic lab=neg}
C {devices/lab_pin.sym} 720 -330 0 1 {name=p9 sig_type=std_logic lab=pos}
C {devices/lab_pin.sym} 720 -310 0 1 {name=p10 sig_type=std_logic lab=neg}
C {devices/lab_pin.sym} 420 -330 0 0 {name=p11 sig_type=std_logic lab=delayed}
C {devices/lab_pin.sym} 420 -310 0 0 {name=p12 sig_type=std_logic lab=buffered}
C {delay_unit.sym} 1320 -300 0 0 {name=x4}
C {saff.sym} 1290 -180 0 1 {name=x5}
C {devices/gnd.sym} 1430 -270 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1430 -290 0 1 {name=p13 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1210 -150 0 1 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1210 -170 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1370 -170 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {delay_unit.sym} 1670 -300 0 0 {name=x6}
C {saff.sym} 1640 -180 0 1 {name=x7}
C {devices/gnd.sym} 1780 -270 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1780 -290 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1560 -150 0 1 {name=l9 lab=GND}
C {devices/lab_pin.sym} 1560 -170 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1720 -170 0 1 {name=p18 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 640 -580 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -500 0 0 {name=M12
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
C {sky130_fd_pr/pfet_01v8.sym} 780 -580 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -500 0 0 {name=M14
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
C {sky130_fd_pr/pfet_01v8.sym} 920 -580 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 920 -500 0 0 {name=M16
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
C {devices/lab_wire.sym} 1040 -540 0 1 {name=p43 sig_type=std_logic lab=delayed}
C {devices/lab_wire.sym} 900 -420 0 1 {name=p44 sig_type=std_logic lab=buffered}
C {devices/gnd.sym} 940 -470 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 800 -470 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 660 -470 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 660 -610 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 800 -610 0 1 {name=p28 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 940 -610 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 500 -580 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -500 0 0 {name=M18
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
C {devices/gnd.sym} 520 -470 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 520 -610 0 1 {name=p30 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 360 -580 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -500 0 0 {name=M20
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
C {devices/gnd.sym} 380 -470 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 380 -610 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 340 -540 0 0 {name=p19 sig_type=std_logic lab=input}
