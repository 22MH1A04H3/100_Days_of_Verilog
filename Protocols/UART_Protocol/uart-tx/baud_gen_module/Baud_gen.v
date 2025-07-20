//baud_rate_generator
module baud_gen(
input clk,reset,
  input [1:0]baud_rate,
output reg baud_clk);
  
  reg [9:0]final_value;
  reg [9:0]clock_ticks;
  
  localparam b24=2'b00;
  localparam b48=2'b01;
  localparam b96=2'b10;
  localparam b192=2'b11;
  
  always@(*)
    begin
      case(baud_rate)
        b24:final_value<=651;//25_000_0000/(16*2400)
        b48:final_value<=326;//25000000/(16*4800)
        b96:final_value<=163;
        b192:final_value<=8138;
        default:final_value<=163;
      endcase
    end
  
  always@(negedge clk,posedge reset)
    begin
      if(!reset)
        begin
          clock_ticks<=10'b0;
          baud_clk<=1'b0;
          
        end
      else
        begin
          if(clock_ticks==final_value)
            begin
              baud_clk=~baud_clk;
              clock_ticks<=10'b0;
              
            end
          else
            begin
            clock_ticks<=clock_ticks+1'b1;
            baud_clk<=baud_clk;
            end
          
        end
    end
endmodule
