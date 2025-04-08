module tb;
reg [3:0]bcd;
wire [7:0]seg;
bcdto7 uut(.bcd(bcd),.seg(seg));
initial
begin
bcd=4'd7;
#10;
bcd=4'd2;
#10;
bcd=4'd4;
#10;
bcd=4'd6;
#10;
bcd=4'd0;
#10;
bcd=4'd9;
#10;
bcd=4'd6;
#10;
bcd=4'd2;
#10;
bcd=4'd7;
#10;
$finish();

end
endmodule
