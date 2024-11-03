v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -270 770 -270 {
lab=delay_pos_0}
N 600 -250 770 -250 {
lab=delay_neg_0}
N 990 -270 1160 -270 {
lab=delay_pos_1}
N 990 -250 1160 -250 {
lab=delay_neg_1}
N 1380 -270 1550 -270 {
lab=delay_pos_2}
N 1380 -250 1550 -250 {
lab=delay_neg_2}
N 670 -270 670 -150 {
lab=delay_pos_0}
N 650 -250 650 -130 {
lab=delay_neg_0}
N 650 -130 670 -130 {
lab=delay_neg_0}
N 1060 -270 1060 -150 {
lab=delay_pos_1}
N 1040 -250 1040 -130 {
lab=delay_neg_1}
N 1040 -130 1060 -130 {
lab=delay_neg_1}
N 1450 -270 1450 -150 {
lab=delay_pos_2}
N 1430 -250 1430 -130 {
lab=delay_neg_2}
N 1430 -130 1450 -130 {
lab=delay_neg_2}
N 1820 -250 1820 -130 {
lab=delay_neg_3}
N 1820 -130 1840 -130 {
lab=delay_neg_3}
N 2230 -270 2230 -150 {
lab=delay_pos_4}
N 2210 -250 2210 -130 {
lab=delay_neg_4}
N 2210 -130 2230 -130 {
lab=delay_neg_4}
N 1770 -250 1940 -250 {
lab=delay_neg_3}
N 1770 -270 1940 -270 {
lab=delay_pos_3}
N 1840 -270 1840 -150 {
lab=delay_pos_3}
N 2160 -250 2330 -250 {
lab=delay_neg_4}
N 2160 -270 2330 -270 {
lab=delay_pos_4}
N 2620 -270 2620 -150 {
lab=delay_pos_5}
N 2600 -250 2600 -130 {
lab=delay_neg_5}
N 2600 -130 2620 -130 {
lab=delay_neg_5}
N 2550 -250 2720 -250 {
lab=delay_neg_5}
N 2550 -270 2720 -270 {
lab=delay_pos_5}
N 3010 -270 3010 -150 {
lab=delay_pos_6}
N 2990 -250 2990 -130 {
lab=delay_neg_6}
N 2990 -130 3010 -130 {
lab=delay_neg_6}
N 2940 -250 3110 -250 {
lab=delay_neg_6}
N 2940 -270 3110 -270 {
lab=delay_pos_6}
N 3400 -270 3400 -150 {
lab=delay_pos_7}
N 3380 -250 3380 -130 {
lab=delay_neg_7}
N 3380 -130 3400 -130 {
lab=delay_neg_7}
N 3330 -250 3500 -250 {
lab=delay_neg_7}
N 3330 -270 3500 -270 {
lab=delay_pos_7}
C {devices/lab_pin.sym} 830 -90 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 830 -110 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 600 -230 2 0 {name=p8 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 600 -210 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1220 -90 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1220 -110 2 0 {name=p11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 990 -230 2 0 {name=p12 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 990 -210 2 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 830 -150 2 0 {name=p14 sig_type=std_logic lab=term_0
}
C {devices/lab_pin.sym} 1220 -150 2 0 {name=p16 sig_type=std_logic lab=term_1
}
C {devices/lab_pin.sym} 1610 -90 2 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1610 -110 2 0 {name=p18 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1380 -230 2 0 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1380 -210 2 0 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1610 -150 2 0 {name=p21 sig_type=std_logic lab=term_2
}
C {devices/lab_pin.sym} 1770 -230 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1770 -210 2 0 {name=p25 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 670 -110 2 1 {name=p32 sig_type=std_logic lab=stop_strong
}
C {devices/lab_pin.sym} 1060 -110 0 0 {name=p33 sig_type=std_logic lab=stop_strong
}
C {devices/lab_wire.sym} 680 -270 0 1 {name=p73 sig_type=std_logic lab=delay_pos_0}
C {devices/lab_wire.sym} 680 -250 0 1 {name=p74 sig_type=std_logic lab=delay_neg_0}
C {devices/lab_wire.sym} 1070 -270 0 1 {name=p75 sig_type=std_logic lab=delay_pos_1}
C {devices/lab_wire.sym} 1070 -250 0 1 {name=p76 sig_type=std_logic lab=delay_neg_1}
C {delay_unit.sym} 490 -240 0 0 {name=x1}
C {saff.sym} 750 -120 0 0 {name=x2}
C {saff.sym} 1140 -120 0 0 {name=x4}
C {delay_unit.sym} 880 -240 0 0 {name=x5}
C {delay_unit.sym} 1270 -240 0 0 {name=x6}
C {devices/lab_wire.sym} 1460 -270 0 1 {name=p77 sig_type=std_logic lab=delay_pos_2}
C {devices/lab_wire.sym} 1460 -250 0 1 {name=p78 sig_type=std_logic lab=delay_neg_2}
C {delay_unit.sym} 1660 -240 0 0 {name=x7}
C {saff.sym} 1530 -120 0 0 {name=x8}
C {devices/lab_pin.sym} 1450 -110 0 0 {name=p79 sig_type=std_logic lab=stop_strong
}
C {devices/lab_wire.sym} 1850 -270 0 1 {name=p80 sig_type=std_logic lab=delay_pos_3}
C {devices/lab_wire.sym} 1850 -250 0 1 {name=p81 sig_type=std_logic lab=delay_neg_3}
C {devices/lab_pin.sym} 2160 -230 2 0 {name=p82 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2160 -210 2 0 {name=p83 sig_type=std_logic lab=VSS
}
C {delay_unit.sym} 2050 -240 0 0 {name=x9}
C {devices/lab_wire.sym} 2240 -270 0 1 {name=p84 sig_type=std_logic lab=delay_pos_4}
C {devices/lab_wire.sym} 2240 -250 0 1 {name=p85 sig_type=std_logic lab=delay_neg_4}
C {devices/lab_pin.sym} 2000 -90 2 0 {name=p86 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 2000 -110 2 0 {name=p87 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2000 -150 2 0 {name=p88 sig_type=std_logic lab=term_3
}
C {saff.sym} 1920 -120 0 0 {name=x10}
C {devices/lab_pin.sym} 1840 -110 0 0 {name=p89 sig_type=std_logic lab=stop_strong
}
C {devices/lab_pin.sym} 2390 -90 2 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 2390 -110 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2390 -150 2 0 {name=p26 sig_type=std_logic lab=term_4
}
C {saff.sym} 2310 -120 0 0 {name=x11}
C {devices/lab_pin.sym} 2230 -110 0 0 {name=p29 sig_type=std_logic lab=stop_strong
}
C {delay_unit.sym} 2440 -240 0 0 {name=x12}
C {devices/lab_pin.sym} 380 -250 0 0 {name=p30 sig_type=std_logic lab=start_neg}
C {devices/lab_pin.sym} 380 -270 0 0 {name=p31 sig_type=std_logic lab=start_pos}
C {devices/lab_pin.sym} 2550 -230 2 0 {name=p34 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2550 -210 2 0 {name=p35 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 2630 -270 0 1 {name=p95 sig_type=std_logic lab=delay_pos_5}
C {devices/lab_wire.sym} 2630 -250 0 1 {name=p96 sig_type=std_logic lab=delay_neg_5}
C {devices/lab_pin.sym} 2780 -90 2 0 {name=p97 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 2780 -110 2 0 {name=p98 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2780 -150 2 0 {name=p99 sig_type=std_logic lab=term_5
}
C {saff.sym} 2700 -120 0 0 {name=x13}
C {devices/lab_pin.sym} 2620 -110 0 0 {name=p100 sig_type=std_logic lab=stop_strong
}
C {delay_unit.sym} 2830 -240 0 0 {name=x14}
C {devices/lab_pin.sym} 2940 -230 2 0 {name=p101 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 2940 -210 2 0 {name=p102 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 3020 -270 0 1 {name=p103 sig_type=std_logic lab=delay_pos_6}
C {devices/lab_wire.sym} 3020 -250 0 1 {name=p104 sig_type=std_logic lab=delay_neg_6}
C {devices/lab_pin.sym} 3170 -90 2 0 {name=p105 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 3170 -110 2 0 {name=p106 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3170 -150 2 0 {name=p107 sig_type=std_logic lab=term_6
}
C {saff.sym} 3090 -120 0 0 {name=x15}
C {devices/lab_pin.sym} 3010 -110 0 0 {name=p108 sig_type=std_logic lab=stop_strong
}
C {delay_unit.sym} 3220 -240 0 0 {name=x16}
C {devices/lab_pin.sym} 3330 -230 2 0 {name=p109 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3330 -210 2 0 {name=p110 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 3410 -270 0 1 {name=p111 sig_type=std_logic lab=delay_pos_7}
C {devices/lab_wire.sym} 3410 -250 0 1 {name=p112 sig_type=std_logic lab=delay_neg_7}
C {devices/lab_pin.sym} 3560 -90 2 0 {name=p113 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 3560 -110 2 0 {name=p114 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3560 -150 2 0 {name=p115 sig_type=std_logic lab=term_7
}
C {saff.sym} 3480 -120 0 0 {name=x17}
C {devices/lab_pin.sym} 3400 -110 0 0 {name=p116 sig_type=std_logic lab=stop_strong
}
C {delay_unit.sym} 3610 -240 0 0 {name=x18}
C {devices/lab_pin.sym} 3720 -230 2 0 {name=p117 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3720 -210 2 0 {name=p118 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} 120 -80 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 120 -40 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 140 -520 0 0 {name=p3 lab=start_pos}
C {devices/ipin.sym} 140 -440 0 0 {name=p4 lab=stop_strong}
C {devices/opin.sym} 120 -400 0 0 {name=p68 lab=term_0}
C {devices/opin.sym} 120 -360 0 0 {name=p69 lab=term_1}
C {devices/opin.sym} 120 -320 0 0 {name=p70 lab=term_2}
C {devices/opin.sym} 120 -280 0 0 {name=p71 lab=term_3}
C {devices/opin.sym} 120 -240 0 0 {name=p72 lab=term_4}
C {devices/opin.sym} 120 -200 0 0 {name=p119 lab=term_5}
C {devices/opin.sym} 120 -160 0 0 {name=p120 lab=term_6}
C {devices/opin.sym} 120 -120 0 0 {name=p121 lab=term_7}
C {devices/ipin.sym} 140 -480 0 0 {name=p5 lab=start_neg}
