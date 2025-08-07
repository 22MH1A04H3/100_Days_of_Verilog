// Code your design here
module exp#(parameter depth=3)(
input clk,rst,
  input start,
  input [depth-1:0]base,
  input [depth-1:0]exp,
  output reg [depth*2-1:0]result,
output reg finish);
  
  reg [depth*2-1:0]temp_result;
  reg [2:0]counter;
  reg [1:0]state;
  
 //state declaration
  localparam idle=2'b00;
  localparam compute=2'b01;
  localparam done=2'b10;
  
  always@(posedge clk)
    begin
      if(rst)
        begin
          state<=idle;
          counter<=0;
          temp_result<=1;
          finish<=0;
          result<=0;
          
        end
      else
        begin
          case(state)
            idle:
              begin
                if(start)
                  begin
                    state<=compute;
                    temp_result<=1;
                    counter<=0;
                    finish<=0;
                    
                  end
              end
           compute:begin
              if(counter<exp)
                begin
                  temp_result<=temp_result*base;
                  counter<=counter+1;
                 end
              else
                begin
                  result<=temp_result;
                  state<=done;
                  
                  
                end
            end
            done:
              begin
                finish<=1;
                if(!start)state<=idle;// waits until the new start
              end
          endcase
        end
    end
endmodule
