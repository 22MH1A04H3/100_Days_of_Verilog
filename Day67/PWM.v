// Code your design here
module pwm(
input clk,reset_n,
  input [3:0]duty_cycle,
output reg pwm);
  
  reg [3:0]counter;
  always@(posedge clk or negedge reset_n)
    begin
      if(!reset_n)
        begin
          pwm<=1'b0;
          counter<=4'b0000;
        end
      else
        begin
          counter<=(counter==9)?0:counter+1;
          pwm <=(counter > duty_cycle)?0:1;
          
        end
    end
endmodule
  
