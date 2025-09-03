//Debounce_circute
module debounce(
input clk,reset,
input noise,
output reg clean);
  reg [3:0]shift_reg;
  
  always@(posedge clk)
    begin
      if(reset)
        begin
          clean<='b0;
          shift_reg<='b0;
          
        end
      else
      begin
        shift_reg<={shift_reg[2:0],noise};
        if(shift_reg==4'b1111)
          clean<=1;
        else
          clean<=0;
        
      end
      
      
    end
endmodule
//https://www.edaplayground.com/x/Zu2r
