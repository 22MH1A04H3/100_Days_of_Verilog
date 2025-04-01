module pipo(
input [3:0]din,
input clk,rst,
output reg [3:0]dout);
reg [3:0]s;
always@(posedge clk)
begin
if(rst)
dout<=4'b0000;

else
dout<=din;

end
endmodule
