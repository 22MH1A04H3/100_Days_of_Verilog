module siso(
input din,
input clk,rst,
output reg q);
reg [3:0]s;
always@(posedge clk)
begin
if(rst)
s<=4'b0000;
else
begin
s<={din,s[2:0]};//shift_right
q<=s[0];
end
end
endmodule
