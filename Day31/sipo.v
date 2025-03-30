module sipo(
input din,
input clk,reset,
output reg[3:0]dout);
reg [3:0]s_reg;
always@(posedge clk)
begin
if(reset)
s_reg<=4'b0000;
else
begin
s_reg={s_reg[3:1],din};
end
dout<=s_reg;
end
endmodule
