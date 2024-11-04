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

    inverter inverter_1(
        .VDD(VDPWR),
        .VSS(VGND),
        .in(ua[0]),
        .out(ua[1])
    );
    
    //vernier_delay_line vernier_delay_line_0();
    //diff_gen diff_gen_0();
    stop_buffer stop_buffer_0();

endmodule
