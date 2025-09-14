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
alter V2 0
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
C {devices/gnd.sym} 1140 -320 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1140 -340 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1140 -500 0 1 {name=p22 sig_type=std_logic lab=term_0}
C {devices/lab_pin.sym} 1140 -480 0 1 {name=p23 sig_type=std_logic lab=term_1}
C {devices/lab_pin.sym} 1140 -460 0 1 {name=p24 sig_type=std_logic lab=term_2}
C {devices/lab_pin.sym} 1140 -440 0 1 {name=p25 sig_type=std_logic lab=term_3}
C {devices/lab_pin.sym} 1140 -420 0 1 {name=p26 sig_type=std_logic lab=term_4}
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
C {devices/lab_pin.sym} 1140 -400 0 1 {name=p54 sig_type=std_logic lab=term_5}
C {devices/lab_pin.sym} 1140 -380 0 1 {name=p55 sig_type=std_logic lab=term_6}
C {devices/lab_pin.sym} 1140 -360 0 1 {name=p56 sig_type=std_logic lab=term_7}
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
C {devices/lab_pin.sym} 840 -760 0 0 {name=p13 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 840 -340 0 0 {name=p14 sig_type=std_logic lab=en_start}
C {devices/gnd.sym} 840 -600 0 0 {name=l27 lab=GND}
C {devices/gnd.sym} 840 -580 0 0 {name=l28 lab=GND}
C {devices/gnd.sym} 840 -560 0 0 {name=l32 lab=GND}
C {devices/gnd.sym} 840 -540 0 0 {name=l34 lab=GND}
C {devices/lab_pin.sym} 840 -440 0 0 {name=p15 sig_type=std_logic lab=en_0}
C {devices/lab_pin.sym} 840 -460 0 0 {name=p17 sig_type=std_logic lab=en_1}
C {devices/lab_pin.sym} 840 -480 0 0 {name=p44 sig_type=std_logic lab=en_2}
C {devices/lab_pin.sym} 840 -500 0 0 {name=p47 sig_type=std_logic lab=en_3}
C {devices/lab_pin.sym} 840 -520 0 0 {name=p63 sig_type=std_logic lab=en_4}
C {devices/gnd.sym} 840 -360 0 0 {name=l35 lab=GND}
C {devices/gnd.sym} 840 -420 0 0 {name=l36 lab=GND}
C {devices/gnd.sym} 840 -400 0 0 {name=l37 lab=GND}
C {devices/gnd.sym} 840 -380 0 0 {name=l38 lab=GND}
C {tt_um_13hihi31_tdc.sym} 990 -560 0 0 {name=x1
schematic=tt_um_13hihi31_tdc_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/tt_um_13hihi31_tdc.sim.spice])"
tclcommand="textwindow [file normalize ../mag/tt_um_13hihi31_tdc.sim.spice]"}
C {devices/noconn.sym} 1140 -660 2 0 {name=l8}
C {devices/noconn.sym} 1140 -640 2 0 {name=l10}
C {devices/noconn.sym} 1140 -620 2 0 {name=l12}
C {devices/noconn.sym} 1140 -600 2 0 {name=l13}
C {devices/noconn.sym} 1140 -580 2 0 {name=l20}
C {devices/noconn.sym} 1140 -560 2 0 {name=l21}
C {devices/noconn.sym} 1140 -540 2 0 {name=l22}
C {devices/noconn.sym} 1140 -520 2 0 {name=l23}
C {devices/noconn.sym} 1140 -820 2 0 {name=l24}
C {devices/noconn.sym} 1140 -800 2 0 {name=l25}
C {devices/noconn.sym} 1140 -780 2 0 {name=l26}
C {devices/noconn.sym} 1140 -760 2 0 {name=l33}
C {devices/noconn.sym} 1140 -700 2 0 {name=l39}
C {devices/noconn.sym} 1140 -740 2 0 {name=l40}
C {devices/noconn.sym} 1140 -720 2 0 {name=l41}
C {devices/noconn.sym} 1140 -680 2 0 {name=l42}
C {devices/noconn.sym} 840 -300 0 0 {name=l43}
C {devices/noconn.sym} 840 -320 0 0 {name=l44}
C {devices/noconn.sym} 840 -620 0 0 {name=l45}
C {devices/noconn.sym} 840 -640 0 0 {name=l46}
C {devices/noconn.sym} 840 -660 0 0 {name=l47}
C {devices/noconn.sym} 840 -680 0 0 {name=l48}
C {devices/noconn.sym} 840 -700 0 0 {name=l49}
C {devices/noconn.sym} 840 -720 0 0 {name=l50}
C {devices/noconn.sym} 840 -740 0 0 {name=l51}
C {devices/noconn.sym} 840 -780 0 0 {name=l52}
C {devices/noconn.sym} 840 -800 0 0 {name=l53}
C {devices/noconn.sym} 840 -820 0 0 {name=l54}
