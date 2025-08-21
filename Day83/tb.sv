// Simple edge detector TB

module day3_tb ();
logic clk;
  logic reset;
  logic a_i;
  logic rising_edge_o;
  logic falling_edge_o;
  
  //dut
  day3 dut(.clk(clk),.reset(reset),.a_i(a_i),.rising_edge_o(rising_edge_o),.falling_edge_o(falling_edge_o));
  
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
      #200;
      
      $finish();
    end
  initial
    begin
      reset=1;
      #10;
      reset=0;
      
      repeat(10)
        begin
          a_i=$random();
          #10;
          
        end
      #200;
      $finish();
      
      
    end
endmodule
