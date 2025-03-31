module piso(
input [3:0]din,
input clk,rst,
output reg dout);
reg [3:0]a;
always@(posedge clk)
begin
if(rst)
a<=4'b0000;
else
begin

a<=din;
end
dout<=a[0];

end
endmodule
