`default_nettype none

/*
 *-------------------------------------------------------------
 *
 * user_proj_cells  (LibreSilicon Testwafer #1)
 *
 */

module AND2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module AND2X2(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module AOI21X1(
  inout A, // input
  inout B, // input
  inout C, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module AOI22X1(
  inout A, // input
  inout B, // input
  inout C, // input
  inout D, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module BUFX2(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module BUFX4(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module CLKBUF1(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module CLKBUF2(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module INV(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module INVX1(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module INVX2(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module INVX4(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module INVX8(
  inout A, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module MUX2X1(
  inout A, // input
  inout B, // input
  inout S, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module NAND2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module NAND3X1(
  inout A, // input
  inout B, // input
  inout C, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module NOR2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module OAI21X1(
  inout A, // input
  inout B, // input
  inout C, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module OAI22X1(
  inout A, // input
  inout B, // input
  inout C, // input
  inout D, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module OR2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module OR2X2(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module XNOR2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

module XOR2X1(
  inout A, // input
  inout B, // input
  inout Y, // output
     `ifdef USE_POWER_PINS
	inout VPWR, // cell power supply
	inout VGND  // cell ground supply
     `endif
);
endmodule

