module tb;
reg din,clk,reset;
wire q;
tff uut(.din(din),.clk(clk),.reset(reset),.q(q));
initial
begin
clk=0;
forever #10 clk=~clk;

end
initial
begin
din=1'b0;reset=1'b0;
#10;
din=1'b1;reset=1'b0;
#10;
din=1'b1;reset=1'b1;
#10;
din=1'b0;reset=1'b1;
#10;
din=1'b1;reset=1'b1;
#10;
din=1'b0;reset=1'b0;
#10;
din=1'b1;reset=1'b1;
#10;
$finish();


end
endmodule
