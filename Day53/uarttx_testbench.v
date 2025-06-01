module uarttx_tb;
  reg clk,rst,newd;
  reg [7:0]tx_data;
  wire tx_done;
  wire tx;
  
  
  parameter clk_freq=1000000;
  parameter baud_rate=9600;
  
  uarttx #(.clk_freq(clk_freq),.baud_rate(baud_rate))dut(.clk(clk),.rst(rst),.newd(newd),.tx_data(tx_data),.tx_done(tx_done),.tx(tx));
  
  initial
    begin
      clk=0;
      forever #5 clk = ~clk;
    end
  initial
    begin
      $monitor("the tx_data= %0b , newd= %0b ,tx_done=%0b,tx=%0b",tx_data,newd,tx_done,tx);
      rst=1'b1;
      newd=1'b0;
      tx_data=8'b00000000;
      
      #10;
      rst=1'b0;
      #30;
      tx_data=8'b10001110;
      newd=1'b1;
      #20;
      newd=1'b0;
      
      wait(tx_done==1);
      
      #80;
      
      $finish();
      
    end
endmodule
