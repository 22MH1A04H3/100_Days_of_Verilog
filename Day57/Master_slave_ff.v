//Master_slave Flip-flop
module master_slave(
input clk,rst,d,
output reg master,q);
  
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        master<=0;
      else
        master<=d;
    end
  
  
  always@(negedge clk or negedge rst)
    begin
      if(!rst)
        q<=0;
      else
        q<=master;
    end
  
endmodule
