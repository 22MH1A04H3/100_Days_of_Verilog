//universal shift register 
module usr(
input [1:0]sel,
input clk,rst,
input shift_left,
input shift_right,
input [3:0]din,
output reg [3:0]q);
always@(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
begin
case(sel)
2'b00:q<=q;//hold
2'b01:q<={shift_right,din[2:0]};//shift left
2'b10:q<={din[3:1],shift_left};//shift right
2'b11:q<=din;//parllel
default:q<=q;//hold
endcase
end
end
endmodule
