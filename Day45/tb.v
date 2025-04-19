module tb;
reg [31:0]a,b;
wire [31:0]sum;
add uut(.a(a),.b(b),.sum(sum));

initial
begin
$monitor("a=%0h , b=%0h ,sum=%0h at : %0t",a,b,sum,$time);
a=32'h40200000;//2.5 in IEEE 754
b=32'h3FA00000;//1.25 in IEEE 754
#10;
  a = 32'h3F000000; // 0.5
    b = 32'h3F000000; // 0.5
#10;

 a = 32'h3F800000; // 1.0
    b = 32'h3F800000; // 1.0
#10;
 a = 32'h40400000; // 3.0
    b = 32'h40800000; // 4.0
#10;
 a = 32'h40B00000; // 5.5
    b = 32'h40200000; // 2.25



#20;
$finish();

end
endmodule
