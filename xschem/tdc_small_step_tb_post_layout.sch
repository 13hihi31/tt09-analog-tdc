v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 960 -660 960 -640 {
lab=#net1}
N 920 -690 920 -610 {
lab=term_0}
N 960 -720 960 -690 {
lab=vdd}
N 960 -610 960 -580 {
lab=GND}
N 960 -480 960 -460 {
lab=#net2}
N 920 -510 920 -430 {
lab=term_1}
N 960 -540 960 -510 {
lab=vdd}
N 960 -430 960 -400 {
lab=GND}
N 960 -300 960 -280 {
lab=#net3}
N 920 -330 920 -250 {
lab=term_2}
N 960 -360 960 -330 {
lab=vdd}
N 960 -250 960 -220 {
lab=GND}
N 960 -120 960 -100 {
lab=#net4}
N 920 -150 920 -70 {
lab=term_3}
N 960 -180 960 -150 {
lab=vdd}
N 960 -70 960 -40 {
lab=GND}
N 1160 -660 1160 -640 {
lab=#net5}
N 1120 -690 1120 -610 {
lab=term_4}
N 1160 -720 1160 -690 {
lab=vdd}
N 1160 -610 1160 -580 {
lab=GND}
N 200 -740 200 -720 {
lab=#net6}
N 160 -770 160 -690 {
lab=start_pulse}
N 200 -800 200 -770 {
lab=vdd}
N 200 -690 200 -660 {
lab=GND}
N 360 -740 360 -720 {
lab=#net7}
N 320 -770 320 -690 {
lab=#net6}
N 360 -800 360 -770 {
lab=vdd}
N 360 -690 360 -660 {
lab=GND}
N 520 -740 520 -720 {
lab=#net8}
N 480 -770 480 -690 {
lab=#net7}
N 520 -800 520 -770 {
lab=vdd}
N 520 -690 520 -660 {
lab=GND}
N 200 -730 320 -730 {
lab=#net6}
N 360 -730 480 -730 {
lab=#net7}
N 200 -550 200 -530 {
lab=#net9}
N 160 -580 160 -500 {
lab=stop_pulse}
N 200 -610 200 -580 {
lab=vdd}
N 200 -500 200 -470 {
lab=GND}
N 360 -550 360 -530 {
lab=#net10}
N 320 -580 320 -500 {
lab=#net9}
N 360 -610 360 -580 {
lab=vdd}
N 360 -500 360 -470 {
lab=GND}
N 520 -550 520 -530 {
lab=#net11}
N 480 -580 480 -500 {
lab=#net10}
N 520 -610 520 -580 {
lab=vdd}
N 520 -500 520 -470 {
lab=GND}
N 200 -540 320 -540 {
lab=#net9}
N 360 -540 480 -540 {
lab=#net10}
N 680 -740 680 -720 {
lab=start}
N 640 -770 640 -690 {
lab=#net8}
N 680 -800 680 -770 {
lab=vdd}
N 680 -690 680 -660 {
lab=GND}
N 520 -730 640 -730 {
lab=#net8}
N 680 -550 680 -530 {
lab=stop}
N 640 -580 640 -500 {
lab=#net11}
N 680 -610 680 -580 {
lab=vdd}
N 680 -500 680 -470 {
lab=GND}
N 520 -540 640 -540 {
lab=#net11}
N 680 -730 760 -730 {
lab=start}
N 680 -540 760 -540 {
lab=stop}
N 1160 -480 1160 -460 {
lab=#net12}
N 1120 -510 1120 -430 {
lab=term_5}
N 1160 -540 1160 -510 {
lab=vdd}
N 1160 -430 1160 -400 {
lab=GND}
N 1160 -300 1160 -280 {
lab=#net13}
N 1120 -330 1120 -250 {
lab=term_6}
N 1160 -360 1160 -330 {
lab=vdd}
N 1160 -250 1160 -220 {
lab=GND}
N 1160 -120 1160 -100 {
lab=#net14}
N 1120 -150 1120 -70 {
lab=term_7}
N 1160 -180 1160 -150 {
lab=vdd}
N 1160 -70 1160 -40 {
lab=GND}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 560 -40 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 560 -70 0 0 {name=V2 value="pulse(0 1.8 0.9ns 0.5ns 0.5ns 0.501ns 2.002ns)" savecurrent=false}
C {devices/lab_pin.sym} 560 -100 0 0 {name=p5 sig_type=std_logic lab=stop_pulse}
C {devices/gnd.sym} 460 -180 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 460 -200 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 460 -360 0 1 {name=p2 sig_type=std_logic lab=term_0}
C {devices/lab_pin.sym} 460 -340 0 1 {name=p3 sig_type=std_logic lab=term_1}
C {devices/lab_pin.sym} 460 -320 0 1 {name=p6 sig_type=std_logic lab=term_2}
C {devices/lab_pin.sym} 460 -300 0 1 {name=p7 sig_type=std_logic lab=term_3}
C {devices/lab_pin.sym} 460 -280 0 1 {name=p8 sig_type=std_logic lab=term_4}
C {devices/lab_pin.sym} 160 -360 0 0 {name=p9 sig_type=std_logic lab=start}
C {devices/lab_pin.sym} 160 -340 0 0 {name=p10 sig_type=std_logic lab=stop}
C {sky130_fd_pr/pfet_01v8.sym} 940 -690 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -610 0 0 {name=M2
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
C {devices/lab_pin.sym} 960 -720 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -650 0 0 {name=p47 sig_type=std_logic lab=term_0}
C {devices/gnd.sym} 960 -580 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 940 -510 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -430 0 0 {name=M4
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
C {devices/lab_pin.sym} 960 -540 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -470 0 0 {name=p12 sig_type=std_logic lab=term_1}
C {devices/gnd.sym} 960 -400 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 940 -330 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -250 0 0 {name=M6
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
C {devices/lab_pin.sym} 960 -360 0 1 {name=p13 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -290 0 0 {name=p14 sig_type=std_logic lab=term_2}
C {devices/gnd.sym} 960 -220 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 940 -150 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -70 0 0 {name=M8
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
C {devices/lab_pin.sym} 960 -180 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -110 0 0 {name=p16 sig_type=std_logic lab=term_3}
C {devices/gnd.sym} 960 -40 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -690 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -610 0 0 {name=M10
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
C {devices/lab_pin.sym} 1160 -720 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1120 -650 0 0 {name=p18 sig_type=std_logic lab=term_4}
C {devices/gnd.sym} 1160 -580 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 240 -40 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 240 -70 0 0 {name=V3 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 240 -100 0 0 {name=p19 sig_type=std_logic lab=start_pulse}
C {sky130_fd_pr/pfet_01v8.sym} 180 -770 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 180 -690 0 0 {name=M12
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
C {devices/lab_pin.sym} 200 -800 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 160 -730 0 0 {name=p21 sig_type=std_logic lab=start_pulse}
C {devices/gnd.sym} 200 -660 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 340 -770 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -690 0 0 {name=M14
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
C {devices/lab_pin.sym} 360 -800 0 1 {name=p22 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 360 -660 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 500 -770 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -690 0 0 {name=M16
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
C {devices/lab_pin.sym} 520 -800 0 1 {name=p24 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 520 -660 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 180 -580 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 180 -500 0 0 {name=M18
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
C {devices/lab_pin.sym} 200 -610 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 160 -540 0 0 {name=p25 sig_type=std_logic lab=stop_pulse}
C {devices/gnd.sym} 200 -470 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 340 -580 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -500 0 0 {name=M20
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
C {devices/lab_pin.sym} 360 -610 0 1 {name=p26 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 360 -470 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 500 -580 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -500 0 0 {name=M22
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
C {devices/lab_pin.sym} 520 -610 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 520 -470 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 760 -730 0 1 {name=p28 sig_type=std_logic lab=start}
C {devices/lab_wire.sym} 760 -540 0 1 {name=p29 sig_type=std_logic lab=stop}
C {devices/code.sym} 350 -990 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 170 -990 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.0005n 400n
.save v(start) v(stop) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7)

.control
run
set wr_vecnames
wrdata tdc_small_step_tt_tb_post_layout.txt v(start) v(stop) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7)
.endc
"}
C {sky130_fd_pr/pfet_01v8.sym} 660 -770 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 660 -690 0 0 {name=M24
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
C {devices/lab_pin.sym} 680 -800 0 1 {name=p30 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 680 -660 0 0 {name=l16 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 660 -580 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 660 -500 0 0 {name=M26
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
C {devices/lab_pin.sym} 680 -610 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 680 -470 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 460 -260 0 1 {name=p32 sig_type=std_logic lab=term_5}
C {devices/lab_pin.sym} 460 -240 0 1 {name=p33 sig_type=std_logic lab=term_6}
C {devices/lab_pin.sym} 460 -220 0 1 {name=p34 sig_type=std_logic lab=term_7}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -510 0 0 {name=M27
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -430 0 0 {name=M28
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
C {devices/lab_pin.sym} 1160 -540 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1120 -470 0 0 {name=p36 sig_type=std_logic lab=term_5}
C {devices/gnd.sym} 1160 -400 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -330 0 0 {name=M29
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -250 0 0 {name=M30
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
C {devices/lab_pin.sym} 1160 -360 0 1 {name=p37 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1120 -290 0 0 {name=p39 sig_type=std_logic lab=term_6}
C {devices/gnd.sym} 1160 -220 0 0 {name=l19 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -150 0 0 {name=M31
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -70 0 0 {name=M32
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
C {devices/lab_pin.sym} 1160 -180 0 1 {name=p40 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1120 -110 0 0 {name=p41 sig_type=std_logic lab=term_7}
C {devices/gnd.sym} 1160 -40 0 0 {name=l20 lab=GND}
C {tdc_post_layout.sym} 310 -270 0 0 {name=x1}
