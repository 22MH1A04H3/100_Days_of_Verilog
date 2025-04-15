module tb;
reg clk,rst;
wire out;
clk uut(.clk(clk),.rst(rst),.out(out));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1'b0;
#40;
rst=1'b1;
#10;
rst=1'b0;
#150;
$finish();
end
endmodule
