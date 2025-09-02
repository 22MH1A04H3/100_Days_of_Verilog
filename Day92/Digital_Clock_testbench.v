module tb;
  reg clk,reset;
  wire [5:0]ss;
  wire [5:0]mm;
  wire [4:0]hh;
  //dut instantiation
  digital_clock dut(.clk(clk),.reset(reset),.ss(ss),.mm(mm),.hh(hh));
  initial
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      $monitor("%0d : %0d : %0d",hh,mm,ss);
      reset=1'b1;
      #10;
      reset=1'b0;
      
    end
endmodule
