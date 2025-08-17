//generate clk with 60% duty cycle
module clk_gen#(parameter n=10)(
input clk,rst,
output reg clk_out);
  reg [$clog2(n)-1:0]cnt;
 
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        cnt<='b0;
      else if(cnt == n-1)
        cnt<='b0;
      else
        cnt<=cnt+1;
      
      
    end
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        clk_out<=0;
      else if(cnt < (n*6)/10)
        clk_out<=1;
      else
        clk_out<=0;
    end
endmodule
