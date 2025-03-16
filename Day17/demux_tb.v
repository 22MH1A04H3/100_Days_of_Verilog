module tb;
reg in;
reg s;
wire y1,y2,y3,y4;
demux uut(.in(in),.s(s),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
initial
begin
in=1'b1;s=2'b00;
#10;
in=1'b1;s=2'b01;
#10;
in=1'b1;s=2'b11;
#10;
in=1'b1;s=2'b10;
#10;
in=1'b1;s=2'b01;
#10;
in=1'b1;s=2'b01;
#10;
in=1'b1;s=2'b10;
#10;
$finish();


end
endmodule
