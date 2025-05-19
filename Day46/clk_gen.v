//To generate clock signal with differnet freuquancies !

module clk_gen();
  reg clk_1mhz=0,clk_8mhz=0,clk_16mhz=0,clk_80mhz=0,clk_640mhz=0;
  parameter T1MHZ=1000,T8MHZ=125,T16MHZ=62.5,T80MHZ=12500,T640MHZ=1562.5;
  
  //different clock genarations
  
  always #(T1MHZ/2) clk_1mhz=~clk_1mhz;
  always #(T8MHZ/2) clk_8mhz=~clk_8mhz;
  always #(T16MHZ/2) clk_16mhz=~clk_16mhz;
  always #(T80MHZ/2) clk_80mhz=~clk_80mhz;
  always #(T640MHZ/2) clk_640mhz=~clk_640mhz;
  initial
    begin
      
      #T80MHZ;
      $finish();
    end
endmodule
  
  
