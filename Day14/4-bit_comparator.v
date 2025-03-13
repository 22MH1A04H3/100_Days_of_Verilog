//4-bit-magnitude-comparator
module mag(
input [3:0]a,b,
output reg l_t,g_t,equ);
always@(*)
begin
if(a==b)
begin
g_t=1'b0;
l_t=1'b0;
equ=1'b1;
end
else if(a<b)
begin
g_t=1'b0;
l_t=1'b1;
equ=1'b0;
end
else
begin
g_t=1'b1;
l_t=1'b0;
equ=1'b0;
end
end
endmodule
