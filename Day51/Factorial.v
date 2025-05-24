module fact(
input [3:0]num,
output reg [31:0]fact);


integer i;
always@(*)
begin
fact=1;
for(i=1;i<=num;i=i+1)
fact=fact*i;

end
endmodule
