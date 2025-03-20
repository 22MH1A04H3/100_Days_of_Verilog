module tb;
reg [3:0]i;
reg [1:0]s;
wire y;
mux_1 uut(.i(i),.s(s),.y(y));
initial
begin
i=4'b0101;s=2'd3;
#10;
i=4'b1111;s=2'd2;
#10;i=4'b0101;s=2'd1;
#10;i=4'b0101;s=2'd0;
#10;i=4'b0110;s=2'd3;
#10;i=4'b1111;s=2'd1;
#10;i=4'b1001;s=2'd2;
#10;i=4'b0101;s=2'd0;
#10;
$finish();
end
endmodule
