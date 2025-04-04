module mux10(
input [9:0]in,
input [3:0]s,
output y);
wire m,n,o,p,q,r,z,t;
mux uut1(.a(in[0]),.b(in[1]),.s(s[3]),.y(m));
mux uut2(.a(in[2]),.b(in[3]),.s(s[3]),.y(n));
mux uut3(.a(in[4]),.b(in[5]),.s(s[3]),.y(o));
mux uut4(.a(in[6]),.b(in[7]),.s(s[3]),.y(p));
mux uut5(.a(in[8]),.b(in[9]),.s(s[3]),.y(q));
mux uut6(.a(m),.b(n),.s(s[2]),.y(r));
mux uut7(.a(o),.b(p),.s(s[2]),.y(z));
mux uut8(.a(r),.b(z),.s(s[1]),.y(t));
mux uut9(.a(t),.b(q),.s(s[0]),.y(y));

endmodule
module mux(
input a,b,
input s,
output y);
assign y=s?b:a;
endmodule
