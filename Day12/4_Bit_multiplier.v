module mul(
input [3:0]a,b,
output [7:0]y);
wire [3:0]p0,p2,p3,p4;
wire [7:0]sum1,sum2,sum3;
//partial products
assign p0=a^{4{b[0]}};
assign p1=a^{4{b[1]}};
assign p2=a^{4{b[2]}};
assign p3=a^{4{b[3]}};
//result
assign sum1={4'b0000,p0};
assign sum2={3'b000,p1,1'b0}+sum1;
assign sum3={2'b00,p0,2'b00}+sum2;
assign y={1'b0,p0,3'b000}+sum3;



endmodule
