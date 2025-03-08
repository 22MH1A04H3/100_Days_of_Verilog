module cla_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
cla uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial
begin
a=4'b1010;b=4'b0101;cin=1;
#10;
a=4'b0110;b=4'b1101;cin=0;
#10;
a=4'b1100;b=4'b1000;cin=0;
#10;
a=4'b1111;b=4'b1101;cin=1;
#10;
a=4'b1011;b=4'b0000;cin=1;
#10;
a=4'b0101;b=4'b0101;cin=0;
#10;
$finish();

end
endmodule
