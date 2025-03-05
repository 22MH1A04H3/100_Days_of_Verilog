module half_add_tb;
reg a,b;
wire sum,c;
half_adder uut(.a(a),.b(b),.c(c),.sum(sum));
initial 
begin
a=0;b=0;
#5;
a=1;b=0;
#5;

a=0;b=1;
#5;

a=1;b=1;
#5;

a=1;b=0;
#5;

$finish();


end
endmodule
