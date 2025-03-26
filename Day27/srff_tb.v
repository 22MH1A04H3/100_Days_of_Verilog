module tb;
reg s,r,clk,rst;
wire q;
sr uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
initial
begin
clk=1;
forever #2 clk=~clk;
end
initial
begin
s=1'b0;r=1'b1;rst=1'b0;
#10;
s=1'b0;r=1'b0;rst=1'b1;
#10;

s=1'b1;r=1'b1;rst=1'b0;
#10;

s=1'b1;r=1'b1;rst=1'b1;
#10;

s=1'b1;r=1'b0;rst=1'b1;
#10;

s=1'b0;r=1'b1;rst=1'b0;
#10;
s=1'b0;r=1'b1;rst=1'b0;
#10;
$finish();
end
endmodule
