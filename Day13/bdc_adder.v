module bcd_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout);
wire [4:0]t_sum;
wire [4:0]c_sum;
wire x;
assign t_sum=a+b+cin;
assign x=(t_sum>9)?1:0;
assign c_sum=x?(t_sum+1):t_sum;
assign sum=c_sum[3:0];
assign cout=c_sum[4];

endmodule
