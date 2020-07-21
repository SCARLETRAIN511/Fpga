module VerilogPractise(A,B,C,D,F);
input A,B,C,D;
output F;
wire A,B,C,D,F;
assign F = ~((A&B)|(C&D));
parameter wordWidth = 8,memsize = 1024;
reg[wordWidth-1:0] myMem[memsize-1:0]; //this will define a new array with size 1024 bytes. 储存器

//并行块 join fork, 所有语句都是并发执行


fork
regb = rega;
rega = regb;
join


//赋值分为持续性赋值与过程性赋值

endmodule