module tb;
reg [7:0]in;
wire [2:0]y;
enc uut(.in(in),.y(y));
initial
begin
in=8'b10000000;
#10;
in=8'b00001000;
#10;
in=8'b10000000;
#10;
in=8'b00001000;
#10;
in=8'b00000100;
#10;
in=8'b00010000;
#10;

$finish();


end
endmodule
