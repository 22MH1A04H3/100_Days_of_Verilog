module dpr#(parameter data_w=8,data_d=32,add_w=8)
(input clk,rst,
input [data_w-1:0]din1,din2,
input [add_w-1:0]add1,add2,
input we1,we2,//write enable pin
output reg [data_w-1:0]dout1,dout2);
integer i;
//reg [add_w-1:0]s_add1;//storing addres1
//reg [add_w-1:0]s_add2;//storing addres2
//memory declaration
reg [data_w-1:0]mem[data_d-1:0];
//reset logic
always@(posedge clk)
begin
if(rst)
for(i=0;i<data_d;i=i+1)
begin
mem[i]=0;
end
end
//first port operation
always@(posedge clk)
begin

if(we1)

mem[add1]<=din1;
else
dout1<=mem[add1];
end
//second port operations
always@(posedge clk)
begin
if(we2)

mem[add2]<=din2;
else

dout2<=mem[add2];
end

endmodule
