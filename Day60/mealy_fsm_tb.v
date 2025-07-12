module test_bench();
reg din,rst,clk;
wire out;
fsm DUT(
.din(din),.rst(rst),.clk(clk),
.out(out)
);

initial begin
clk<=1'b0;
forever #5 clk=~clk;
end

initial begin
  $monitor("din =  %0b , rst  = %0b out = %0b",din,rst,out);
rst<=1'b1;
#10
rst<=1'b0;
#5
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b0;
#10
$finish;
end
endmodule
