module tb;
reg clk,rst;
wire out;
div uut(.clk(clk),.rst(rst),.out(out));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$monitor("clk=%0b,rst=%0b,out=%0b at %0t",clk,rst,out,$time);
clk=0;
rst=1;
#10;
rst=0;
#100;
$finish();
end
endmodule
