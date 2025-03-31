module tb;
reg [3:0]din;
reg clk,rst;
wire dout;
piso uut(.din(din),.clk(clk),.rst(rst),.dout(dout));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1'b0;
#5;
din=4'b0101;
#10;
din=4'b0110;
#10;
din=4'b0111;
#10;
din=4'b1001;
#10;
din=4'b1111;
#10;
din=4'b1101;
#10;
din=4'b0001;
#10;
rst=1'b1;
din=4'b0101;
#10;
din=4'b0110;
#10;
din=4'b0111;
#10;
din=4'b1001;
#10;
din=4'b1111;
#10;
din=4'b1101;
#10;
din=4'b0001;
#50;
$finish();

end
endmodule
