`default_nettype none

/*
 *-------------------------------------------------------------
 *
 * user_proj_ls130tw1  (LibreSilicon Testwafer #1)
 *
 */

module user_proj_example #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vdda1,        // User area 1 3.3V supply
    inout vdda2,        // User area 2 3.3V supply
    inout vssa1,        // User area 1 analog ground
    inout vssa2,        // User area 2 analog ground
    inout vccd1,        // User area 1 1.8V supply
    inout vccd2,        // User area 2 1.8v supply
    inout vssd1,        // User area 1 digital ground
    inout vssd2,        // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oen,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb
);

AND2X1 AND2X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[0]),
  .B(io_in[1]),
  .Y(io_out[2]),
);
AND2X2 AND2X2(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[3]),
  .B(io_in[4]),
  .Y(io_out[5]),
);
AOI21X1 AOI21X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[6]),
  .B(io_in[7]),
  .C(io_in[8]),
  .Y(io_out[9]),
);
AOI22X1 AOI22X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[10]),
  .B(io_in[11]),
  .C(io_in[12]),
  .D(io_in[13]),
  .Y(io_out[14]),
);
BUFX2 BUFX2(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[15]),
  .Y(io_out[16]),
);
INV INV(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[17]),
  .Y(io_out[18]),
);
INVX1 INVX1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[19]),
  .Y(io_out[20]),
);
INVX2 INVX2(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[21]),
  .Y(io_out[22]),
);
INVX4 INVX4(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[23]),
  .Y(io_out[24]),
);
MUX2X1 MUX2X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[25]),
  .B(io_in[26]),
  .S(io_in[27]),
  .Y(io_out[28]),
);
NAND2X1 NAND2X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[29]),
  .B(io_in[30]),
  .Y(io_out[31]),
);
NAND3X1 NAND3X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[32]),
  .B(io_in[33]),
  .C(io_in[34]),
  .Y(io_out[35]),
);
NOR2X1 NOR2X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(io_in[36]),
  .B(io_in[37]),
  .Y(la_data_out[0]),
);
OR2X2 OR2X2(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(la_data_in[1]),
  .B(la_data_in[2]),
  .Y(la_data_out[3]),
);
XNOR2X1 XNOR2X1(
 `ifdef USE_POWER_PINS
  .vdd(vccd1),
  .gnd(vssd1),
 `endif
  .A(la_data_in[4]),
  .B(la_data_in[5]),
  .Y(la_data_out[6]),
);
assign io_oeb[0] = 1'b1;
assign io_oeb[1] = 1'b1;
assign io_oeb[2] = 1'b0;
assign io_oeb[3] = 1'b1;
assign io_oeb[4] = 1'b1;
assign io_oeb[5] = 1'b0;
assign io_oeb[6] = 1'b1;
assign io_oeb[7] = 1'b1;
assign io_oeb[8] = 1'b1;
assign io_oeb[9] = 1'b0;
assign io_oeb[10] = 1'b1;
assign io_oeb[11] = 1'b1;
assign io_oeb[12] = 1'b1;
assign io_oeb[13] = 1'b1;
assign io_oeb[14] = 1'b0;
assign io_oeb[15] = 1'b1;
assign io_oeb[16] = 1'b0;
assign io_oeb[17] = 1'b1;
assign io_oeb[18] = 1'b0;
assign io_oeb[19] = 1'b1;
assign io_oeb[20] = 1'b0;
assign io_oeb[21] = 1'b1;
assign io_oeb[22] = 1'b0;
assign io_oeb[23] = 1'b1;
assign io_oeb[24] = 1'b0;
assign io_oeb[25] = 1'b1;
assign io_oeb[26] = 1'b1;
assign io_oeb[27] = 1'b1;
assign io_oeb[28] = 1'b0;
assign io_oeb[29] = 1'b1;
assign io_oeb[30] = 1'b1;
assign io_oeb[31] = 1'b0;
assign io_oeb[32] = 1'b1;
assign io_oeb[33] = 1'b1;
assign io_oeb[34] = 1'b1;
assign io_oeb[35] = 1'b0;
assign io_oeb[36] = 1'b1;
assign io_oeb[37] = 1'b1;
endmodule
