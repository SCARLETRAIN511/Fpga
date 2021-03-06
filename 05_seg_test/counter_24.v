module counter_24(
	input clk,
	input rst_n,
	output reg[23:0] count
);

always @ (posedge clk or negedge rst_n)
begin
	if (rst_n == 0)
		count <= 24'hFFFFFF;
	else
		count <= count - 1;
end

initial count = 24'hFFFFFF;

endmodule