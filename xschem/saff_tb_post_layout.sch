v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1160 -330 1160 -310 {
lab=#net1}
N 1120 -360 1120 -280 {
lab=q}
N 1160 -280 1160 -250 {
lab=GND}
N 1160 -390 1160 -360 {
lab=vdd}
N 1160 -140 1160 -120 {
lab=#net2}
N 1120 -170 1120 -90 {
lab=nq}
N 1160 -90 1160 -60 {
lab=GND}
N 1160 -200 1160 -170 {
lab=vdd}
N 640 -920 640 -900 {
lab=#net3}
N 600 -950 600 -870 {
lab=d_pulse}
N 640 -870 640 -840 {
lab=GND}
N 640 -980 640 -950 {
lab=vdd}
N 780 -920 780 -900 {
lab=#net4}
N 740 -950 740 -870 {
lab=#net3}
N 780 -870 780 -840 {
lab=GND}
N 780 -980 780 -950 {
lab=vdd}
N 920 -920 920 -900 {
lab=#net5}
N 880 -950 880 -870 {
lab=#net4}
N 920 -870 920 -840 {
lab=GND}
N 920 -980 920 -950 {
lab=vdd}
N 1060 -920 1060 -900 {
lab=#net6}
N 1020 -950 1020 -870 {
lab=#net5}
N 1060 -870 1060 -840 {
lab=GND}
N 1060 -980 1060 -950 {
lab=vdd}
N 640 -910 740 -910 {
lab=#net3}
N 780 -910 880 -910 {
lab=#net4}
N 920 -910 1020 -910 {
lab=#net5}
N 640 -730 640 -710 {
lab=#net7}
N 600 -760 600 -680 {
lab=nd_pulse}
N 640 -680 640 -650 {
lab=GND}
N 640 -790 640 -760 {
lab=vdd}
N 780 -730 780 -710 {
lab=#net8}
N 740 -760 740 -680 {
lab=#net7}
N 780 -680 780 -650 {
lab=GND}
N 780 -790 780 -760 {
lab=vdd}
N 920 -730 920 -710 {
lab=#net9}
N 880 -760 880 -680 {
lab=#net8}
N 920 -680 920 -650 {
lab=GND}
N 920 -790 920 -760 {
lab=vdd}
N 1060 -730 1060 -710 {
lab=#net10}
N 1020 -760 1020 -680 {
lab=#net9}
N 1060 -680 1060 -650 {
lab=GND}
N 1060 -790 1060 -760 {
lab=vdd}
N 640 -720 740 -720 {
lab=#net7}
N 780 -720 880 -720 {
lab=#net8}
N 920 -720 1020 -720 {
lab=#net9}
N 640 -540 640 -520 {
lab=#net11}
N 600 -570 600 -490 {
lab=clk_pulse}
N 640 -490 640 -460 {
lab=GND}
N 640 -600 640 -570 {
lab=vdd}
N 780 -540 780 -520 {
lab=#net12}
N 740 -570 740 -490 {
lab=#net11}
N 780 -490 780 -460 {
lab=GND}
N 780 -600 780 -570 {
lab=vdd}
N 920 -540 920 -520 {
lab=#net13}
N 880 -570 880 -490 {
lab=#net12}
N 920 -490 920 -460 {
lab=GND}
N 920 -600 920 -570 {
lab=vdd}
N 1060 -540 1060 -520 {
lab=clk}
N 1020 -570 1020 -490 {
lab=#net13}
N 1060 -490 1060 -460 {
lab=GND}
N 1060 -600 1060 -570 {
lab=vdd}
N 640 -530 740 -530 {
lab=#net11}
N 780 -530 880 -530 {
lab=#net12}
N 920 -530 1020 -530 {
lab=#net13}
N 1060 -530 1160 -530 {
lab=clk}
N 1560 -910 1620 -910 {
lab=#net14}
N 1560 -890 1620 -890 {
lab=#net15}
N 1920 -910 1980 -910 {
lab=#net16}
N 1920 -890 1980 -890 {
lab=#net17}
N 2280 -910 2340 -910 {
lab=#net18}
N 2280 -890 2340 -890 {
lab=#net19}
N 1060 -910 1260 -910 {
lab=#net6}
N 1260 -890 1260 -720 {
lab=#net10}
N 1060 -720 1260 -720 {
lab=#net10}
C {saff.sym} 640 -280 0 0 {name=x1
schematic=saff_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/saff.sim.spice])"
tclcommand="textwindow [file normalize ../mag/saff.sim.spice]"}
C {devices/code.sym} 280 -770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 80 -770 0 0 {name=STIMULI only_toplevel=false value="

.tran 0.001n 50n
.save v(d) v(nd) v(clk) v(q) v(nq)

.control
run
set wr_vecnames
wrdata saff_tb_post_layout.txt v(d) v(nd) v(clk) v(q) v(nq)
.endc
"}
C {devices/gnd.sym} 100 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -120 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 100 -360 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 100 -390 0 0 {name=V2 value="pulse(0 1.8 19ns 1ns 1ns 2ns 24ns)" savecurrent=false}
C {devices/lab_pin.sym} 100 -420 0 0 {name=p5 sig_type=std_logic lab=d_pulse}
C {devices/gnd.sym} 720 -250 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 720 -270 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 720 -310 0 1 {name=p2 sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 720 -290 0 1 {name=p3 sig_type=std_logic lab=nq}
C {devices/gnd.sym} 100 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 100 -290 0 0 {name=V3 value="pulse(1.8 0 19ns 1ns 1ns 2ns 24ns)" savecurrent=false}
C {devices/lab_pin.sym} 100 -320 0 0 {name=p6 sig_type=std_logic lab=nd_pulse}
C {devices/gnd.sym} 100 -160 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 100 -190 0 0 {name=V4 value="pulse(0 1.8 20ns 1ns 1ns 5ns 12ns)" savecurrent=false}
C {devices/lab_pin.sym} 100 -220 0 0 {name=p7 sig_type=std_logic lab=clk_pulse}
C {devices/lab_pin.sym} 560 -310 0 0 {name=p8 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 560 -290 0 0 {name=p9 sig_type=std_logic lab=nd}
C {devices/lab_pin.sym} 560 -270 0 0 {name=p10 sig_type=std_logic lab=clk}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -360 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -280 0 0 {name=M7
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
C {devices/gnd.sym} 1160 -250 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1160 -390 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1120 -320 0 0 {name=p12 sig_type=std_logic lab=q}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -170 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -90 0 0 {name=M2
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
C {devices/gnd.sym} 1160 -60 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1160 -200 0 1 {name=p13 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1120 -130 0 0 {name=p14 sig_type=std_logic lab=nq}
C {sky130_fd_pr/pfet_01v8.sym} 620 -950 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -870 0 0 {name=M4
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
C {devices/gnd.sym} 640 -840 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 640 -980 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -910 0 0 {name=p16 sig_type=std_logic lab=d_pulse}
C {sky130_fd_pr/pfet_01v8.sym} 760 -950 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 760 -870 0 0 {name=M8
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
C {devices/gnd.sym} 780 -840 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 780 -980 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 900 -950 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 900 -870 0 0 {name=M10
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
C {devices/gnd.sym} 920 -840 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 920 -980 0 1 {name=p19 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -950 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -870 0 0 {name=M12
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
C {devices/gnd.sym} 1060 -840 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1060 -980 0 1 {name=p18 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 -760 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -680 0 0 {name=M14
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
C {devices/gnd.sym} 640 -650 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 640 -790 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -720 0 0 {name=p22 sig_type=std_logic lab=nd_pulse}
C {sky130_fd_pr/pfet_01v8.sym} 760 -760 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 760 -680 0 0 {name=M16
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
C {devices/gnd.sym} 780 -650 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 780 -790 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 900 -760 0 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 900 -680 0 0 {name=M18
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
C {devices/gnd.sym} 920 -650 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 920 -790 0 1 {name=p24 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -760 0 0 {name=M19
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -680 0 0 {name=M20
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
C {devices/gnd.sym} 1060 -650 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 1060 -790 0 1 {name=p25 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 -570 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -490 0 0 {name=M22
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
C {devices/gnd.sym} 640 -460 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 640 -600 0 1 {name=p27 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -530 0 0 {name=p28 sig_type=std_logic lab=clk_pulse}
C {sky130_fd_pr/pfet_01v8.sym} 760 -570 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 760 -490 0 0 {name=M24
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
C {devices/gnd.sym} 780 -460 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 780 -600 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 900 -570 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 900 -490 0 0 {name=M26
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
C {devices/gnd.sym} 920 -460 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 920 -600 0 1 {name=p30 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -570 0 0 {name=M27
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -490 0 0 {name=M28
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
C {devices/gnd.sym} 1060 -460 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 1060 -600 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1160 -530 0 1 {name=p32 sig_type=std_logic lab=clk}
C {phase_eq.sym} 1410 -880 0 0 {name=x2}
C {phase_eq.sym} 1770 -880 0 0 {name=x3}
C {phase_eq.sym} 2130 -880 0 0 {name=x4}
C {delay_unit.sym} 2450 -880 0 0 {name=x5}
C {devices/gnd.sym} 1560 -850 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1920 -850 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 2280 -850 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 2560 -850 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 1560 -870 0 1 {name=p33 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1920 -870 0 1 {name=p34 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2280 -870 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2560 -870 0 1 {name=p36 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2560 -890 0 1 {name=p37 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 2560 -910 0 1 {name=p38 sig_type=std_logic lab=nd}
