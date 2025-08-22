module day10_tb ();

 reg  clk;
  reg reset;
  reg load_i;
  reg [3:0] load_val_i;
  wire [3:0]count_o;
  day10 dut(.clk(clk),.reset(reset),.load_i(load_i),.load_val_i(load_val_i),.count_o(count_o));
  initial
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      reset=1'b1;
      #10;
      reset=1'b0;
      #10;
      load_i=1'b1;load_val_i=4'b1010;
      #10;
      load_i=1'b0;
      #100;
      $finish();
      
    end
endmodule









