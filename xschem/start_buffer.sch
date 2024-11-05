v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -170 340 -150 {
lab=#net1}
N 300 -200 300 -120 {
lab=start}
N 340 -230 340 -200 {
lab=VDD}
N 340 -120 340 -90 {
lab=VSS}
N 480 -170 480 -150 {
lab=start_buff}
N 440 -200 440 -120 {
lab=#net1}
N 480 -230 480 -200 {
lab=VDD}
N 480 -120 480 -90 {
lab=VSS}
N 620 -170 620 -150 {
lab=start_delay}
N 580 -200 580 -120 {
lab=start_buff}
N 620 -230 620 -200 {
lab=VDD}
N 620 -120 620 -90 {
lab=VSS}
N 340 -160 440 -160 {
lab=#net1}
N 480 -160 580 -160 {
lab=start_buff}
N 620 -160 720 -160 {
lab=start_delay}
N 580 -120 580 -40 {
lab=start_buff}
C {sky130_fd_pr/pfet_01v8.sym} 320 -200 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -120 0 0 {name=M2
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
C {devices/lab_pin.sym} 340 -90 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -230 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 460 -200 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -120 0 0 {name=M4
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
C {devices/lab_pin.sym} 480 -90 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -230 0 1 {name=p40 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 600 -200 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -120 0 0 {name=M6
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
C {devices/lab_pin.sym} 620 -90 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -230 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 720 -160 0 1 {name=p43 sig_type=std_logic lab=start_delay}
C {devices/lab_wire.sym} 580 -40 0 1 {name=p44 sig_type=std_logic lab=start_buff}
C {devices/lab_wire.sym} 300 -160 0 0 {name=p47 sig_type=std_logic lab=start}
C {devices/iopin.sym} 80 -100 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 80 -60 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 100 -220 0 0 {name=p3 lab=start}
C {devices/opin.sym} 80 -180 0 0 {name=p68 lab=start_delay}
C {devices/opin.sym} 80 -140 0 0 {name=p69 lab=start_buff}
