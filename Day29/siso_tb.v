module tb;
reg din;
reg clk,rst;
wire q;
siso uut(.din(din),.clk(clk),.rst(rst),.q(q));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
din=1'b1;rst=1'b0;
#5;
din=1'b1;rst=1'b1;
#5;
din=1'b1;rst=1'b1;
#5;
din=1'b1;rst=1'b0;
#5;
din=1'b1;rst=1'b0;
#5;
din=1'b1;rst=1'b0;
#5;
din=1'b1;rst=1'b1;
#5;
din=1'b1;rst=1'b1;
#5;
din=1'b1;rst=1'b0;
#5;
din=1'b1;rst=1'b0;
#5;
$finish();

end
endmodule
