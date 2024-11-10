v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -740 200 -720 {
lab=#net1}
N 160 -770 160 -690 {
lab=start_pulse}
N 200 -800 200 -770 {
lab=vdd}
N 200 -690 200 -660 {
lab=GND}
N 360 -740 360 -720 {
lab=#net2}
N 320 -770 320 -690 {
lab=#net1}
N 360 -800 360 -770 {
lab=vdd}
N 360 -690 360 -660 {
lab=GND}
N 520 -740 520 -720 {
lab=#net3}
N 480 -770 480 -690 {
lab=#net2}
N 520 -800 520 -770 {
lab=vdd}
N 520 -690 520 -660 {
lab=GND}
N 200 -730 320 -730 {
lab=#net1}
N 360 -730 480 -730 {
lab=#net2}
N 200 -550 200 -530 {
lab=#net4}
N 160 -580 160 -500 {
lab=stop_pulse}
N 200 -610 200 -580 {
lab=vdd}
N 200 -500 200 -470 {
lab=GND}
N 360 -550 360 -530 {
lab=#net5}
N 320 -580 320 -500 {
lab=#net4}
N 360 -610 360 -580 {
lab=vdd}
N 360 -500 360 -470 {
lab=GND}
N 520 -550 520 -530 {
lab=#net6}
N 480 -580 480 -500 {
lab=#net5}
N 520 -610 520 -580 {
lab=vdd}
N 520 -500 520 -470 {
lab=GND}
N 200 -540 320 -540 {
lab=#net4}
N 360 -540 480 -540 {
lab=#net5}
N 680 -740 680 -720 {
lab=start}
N 640 -770 640 -690 {
lab=#net3}
N 680 -800 680 -770 {
lab=vdd}
N 680 -690 680 -660 {
lab=GND}
N 520 -730 640 -730 {
lab=#net3}
N 680 -550 680 -530 {
lab=stop}
N 640 -580 640 -500 {
lab=#net6}
N 680 -610 680 -580 {
lab=vdd}
N 680 -500 680 -470 {
lab=GND}
N 520 -540 640 -540 {
lab=#net6}
N 680 -730 760 -730 {
lab=start}
N 680 -540 760 -540 {
lab=stop}
N 360 -280 360 -260 {
lab=#net7}
N 320 -310 320 -230 {
lab=start}
N 360 -340 360 -310 {
lab=vdd}
N 360 -230 360 -200 {
lab=GND}
N 560 -280 560 -260 {
lab=#net8}
N 520 -310 520 -230 {
lab=stop}
N 560 -340 560 -310 {
lab=vdd}
N 560 -230 560 -200 {
lab=GND}
C {devices/gnd.sym} 580 -40 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 580 -70 0 0 {name=V2 value="pulse(0 1.8 1.0ns 0.5ns 0.5ns 0.502ns 2.004ns)" savecurrent=false}
C {devices/lab_pin.sym} 580 -100 0 0 {name=p5 sig_type=std_logic lab=stop_pulse}
C {devices/gnd.sym} 260 -40 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 260 -70 0 0 {name=V3 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 260 -100 0 0 {name=p19 sig_type=std_logic lab=start_pulse}
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
C {devices/code.sym} 350 -990 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 170 -990 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.001n 320n
.save v(start) v(stop)

.control
run
set wr_vecnames
wrdata tdc_test_signals_tb.txt v(start) v(stop)
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -310 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -230 0 0 {name=M2
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
C {devices/lab_pin.sym} 360 -340 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 320 -270 0 0 {name=p47 sig_type=std_logic lab=start}
C {devices/gnd.sym} 360 -200 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 540 -310 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -230 0 0 {name=M10
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
C {devices/lab_pin.sym} 560 -340 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 520 -270 0 0 {name=p18 sig_type=std_logic lab=stop}
C {devices/gnd.sym} 560 -200 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 80 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
