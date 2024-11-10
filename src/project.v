/*
 * Copyright (c) 2024 Jeremiasz Hauck
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_13hihi31_tdc (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
//    input  wire       VAPWR,    // 3.3v power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire start;
    wire stop;
    wire start_delayed;
    wire stop_delayed;
    
    tdc tdc_0(
      .start(start_delayed),
      .stop(stop_delayed),
      .term_0(uo_out[0]),
      .term_1(uo_out[1]),
      .term_2(uo_out[2]),
      .term_3(uo_out[3]),
      .term_4(uo_out[4]),
      .term_5(uo_out[5]),
      .term_6(uo_out[6]),
      .term_7(uo_out[7]),
      .VDD(VDPWR),
      .VSS(VGND),
    );
    
    variable_delay_short variable_delay_short_0(
      .in(stop),
      .en_0(ui_in[1]),
      .en_1(ui_in[2]),
      .en_2(ui_in[3]),
      .en_3(ui_in[4]),
      .en_4(ui_in[5]),
      .out(stop_delayed),
      .VDD(VDPWR),
      .VSS(VGND),
    );
    
    variable_delay_dummy variable_delay_dummy_0(
      .in(start),
      .out(start_delayed),
      .VDD(VDPWR),
      .VSS(VGND),
    );
    
    input_stage input_stage_0(
      .in(ua[0]),
      .en(ui_in[0]),
      .t0(),
      .t1(),
      .t2(),
      .t3(),
      .out(start),
      .VDD(VDPWR),
      .VSS(VGND),
    );

    input_stage input_stage_1(
      .in(ua[0]),
      .en(VDPWR),
      .t0(),
      .t1(),
      .t2(),
      .t3(),
      .out(stop),
      .VDD(VDPWR),
      .VSS(VGND),
    );

    // ties for the output enables
    assign uio_out[0] = VGND;
    assign uio_out[1] = VGND;
    assign uio_out[2] = VGND;
    assign uio_out[3] = VGND;
    assign uio_out[4] = VGND;
    assign uio_out[5] = VGND;
    assign uio_out[6] = VGND;
    assign uio_out[7] = VGND;

    assign uio_oe[0] = VGND;
    assign uio_oe[1] = VGND;
    assign uio_oe[2] = VGND;
    assign uio_oe[3] = VGND;
    assign uio_oe[4] = VGND;
    assign uio_oe[5] = VGND;
    assign uio_oe[6] = VGND;
    assign uio_oe[7] = VGND;

endmodule
