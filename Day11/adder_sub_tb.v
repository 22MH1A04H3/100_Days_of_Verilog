module add_sub_tb;
reg [15:0]a,b;
reg c;
wire [15:0]sum;
wire cout;
add_sub uut(.a(a),.b(b),.sum(sum),.c(c),.cout(cout));
initial
begin
a=16'habcd;b=16'h1234;c=0;
#10;
a=16'h5468;b=16'h0934;c=1;
#10;
a=16'ha11d;b=16'h1004;c=0;
#10;
a=16'h567d;b=16'h1234;c=1;
#10;
a=16'h99cd;b=16'h1004;c=1;
#10;
a=16'habcd;b=16'h0634;c=0;
#10;
$finish();
end
endmodule
