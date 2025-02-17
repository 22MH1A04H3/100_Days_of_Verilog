module exp(
input a,b,c,d,
output y);       //(ABC + A'C' + D)
assign y=(a&b&c)|(~a)&(~c)|d;
endmodule
