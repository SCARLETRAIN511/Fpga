module top_level(
	input rst_n,
	output SEG4,
	output SEG3,
	output SEG2,
	output SEG1
);

reg[6:0] SEG1;
reg[6:0] SEG2;
reg[6:0] SEG3;
reg[6:0] SEG4;



clock_divider clock_div(CLK, clk);
counter_16 clock(clk, rst_n, count);
seg_decoder seg1(count[3:0], SEG1);
seg_decoder seg2(count[7:4], SEG2);
seg_decoder seg3(count[11:7], SEG3);
seg_decoder seg4(count[15:12], SEG4);

endmodule