module clk(
input clk,rst,
output reg out);
reg [1:0]count;
always@(posedge clk or posedge rst)
begin
if(rst)
begin
out<=0;
count<=2'b00;
end
else
begin
count<=count+1;
if(count==2'b11)
out<=~out;
end
end
endmodule
