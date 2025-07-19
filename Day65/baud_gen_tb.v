module tb;
  reg clk,reset;
  reg [1:0]baud_rate;
  wire baud_clk;
  
  
  baud_gen dut(.clk(clk),.reset(reset),.baud_rate(baud_rate),.baud_clk(baud_clk));
  
  //clock genaration
initial
  begin
    clk=1'b0;
    forever #5 clk=~clk;
    
    
  end
 initial
   begin
     $monitor("baud_rate = %0b baud_clk = %0b ",baud_rate,baud_clk);
     reset=1'b0;
     #10;
     reset=1'b1;
     #10;
       baud_rate = 2'b00;
    #100000;            
    baud_rate = 2'b01;
    #100000;

    baud_rate = 2'b10;
    #100000;

    baud_rate = 2'b11;
    #100000;

    
     $finish();
   end
endmodule
