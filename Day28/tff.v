module tff(
input din,clk,reset,
output reg q);
always@(posedge clk or posedge reset)
begin
if(reset)
q<=1'b0;
else
q<=~din;

end
endmodule
