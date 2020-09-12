

module count_m10(
                 input          clk,
                 input          rst_n,
                 input          en,    //Counter enable
                 input          clr,   //Counter synchronous reset   
                 output reg[3:0]data,  //counter value
                 output reg     t      // carry enable signal
                );
always@(posedge clk or negedge rst_n) 
begin
    if(rst_n == 0)
    begin
        data <= 4'd0;
        t <= 1'd0;
    end
    else if(clr)
    begin
        data <= 4'd0;
        t <= 1'd0;      
    end
    //else if(en)
	 //begin
	 if(data !=0)
	 //if want to realize the counter can change this  block
	 
	 //if (data == 4'd1)
		//begin
		//t <= 1'b1;
		//data <= 4'd1;
		//end
		//else
		//begin
		//t <= 1'b0;
		// data <= data - 4'd;		
		//end
	//end
	
	//the following code is commented out for testing purporses
   //     if(data==4'd9)
   //     begin
   //         t<= 1'b1;    //Counter to 9 to generate carry
   //         data <= 4'd0;//Counter to 9 reset
   //     end
   //    else
   //     begin
   //         t <= 1'b0;
   //         data <= data + 4'd1;
   //     end
   // end
	 
   // else
   //     t <= 1'b0;
		data <= data - 1;
		else data <= 4'hF;
	
end

initial data = 4'hF;

endmodule