module tb;
reg clk,rst;
wire [3:0]out;
lfsr uut(.clk(clk),.rst(rst),.out(out));
initial
begin
clk=0;
forever #5 clk=~clk;

end
initial
begin
rst=0;
#10;
rst=1;
#10;
rst=0;
#100;
$finish();

end

endmodule
