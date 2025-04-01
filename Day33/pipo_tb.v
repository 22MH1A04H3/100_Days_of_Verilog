module pipo_tb;
reg [3:0]din;
reg clk,rst;
wire [3:0]dout;
pipo uut(.din(din),.clk(clk),.rst(rst),.dout(dout));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1'b0;
#10;
din=4'b0011;
#10;
din=4'b0111;
#10;
rst=1'b0;
#10;
din=4'b1111;
#10;
din=4'b0001;
#10;
din=4'b1011;
rst=1'b0;
#10;
din=4'b0011;
#10;
din=4'b0111;
#10;
din=4'b1111;
#10;
rst=1'b1;
#10;
din=4'b0001;
#10;
din=4'b1011;
#20;
$finish();
end
endmodule
