// Code your testbench here
// or browse Examples
module tb;
  parameter DATA_WIDTH = 16;
  reg  [DATA_WIDTH-1:0] din;
  wire [$clog2(DATA_WIDTH):0] dout;
  
  //instantiation
  model dut(.din(din),.dout(dout));
  
  initial 
    begin
      $monitor("din = %0b  dout = %0d",din,dout);
      for(int i=0;i<10;i++)
        begin
          din=$random();
          #10;
          
        end
      #10;
      $finish();
    end
  
endmodule
