module sr(
input s,r,clk,rst,
output reg q);
always@(posedge clk or posedge rst)
begin
if(rst)
q=1'b0;
else
begin
case({s,r})
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=1'bx;
default:q=1'bx;
endcase
end
end
endmodule
