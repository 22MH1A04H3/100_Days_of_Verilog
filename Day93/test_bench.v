module tb;
  reg [6:0]in;
  wire [2:0]out;
  
  ones dut(.in(in),.out(out));
  initial
    begin
      $monitor("in=%b | out = %0d",in,out);
      repeat(10)
        begin
          in=$random();
          #10;
          
        end
      #10;
      $finish();
      
    end
  
endmodule
