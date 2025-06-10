// Code your design her
module up_down(
input clk,en,rst,//active low reset
  output reg[3:0]q);
  
  always@(posedge clk)
    begin
      if(!rst)
        q<=4'b0000;
      else if(en)
        q<=q+1;
      else
        q<=q-1;
    end
endmodule
