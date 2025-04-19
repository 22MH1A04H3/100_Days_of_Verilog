module add(
input [31:0]a,b,
output [31:0]sum);
wire sign_a=a[31];
wire sign_b=b[31];
wire [7:0]exp_a=a[30:23];
wire [7:0]exp_b=b[30:23];
wire [23:0]mant_a={1'b1,a[22:0]};
wire [23:0]mant_b={1'b1,b[22:0]};
//exponent
wire [7:0]exp_dif=(exp_a>exp_b)?(exp_a-exp_b):(exp_b-exp_a);
wire [23:0]mant_shifta=(exp_a>exp_b)?(mant_a>>exp_dif):mant_a;
wire [23:0]mant_shiftb=(exp_a<exp_b)?(mant_b>>exp_dif):mant_b;
wire [7:0]exp_com=(exp_a>exp_b)?exp_a:exp_b;
 //mant_sum
wire [24:0]mant_sum=mant_shifta+mant_shiftb;

wire [7:0]f_exp=(mant_sum[24])?(exp_com+1):exp_com;
wire [22:0]f_mant=(mant_sum[24])?(mant_sum[23:1]):(mant_sum[22:0]);

//final assignment 

assign sum={1'b0,f_exp,f_mant};



endmodule
