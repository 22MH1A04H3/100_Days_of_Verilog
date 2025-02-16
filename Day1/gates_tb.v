module gates_tb();
reg a,b;
wire c,d,e,f,g,h,i;
gates ga(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i));
initial 
begin
a=0;b=0;
#5;
a=1;b=0;
#5;
a=1;b=1;
#5;
a=0;b=1;
#5;
a=0;b=0;
#5;
a=1;b=1;
#5;
$finish();
end
endmodule
