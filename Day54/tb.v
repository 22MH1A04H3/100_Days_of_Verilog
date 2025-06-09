module tb;
  reg clk,rst;
  wire [3:0]q;
  
  j_counter uut(.clk(clk),.rst(rst),.q(q));
  
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
      
    end
  initial
    begin
      $monitor("q=%0p",q);
      rst=1'b1;
      #10;
      rst=1'b0;
      #100;
      $finish();
    end
endmodule 
