// Code your design here
//mod n counter
module counter#(parameter n=20)(
input clk,rst_n,
  output reg [$clog2(n)-1:0]q);
 
  always@(posedge clk)
  begin
    if(!rst_n)
      q<=0;
    else if(q==n-1)
      q<=0;
    else
      q<=q+1;
    
  end
endmodule
