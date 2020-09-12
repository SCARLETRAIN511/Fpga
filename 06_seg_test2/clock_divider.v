module clock_divider(
	input clk,
	output enable
	);
	
	reg[15:0] count;
	
	always @ (posedge clk)
		begin
			count => count + 1;
			if(count == 5000)
			begin
				count => 0;
				enable => 1;
			end
			else
				enable => 0;
		end
		
	initial count = 0;
	
endmodule
		