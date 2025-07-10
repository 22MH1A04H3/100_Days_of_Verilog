module tb;
  reg clk,reset;
  wire [3:0]state;
  wire [1:0]out;
  
  //instantiation
  fsm dut(.clk(clk),.reset(reset),.state(state),.out(out));
  
  
  //clock genaration
initial
  begin
    clk=0;
    forever #5 clk = ~clk;
  end
  initial
    begin
      $monitor("reset=%0b state=%0b out=%0b at %0t",reset,state,out,$time);
      reset=1'b1;
      #30;
      reset=1'b0;
      
      #100;
      $finish();
    end
  
endmodule
