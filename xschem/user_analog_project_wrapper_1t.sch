v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {bl1} 3750 -250 0 0 0.4 0.4 {}
T {bl2} 4170 -250 0 0 0.4 0.4 {}
T {wls2} 4110 -160 0 0 0.4 0.4 {}
T {wls1} 3680 -160 0 0 0.4 0.4 {}
T {src1} 3730 -110 0 0 0.4 0.4 {}
T {src2} 4160 -110 0 0 0.4 0.4 {}
T {b2} 4350 -160 0 0 0.4 0.4 {}
T {b1} 3920 -160 0 0 0.4 0.4 {}
T {bl3} 4600 -250 0 0 0.4 0.4 {}
T {wls3} 4540 -160 0 0 0.4 0.4 {}
T {src3} 4590 -110 0 0 0.4 0.4 {}
T {b3} 4780 -160 0 0 0.4 0.4 {}
N 3790 -260 3790 -200 {
lab=io_analog[0]}
N 3790 -140 3790 -90 {
lab=io_analog[2]}
N 3700 -170 3750 -170 {
lab=io_analog[1]}
N 4220 -260 4220 -200 {
lab=io_analog[4]}
N 4220 -140 4220 -90 {
lab=io_analog[6]}
N 4130 -170 4180 -170 {
lab=io_analog[5]}
N 3790 -170 3920 -170 {
lab=io_analog[3]}
N 4220 -170 4350 -170 {
lab=io_analog[7]}
N 4650 -260 4650 -200 {
lab=io_analog[8]}
N 4650 -140 4650 -90 {
lab=io_analog[10]}
N 4560 -170 4610 -170 {
lab=io_analog[9]}
N 4650 -170 4780 -170 {
lab=vssa1}
N 3680 250 3700 250 {
lab=vssa2}
N 4000 250 4020 250 {
lab=vssa2}
N 4000 270 4010 270 {}
N 4010 250 4010 270 {}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {special_sonosfet_star.sym} 3770 -170 0 0 {name=M1
L=0.22
W=0.45
mult=1
model=special_sonosfet_star
spiceprefix=X
}
C {special_sonosfet_star.sym} 4200 -170 0 0 {name=M2
L=0.22
W=0.45
mult=1
model=special_sonosfet_star
spiceprefix=X
}
C {devices/lab_wire.sym} 3790 -260 0 1 {name=l1 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_wire.sym} 3700 -170 0 0 {name=l1 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_wire.sym} 3790 -90 0 1 {name=l1 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_wire.sym} 3920 -170 0 1 {name=l1 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_wire.sym} 4220 -260 0 1 {name=l1 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_wire.sym} 4130 -170 0 0 {name=l3 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_wire.sym} 4220 -90 0 1 {name=l5 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_wire.sym} 4350 -170 0 1 {name=l7 sig_type=std_logic lab=io_analog[7]}
C {special_sonosfet_star.sym} 4630 -170 0 0 {name=M3
L=0.22
W=0.45
mult=1
model=special_sonosfet_star
spiceprefix=X
}
C {devices/lab_wire.sym} 4650 -260 0 1 {name=l1 sig_type=std_logic lab=io_analog[8]}
C {devices/lab_wire.sym} 4560 -170 0 0 {name=l3 sig_type=std_logic lab=io_analog[9]}
C {devices/lab_wire.sym} 4650 -90 0 1 {name=l5 sig_type=std_logic lab=io_analog[10]}
C {devices/lab_wire.sym} 4780 -170 0 1 {name=l7 sig_type=std_logic lab=vssa1}
C {devices/lab_wire.sym} 3680 250 0 0 {name=l7 sig_type=std_logic lab=vssa2
}
C {devices/lab_wire.sym} 4020 250 0 1 {name=l7 sig_type=std_logic lab=vssa2
}
C {sonos_array_small_8x8.sym} 3850 260 0 0 {name=x1}
