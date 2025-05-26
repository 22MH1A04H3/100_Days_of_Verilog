module tb;
reg clk;
reg reset;
wire clk_out;

clk uut(.clk(clk),.reset(reset),.clk_out(clk_out));
initial
begin
clk=0;
forever #5 clk=~clk;

end
initial
begin
reset=1;
#10;
reset=0;
#100;
$finish();
end
endmodule
