module exp_tb;
reg a,b,c,d;
wire y;
exp uut(.a(a),.b(b),.c(c),.d(d),.y(y));
initial
begin
a=0;b=1;c=1;d=0;
#3;
a=1;b=0;c=1;d=1;
#3;
a=0;b=0;c=0;d=1;
#3;
a=1;b=1;c=0;d=1;
#3;
a=1;b=0;c=0;d=1;
#3;
$finish();

end
endmodule
