// Code your testbench here
// or browse Examples
module tb;
  reg [7:0]din;
  reg reset_n;
  reg [1:0]parity_type;
  wire parity_bit;
  
  parity dut(.din(din),.reset_n(reset_n),.parity_type(parity_type),.parity_bit(parity_bit));
  
  
  initial
    begin
      $monitor("parity_bit = %0b",parity_bit);
      reset_n=1'b0;
      #10;
      reset_n=1'b1;
      #10;
      din=8'b10101111;parity_type=01;
      #100;
       din=8'b10100011;parity_type=10;
      #100;
      
      $finish();
      
      
    end
endmodule
