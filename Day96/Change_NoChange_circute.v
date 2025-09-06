module cnff(
input c,n,clk,rst,
output q1,q_bar);
  
 wire w1,w2,w3,w4,w5;
  assign w5 = ~w3;
  assign q_bar = w5;
  assign q1 = w3;
  
  mux uut1(1'b0,c,n,w1);
  mux uut2(1'b1,1'b0,n,w2);
  mux uut3(w1,w2,w5,w4);
  dff uut4(.clk(clk),.rst(rst),.din(w4),.q(w3));
  
endmodule

//module mux
module mux(
input a,b,s,
output reg y);
  always@(a,b,s)
    begin
      if(s==1'b1)
        y = b;
      else
        y = a;
      
    end
  
endmodule
module dff(
input din,clk,rst,
output reg q);
  always@(posedge clk)
    begin
      if(rst)
        q<=0;
      else
        q<=din;
    end
endmodule
