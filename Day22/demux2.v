//DeMultiplexer[1:8] using [1:2];
module demux(
input in,
input [2:0]sel,
output [7:0]y );
wire a,b;
demux2 uut(.in(in),.sel(sel[2]),.m(a),.n(b));
demux4 uut1(.in(a),.sel(sel[1:0]),.y(y[7:4]));
demux4 uut2(.in(b),.sel(sel[1:0]),.y(y[3:0]));

endmodule
module demux4(
input in,
input [1:0]sel,
output [3:0]y);
assign y[0]=in&(~sel[1])&(~sel[0]);
assign y[1]=in&(~sel[1])&(sel[0]);
assign y[2]=in&(sel[1])&(~sel[0]);
assign y[3]=in&(sel[1])&(sel[0]);

endmodule
module demux2(
input in,
input sel,
output m,n);
assign m=in&(~sel);
assign n=in&(sel);

endmodule
