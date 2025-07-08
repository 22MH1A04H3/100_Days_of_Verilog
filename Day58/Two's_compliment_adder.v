module twos_compliment_adder(
  input [3:0]a,b,
input m,
  output [3:0]sum,
  output cout);
  wire w0,w1,w2,w3,c1,c2,c3;
  
  assign w0=m^b[0];
  assign w1=m^b[1];
  assign w2=m^b[2]; 
  assign w3=m^b[3];
  fa uut4(.a(a[0]),.b(w0),.cin(m),.sum(sum[0]),.cout(c1));
  fa uut5(.a(a[1]),.b(w1),.cin(c1),.sum(sum[1]),.cout(c2));
  fa uut6(.a(a[2]),.b(w2),.cin(c2),.sum(sum[2]),.cout(c3));
  fa uut7(.a(a[3]),.b(w3),.cin(c3),.sum(sum[3]),.cout(cout));
  
endmodule
module fa(
input a,b,
input cin,
output sum,cout);
  assign {cout,sum}=a+b+cin;
endmodule
