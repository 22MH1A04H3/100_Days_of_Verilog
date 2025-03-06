module full_sub_tb;
reg a,b,c;
wire sum,barrow;
full_sub dut(.a(a),.b(b),.c(c),.sum(sum),.barrow(barrow));
initial
begin
a=0;b=0;c=0;
#5;
a=0;b=1;c=1;

#5;

a=1;b=0;c=1;
#5;

a=1;b=1;c=0;
#5;

a=0;b=0;c=1;

#5;

a=0;b=1;c=0;
#5;
$finish();

end
endmodule
