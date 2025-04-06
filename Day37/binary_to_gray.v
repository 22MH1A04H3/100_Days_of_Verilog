module btog(
input [4:0]in,
output [4:0]y);
assign y[4]=in[4];
assign y[3]=in[4]^in[3];
assign y[2]=in[3]^in[2];
assign y[1]=in[2]^in[1];
assign y[0]=in[1]^in[0];

endmodule
