//4x1 mux using 2x1
module mux_1(
input [3:0]i,
input [1:0]s,
output y);
wire m,n;
mux uut1(.a(i[3]),.b(i[2]),.s(s[1]),.y(m));
mux uut2(.a(i[1]),.b(i[0]),.s(s[1]),.y(n));
mux uut3(.a(m),.b(n),.s(s[0]),.y(y));
endmodule
module mux(
input a,b,
input s,
output y);
assign y=s?b:a;

endmodule
