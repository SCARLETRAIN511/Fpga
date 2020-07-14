`timescale 1ns / 1ps

module pllTest(
	input clk,
	input rst_n,
	output clkout1,
	output clkout2,
	output clkout3,
	output clkout4
	
);

wire locked;

pll pll_inst
(
	// Clock in ports
	.inclk0(clk),           // IN 50Mhz
	// Clock out ports
	.c0(clkout1),           // OUT 25Mhz
	.c1(clkout2),           // OUT 50Mhz
	.c2(clkout3),           // OUT 75Mhz
	.c3(clkout4),           // OUT 100Mhz
	// Status and control signals
	.areset(~rst_n),        // IN
	.locked(locked)         //The signal of PLL normal operation
	);                      // OUT

endmodule
	