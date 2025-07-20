// Code your design here
module parity(
  input [7:0]din,
input reset_n,
  input [1:0]parity_type,
output reg parity_bit);
  
  localparam odd=2'b01;
  localparam even=2'b10;
  
  always@(*)
    begin
      if(!reset_n) parity_bit<=1'b1;
      else
        begin
          case(parity_type)
            odd:parity_bit<=(^din)?1'b0:1'b1;
            even:parity_bit<=(^din)?1'b1:1'b0;
            default:parity_bit<=1'b1;
          endcase
        end
        
    end
endmodule
