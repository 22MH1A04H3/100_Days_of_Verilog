module tb;
reg a,b;
wire lt,gt,eq;
comp uut(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));
initial
begin
a=1'b0;b=1'b1;
#10;
a=1'b1;b=1'b1;
#10;
a=1'b1;b=1'b0;
#10;
a=1'b0;b=1'b0;
#10;
a=1'b1;b=1'b1;
#10;
a=1'b0;b=1'b1;
#10;a=1'b1;b=1'b1;
#10;
a=1'b1;b=1'b0;
#10;
$finish();

end
endmodule
