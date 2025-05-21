module tb;
reg clk,reset;
wire [3:0]q;
decade uut(.clk(clk),.reset(reset),.q(q));
always #5 clk=~clk;
initial
begin
clk=0;reset=1;
#10;
reset=0;
#100;
$finish();

end
endmodule
