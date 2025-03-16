module demux(
input in,
input [1:0]s,
output y1,y2,y3,y4);
assign y1=(~s[1])&(~s[0])&in;
assign y2=(~s[1])&(s[0])&in;
assign y3=(s[1])&(~s[0])&in;
assign y4=(s[1])&(s[0])&in;

endmodule
