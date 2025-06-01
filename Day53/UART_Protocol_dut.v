module uarttx #(parameter clk_freq=1000000,
                parameter baud_rate=9600)
  (input clk,rst,newd,
   input [7:0]tx_data,
   output reg tx_done,tx
   
  );
  
  //clock divider
  localparam clk_count=clk_freq / baud_rate;
  
 
  reg [7:0]din;
  reg uclk;
  reg [15:0]count1;
  reg [7:0]count2;
  
  //states initialization
  
  typedef enum logic[1:0]{idle=2'b00,start=2'b01,transfer=2'b10,done=2'b11}state_t;
  state_t state = idle;
  
  // clk declaration
  always@(posedge clk)
    begin
      if(count1 < clk_count/2)
        count1 <= count1+1;
      else
        begin
         count1<=0;
          uclk<=~uclk;
        end
    end
  
  //state machine
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
          tx<=1'b1;
          tx_done<=1'b0;
          state<=idle;
          count2<=0;
        end
      else
        begin
          case(state)
            idle:begin
              tx<=1'b0;//start bit
              tx_done<=1'b0;
              if(newd)
                begin
                  din<=tx;
                  state<=start;
                end
              end
            start: begin
             tx<=1'b0;//start bit
              
              state<=transfer;
              count2<=0;
            end
            
            transfer:
              begin
                tx<=din[count2];
                if(count2 < 7)
                  count2<= count2+1;
                else
                  state<=done;
               
              end
            done:
              begin
                tx_done<=1'b1;
                state<=idle;
                tx<=1'b1;//stop bit
              end
            
          endcase
        end
    end
endmodule
