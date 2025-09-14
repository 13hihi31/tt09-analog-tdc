v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1460 -860 1460 -840 {
lab=#net1}
N 1420 -890 1420 -810 {
lab=term_0}
N 1460 -920 1460 -890 {
lab=vdd}
N 1460 -810 1460 -780 {
lab=GND}
N 1460 -680 1460 -660 {
lab=#net2}
N 1420 -710 1420 -630 {
lab=term_1}
N 1460 -740 1460 -710 {
lab=vdd}
N 1460 -630 1460 -600 {
lab=GND}
N 1460 -500 1460 -480 {
lab=#net3}
N 1420 -530 1420 -450 {
lab=term_2}
N 1460 -560 1460 -530 {
lab=vdd}
N 1460 -450 1460 -420 {
lab=GND}
N 1460 -320 1460 -300 {
lab=#net4}
N 1420 -350 1420 -270 {
lab=term_3}
N 1460 -380 1460 -350 {
lab=vdd}
N 1460 -270 1460 -240 {
lab=GND}
N 1660 -860 1660 -840 {
lab=#net5}
N 1620 -890 1620 -810 {
lab=term_4}
N 1660 -920 1660 -890 {
lab=vdd}
N 1660 -810 1660 -780 {
lab=GND}
N 1660 -680 1660 -660 {
lab=#net6}
N 1620 -710 1620 -630 {
lab=term_5}
N 1660 -740 1660 -710 {
lab=vdd}
N 1660 -630 1660 -600 {
lab=GND}
N 1660 -500 1660 -480 {
lab=#net7}
N 1620 -530 1620 -450 {
lab=term_6}
N 1660 -560 1660 -530 {
lab=vdd}
N 1660 -450 1660 -420 {
lab=GND}
N 1660 -320 1660 -300 {
lab=#net8}
N 1620 -350 1620 -270 {
lab=term_7}
N 1660 -380 1660 -350 {
lab=vdd}
N 1660 -270 1660 -240 {
lab=GND}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -110 0 0 {name=V21 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1460 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 1460 -110 0 0 {name=V20 value="pulse(0 1.8 0ns 0.5ns 0.5ns 3ns 7ns)" savecurrent=false}
C {devices/lab_pin.sym} 1460 -140 0 0 {name=p19 sig_type=std_logic lab=input}
C {devices/gnd.sym} 200 -80 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 200 -110 0 0 {name=V0 value=0 savecurrent=false}
C {devices/lab_pin.sym} 200 -140 0 0 {name=p3 sig_type=std_logic lab=en_0}
C {devices/gnd.sym} 300 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 300 -110 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p5 sig_type=std_logic lab=en_1}
C {devices/gnd.sym} 400 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 400 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 400 -140 0 0 {name=p6 sig_type=std_logic lab=en_2}
C {devices/gnd.sym} 500 -80 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 500 -110 0 0 {name=V3 value=0 savecurrent=false}
C {devices/lab_pin.sym} 500 -140 0 0 {name=p7 sig_type=std_logic lab=en_3}
C {devices/code.sym} 260 -710 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 90 -710 0 0 {name=STIMULI only_toplevel=false value="

.control
* Set all sources to 0 initially
alter V0 0
alter V1 0
alter V2 1.8
alter V3 0
alter V4 0

* Run transient analysis
tran 0.0001n 2.5n

* Save results for this step
save v(in) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7) 
set wr_vecnames
wrdata test_tt_um_13hihi31_tdc v(in) v(term_0) v(term_1) v(term_2) v(term_3) v(term_4) v(term_5) v(term_6) v(term_7)

.endc
"}
C {pad_model.sym} 250 -390 0 0 {name=x2}
C {devices/gnd.sym} 100 -370 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p2 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 400 -410 0 1 {name=p1 sig_type=std_logic lab=in}
C {devices/gnd.sym} 1340 -80 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1340 -110 0 0 {name=V22 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 1340 -140 0 0 {name=p10 sig_type=std_logic lab=en_start}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -890 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -810 0 0 {name=M4
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
C {devices/lab_pin.sym} 1460 -920 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1420 -850 0 0 {name=p30 sig_type=std_logic lab=term_0}
C {devices/gnd.sym} 1460 -780 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -710 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -630 0 0 {name=M6
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
C {devices/lab_pin.sym} 1460 -740 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1420 -670 0 0 {name=p32 sig_type=std_logic lab=term_1}
C {devices/gnd.sym} 1460 -600 0 0 {name=l16 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -530 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -450 0 0 {name=M8
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
C {devices/lab_pin.sym} 1460 -560 0 1 {name=p33 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1420 -490 0 0 {name=p34 sig_type=std_logic lab=term_2}
C {devices/gnd.sym} 1460 -420 0 0 {name=l17 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -350 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -270 0 0 {name=M10
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
C {devices/lab_pin.sym} 1460 -380 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1420 -310 0 0 {name=p36 sig_type=std_logic lab=term_3}
C {devices/gnd.sym} 1460 -240 0 0 {name=l18 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1640 -890 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1640 -810 0 0 {name=M12
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
C {devices/lab_pin.sym} 1660 -920 0 1 {name=p37 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1620 -850 0 0 {name=p39 sig_type=std_logic lab=term_4}
C {devices/gnd.sym} 1660 -780 0 0 {name=l19 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1640 -710 0 0 {name=M29
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
C {sky130_fd_pr/nfet_01v8.sym} 1640 -630 0 0 {name=M30
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
C {devices/lab_pin.sym} 1660 -740 0 1 {name=p57 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1620 -670 0 0 {name=p58 sig_type=std_logic lab=term_5}
C {devices/gnd.sym} 1660 -600 0 0 {name=l29 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1640 -530 0 0 {name=M31
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
C {sky130_fd_pr/nfet_01v8.sym} 1640 -450 0 0 {name=M32
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
C {devices/lab_pin.sym} 1660 -560 0 1 {name=p59 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1620 -490 0 0 {name=p60 sig_type=std_logic lab=term_6}
C {devices/gnd.sym} 1660 -420 0 0 {name=l30 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1640 -350 0 0 {name=M33
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
C {sky130_fd_pr/nfet_01v8.sym} 1640 -270 0 0 {name=M34
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
C {devices/lab_pin.sym} 1660 -380 0 1 {name=p61 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1620 -310 0 0 {name=p62 sig_type=std_logic lab=term_7}
C {devices/gnd.sym} 1660 -240 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 600 -80 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 600 -110 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 600 -140 0 0 {name=p43 sig_type=std_logic lab=en_4}
C {tt_um_13hihi31_tdc.sym} 960 -550 0 0 {name=x1}
C {devices/gnd.sym} 1110 -310 0 0 {name=l55 lab=GND}
C {devices/lab_pin.sym} 1110 -330 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1110 -490 0 1 {name=p9 sig_type=std_logic lab=term_0}
C {devices/lab_pin.sym} 1110 -470 0 1 {name=p11 sig_type=std_logic lab=term_1}
C {devices/lab_pin.sym} 1110 -450 0 1 {name=p12 sig_type=std_logic lab=term_2}
C {devices/lab_pin.sym} 1110 -430 0 1 {name=p16 sig_type=std_logic lab=term_3}
C {devices/lab_pin.sym} 1110 -410 0 1 {name=p18 sig_type=std_logic lab=term_4}
C {devices/lab_pin.sym} 1110 -390 0 1 {name=p20 sig_type=std_logic lab=term_5}
C {devices/lab_pin.sym} 1110 -370 0 1 {name=p27 sig_type=std_logic lab=term_6}
C {devices/lab_pin.sym} 1110 -350 0 1 {name=p28 sig_type=std_logic lab=term_7}
C {devices/lab_pin.sym} 810 -750 0 0 {name=p38 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 810 -330 0 0 {name=p40 sig_type=std_logic lab=en_start}
C {devices/gnd.sym} 810 -590 0 0 {name=l56 lab=GND}
C {devices/gnd.sym} 810 -570 0 0 {name=l57 lab=GND}
C {devices/gnd.sym} 810 -550 0 0 {name=l58 lab=GND}
C {devices/gnd.sym} 810 -530 0 0 {name=l59 lab=GND}
C {devices/lab_pin.sym} 810 -430 0 0 {name=p41 sig_type=std_logic lab=en_0}
C {devices/lab_pin.sym} 810 -450 0 0 {name=p42 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 810 -470 0 0 {name=p45 sig_type=std_logic lab=en_2}
C {devices/lab_pin.sym} 810 -490 0 0 {name=p46 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 810 -510 0 0 {name=p48 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 810 -350 0 0 {name=l60 lab=GND}
C {devices/gnd.sym} 810 -410 0 0 {name=l61 lab=GND}
C {devices/gnd.sym} 810 -390 0 0 {name=l62 lab=GND}
C {devices/gnd.sym} 810 -370 0 0 {name=l63 lab=GND}
C {devices/noconn.sym} 1110 -650 2 0 {name=l64}
C {devices/noconn.sym} 1110 -630 2 0 {name=l65}
C {devices/noconn.sym} 1110 -610 2 0 {name=l66}
C {devices/noconn.sym} 1110 -590 2 0 {name=l67}
C {devices/noconn.sym} 1110 -570 2 0 {name=l68}
C {devices/noconn.sym} 1110 -550 2 0 {name=l69}
C {devices/noconn.sym} 1110 -530 2 0 {name=l70}
C {devices/noconn.sym} 1110 -510 2 0 {name=l71}
C {devices/noconn.sym} 1110 -810 2 0 {name=l72}
C {devices/noconn.sym} 1110 -790 2 0 {name=l73}
C {devices/noconn.sym} 1110 -770 2 0 {name=l74}
C {devices/noconn.sym} 1110 -750 2 0 {name=l75}
C {devices/noconn.sym} 1110 -690 2 0 {name=l76}
C {devices/noconn.sym} 1110 -730 2 0 {name=l77}
C {devices/noconn.sym} 1110 -710 2 0 {name=l78}
C {devices/noconn.sym} 1110 -670 2 0 {name=l79}
C {devices/noconn.sym} 810 -290 0 0 {name=l80}
C {devices/noconn.sym} 810 -310 0 0 {name=l81}
C {devices/noconn.sym} 810 -610 0 0 {name=l82}
C {devices/noconn.sym} 810 -630 0 0 {name=l83}
C {devices/noconn.sym} 810 -650 0 0 {name=l84}
C {devices/noconn.sym} 810 -670 0 0 {name=l85}
C {devices/noconn.sym} 810 -690 0 0 {name=l86}
C {devices/noconn.sym} 810 -710 0 0 {name=l87}
C {devices/noconn.sym} 810 -730 0 0 {name=l88}
C {devices/noconn.sym} 810 -770 0 0 {name=l89}
C {devices/noconn.sym} 810 -790 0 0 {name=l90}
C {devices/noconn.sym} 810 -810 0 0 {name=l91}
