//No of ones in the sequance
module ones(
  input [6:0]in,
  output[2:0]out);
  wire w1,w2,w3,w4,w5;
  fa uut1(.a(in[0]),.b(in[1]),.cin(in[2]),.sum(w1),.cout(w2));
  fa uut2(.a(in[3]),.b(in[4]),.cin(in[5]),.sum(w3),.cout(w4));
  fa uut3(.a(w1),.b(w3),.cin(in[6]),.sum(out[0]),.cout(w5));
  fa uut4(.a(w2),.b(w4),.cin(w5),.sum(out[1]),.cout(out[2]));
  
endmodule

module fa(
input a,b,cin,
  output sum,cout);
  assign {cout,sum}=a+b+cin;
  
  
endmodule
