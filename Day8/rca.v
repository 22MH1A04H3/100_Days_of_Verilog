module fulladder(a,b,cin,sum,co);
input a,b,cin;
output sum,co;
assign{co,sum}=a+b+cin;
endmodule

module rca(a,b,cin,sum,co);
input [3:0]a,b;
input cin;
output [3:0]sum,co;
fulladder fa1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.co(co[0]));
fulladder fa2(.a(a[1]),.b(b[1]),.cin(co[0]),.sum(sum[1]),.co(co[1]));
fulladder fa3(.a(a[2]),.b(b[2]),.cin(co[1]),.sum(sum[2]),.co(co[2]));
fulladder fa4(.a(a[2]),.b(b[3]),.cin(co[2]),.sum(sum[3]),.co(co[3]));
endmodule


