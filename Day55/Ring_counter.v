///ring coutter
module ring_counter(
input clk,rst,    //asychronos
  output reg[3:0]q);
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0001;
      else
        q<={q[0],q[3:1]};
    end
    
endmodule
