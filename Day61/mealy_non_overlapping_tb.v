//Mealy_Non-Overlapping_110010


module tb;
  reg din;
  reg clk,rst;
  wire out;
  
  fsm dut(.din(din),.out(out),.clk(clk),.rst(rst));
  
  initial
    begin
      clk=0;
      forever #5 clk= ~clk;
      
    end
  
  
  initial
    begin
      $monitor("din = %0b out = %0b at %0t",din,out,$time);
      rst=1'b1;
      #10;
      rst=1'b0;
      #10;
      din=1'b0;
      
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b1;
#10
din<=1'b0;
#10
din<=1'b0;
#10
din<=1'b1;
#10
din<=1'b0;
#10
      $finish();
      
      
    end
endmodule
