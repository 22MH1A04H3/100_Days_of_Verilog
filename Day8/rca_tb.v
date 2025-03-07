module rca_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum,co;
rca uut(.a(a),.b(b),.cin(cin),.sum(sum),.co(co));
initial 
begin
a=4'b0101;b=4'b1010;cin=1;
#5;
a=4'b1010;b=4'b0101;cin=0;
#5;
a=4'b1101;b=4'b1100;cin=1;
#5;
a=4'b0001;b=4'b1000;cin=0;
#5;
a=4'b0101;b=4'b1010;cin=1;
#5;
a=4'b1101;b=4'b1100;cin=1;
#5;
$finish();

end
endmodule
