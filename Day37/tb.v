module tb;
reg [4:0]in;
wire [4:0]y;
btog uut(.in(in),.y(y));
initial
begin
in=5'b10101;
#5;
in=5'b11100;
#5;
in=5'b10001;
#5;
in=5'b10111;
#5;
in=5'b11101;
#5;
in=5'b11111;
#10;
$finish();
end
endmodule
