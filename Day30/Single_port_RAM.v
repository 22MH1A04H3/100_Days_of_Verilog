module spr#(parameter data_w=8,add_w=4)(
input [data_w-1:0]din,
input [add_w-1:0]add,
input clk,we,
output reg[data_w-1:0]dout);
reg [data_w-1:0]mem[(1<<add_w)-1:0];
always@(posedge clk)
begin
if(we)
mem[add]<=din;
else
dout<=mem[add];

end
endmodule
