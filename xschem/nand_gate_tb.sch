v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -740 240 -720 {
lab=#net1}
N 200 -770 200 -690 {
lab=start_pulse}
N 240 -800 240 -770 {
lab=vdd}
N 240 -690 240 -660 {
lab=GND}
N 400 -740 400 -720 {
lab=#net2}
N 360 -770 360 -690 {
lab=#net1}
N 400 -800 400 -770 {
lab=vdd}
N 400 -690 400 -660 {
lab=GND}
N 560 -740 560 -720 {
lab=#net3}
N 520 -770 520 -690 {
lab=#net2}
N 560 -800 560 -770 {
lab=vdd}
N 560 -690 560 -660 {
lab=GND}
N 240 -730 360 -730 {
lab=#net1}
N 400 -730 520 -730 {
lab=#net2}
N 240 -550 240 -530 {
lab=#net4}
N 200 -580 200 -500 {
lab=stop_pulse}
N 240 -610 240 -580 {
lab=vdd}
N 240 -500 240 -470 {
lab=GND}
N 400 -550 400 -530 {
lab=#net5}
N 360 -580 360 -500 {
lab=#net4}
N 400 -610 400 -580 {
lab=vdd}
N 400 -500 400 -470 {
lab=GND}
N 560 -550 560 -530 {
lab=#net6}
N 520 -580 520 -500 {
lab=#net5}
N 560 -610 560 -580 {
lab=vdd}
N 560 -500 560 -470 {
lab=GND}
N 240 -540 360 -540 {
lab=#net4}
N 400 -540 520 -540 {
lab=#net5}
N 720 -740 720 -720 {
lab=start}
N 680 -770 680 -690 {
lab=#net3}
N 720 -800 720 -770 {
lab=vdd}
N 720 -690 720 -660 {
lab=GND}
N 560 -730 680 -730 {
lab=#net3}
N 720 -550 720 -530 {
lab=stop}
N 680 -580 680 -500 {
lab=#net6}
N 720 -610 720 -580 {
lab=vdd}
N 720 -500 720 -470 {
lab=GND}
N 560 -540 680 -540 {
lab=#net6}
N 720 -730 800 -730 {
lab=start}
N 720 -540 800 -540 {
lab=stop}
N 820 -270 820 -250 {
lab=#net7}
N 780 -300 780 -220 {
lab=out}
N 820 -330 820 -300 {
lab=vdd}
N 820 -220 820 -190 {
lab=GND}
C {nand_gate.sym} 450 -270 0 0 {name=x1
schematic=nand_gate_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/nand_gate.sim.spice])"
tclcommand="textwindow [file normalize ../mag/nand_gate.sim.spice]"}
C {devices/gnd.sym} 620 -40 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 620 -70 0 0 {name=V2 value="pulse(0 1.8 1ns 0.5ns 0.5ns 1.5ns 4ns)" savecurrent=false}
C {devices/lab_pin.sym} 620 -100 0 0 {name=p5 sig_type=std_logic lab=stop_pulse}
C {devices/gnd.sym} 300 -40 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 300 -70 0 0 {name=V3 value="pulse(0 1.8 1ns 0.5ns 0.5ns 0.5ns 2ns)" savecurrent=false}
C {devices/lab_pin.sym} 300 -100 0 0 {name=p19 sig_type=std_logic lab=start_pulse}
C {sky130_fd_pr/pfet_01v8.sym} 220 -770 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -690 0 0 {name=M12
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
C {devices/lab_pin.sym} 240 -800 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 200 -730 0 0 {name=p21 sig_type=std_logic lab=start_pulse}
C {devices/gnd.sym} 240 -660 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 380 -770 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 380 -690 0 0 {name=M14
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
C {devices/lab_pin.sym} 400 -800 0 1 {name=p22 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 400 -660 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 540 -770 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -690 0 0 {name=M16
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
C {devices/lab_pin.sym} 560 -800 0 1 {name=p24 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 560 -660 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 220 -580 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -500 0 0 {name=M18
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
C {devices/lab_pin.sym} 240 -610 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 200 -540 0 0 {name=p25 sig_type=std_logic lab=stop_pulse}
C {devices/gnd.sym} 240 -470 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 380 -580 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 380 -500 0 0 {name=M20
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
C {devices/lab_pin.sym} 400 -610 0 1 {name=p26 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 400 -470 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 540 -580 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -500 0 0 {name=M22
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
C {devices/lab_pin.sym} 560 -610 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 560 -470 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 800 -730 0 1 {name=p28 sig_type=std_logic lab=start}
C {devices/lab_wire.sym} 800 -540 0 1 {name=p29 sig_type=std_logic lab=stop}
C {devices/code.sym} 390 -990 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 210 -990 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.001n 5n
.save v(start) v(stop) v(out)

.control
run
set wr_vecnames
wrdata nand_gate_tb.txt v(start) v(stop) v(out)
.endc
"}
C {sky130_fd_pr/pfet_01v8.sym} 700 -770 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -690 0 0 {name=M24
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
C {devices/lab_pin.sym} 720 -800 0 1 {name=p30 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 720 -660 0 0 {name=l16 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 700 -580 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -500 0 0 {name=M26
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
C {devices/lab_pin.sym} 720 -610 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 720 -470 0 0 {name=l17 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 800 -300 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 800 -220 0 0 {name=M2
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
C {devices/lab_pin.sym} 820 -330 0 1 {name=p38 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 780 -260 0 0 {name=p47 sig_type=std_logic lab=out}
C {devices/gnd.sym} 820 -190 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 120 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 120 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -270 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 600 -250 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 600 -290 0 1 {name=p2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 300 -290 0 0 {name=p3 sig_type=std_logic lab=start}
C {devices/lab_pin.sym} 300 -270 0 0 {name=p6 sig_type=std_logic lab=stop}
