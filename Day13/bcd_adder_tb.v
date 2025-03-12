module bcd_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
bcd_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial
begin
a=4'b0101;b=4'b1010;cin=1;
#10;
a=4'b0111;b=4'b1111;cin=0;
#10;
a=4'b0111;b=4'b1110;cin=1;
#10;
a=4'b0101;b=4'b1100;cin=0;
#10;
a=4'b1101;b=4'b1100;cin=1;
#10;
a=4'b0011;b=4'b1101;cin=1;
#10;
a=4'b0101;b=4'b1010;cin=0;
#10;
$finish();
end
endmodule
