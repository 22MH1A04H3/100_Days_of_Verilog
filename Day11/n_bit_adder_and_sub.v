module add_sub(
input [15:0]a,b,
input c,
output[15:0]sum,
output cout);
wire [15:0]w1;
wire cin;
assign w1=b^{16{c}};
assign cin=c;

assign {cout,sum}=a+w1+cin;
endmodule
