module tb;
reg a,b,c,d;
reg s;
wire out;
mux uut(.a(a),.b(b),.c(c),.d(d),.out(out),.s(s));
initial
begin
a=1'b1;b=1'b1;c=1'b1;d=1'b1;
s=1'd2;
#10;
a=1'b0;b=1'b0;c=1'b1;d=1'b1;
s=1'd3;
#10;

a=1'b1;b=1'b1;c=1'b1;d=1'b1;
s=1'd1;
#10;
a=1'b1;b=1'b1;c=1'b1;d=1'b1;
s=1'd0;
#10;
a=1'b1;b=1'b1;c=1'b0;d=1'b0;
s=1'd2;
#20;
$finish();
end
endmodule
