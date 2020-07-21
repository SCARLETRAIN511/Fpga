	module practise(c,b,a,clk)
	input clk.a;
	output c,b
	//阻塞式赋值
	reg c,b;
	
	always @(posedge clk)
	begin
	//同时进行赋值
	a <= b;
	c <= b;
	
	end
	endmodule
	