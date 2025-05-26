module clk(
input clk,reset,
output clk_out);
reg [2:0]count=0;
reg clk1=0,clk2=0;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
count<=0;
//clk_out<=1'b0;
clk1<=0;
clk2<=0;


end
else
begin
if(count== 4)
begin
count<=0;
//clk_out<=~clk_out;
end
else
begin
count<=count+1;
end
if(count==0)
clk1<=~clk1;
if(count==2)
clk2<=~clk;
end

end
assign clk_out = clk1 | clk2;
endmodule


