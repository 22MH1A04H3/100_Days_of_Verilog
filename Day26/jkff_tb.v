module tb;
reg  j,k,clk,reset;
wire q;
jkff uut(.j(j),.k(k),.clk(clk),.reset(reset),.q(q));
initial
begin
clk=0;
forever #2 clk=~clk;

end
initial
begin
j=1'b0;k=1'b1;reset=1'b0;
#10;
j=1'b0;k=1'b0;reset=1'b1;
#10;

j=1'b1;k=1'b1;reset=1'b0;
#10;

j=1'b1;k=1'b1;reset=1'b1;
#10;

j=1'b1;k=1'b0;reset=1'b1;
#10;

j=1'b0;k=1'b1;reset=1'b0;
#10;
j=1'b0;k=1'b1;reset=1'b0;
#10;
$finish();



end
endmodule 
