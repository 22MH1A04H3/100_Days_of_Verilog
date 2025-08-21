 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    reg    rising_edge_o,
  output    reg   falling_edge_o
);
reg a=0;
  reg b=1;
  
  // Write your logic here...
  always@(posedge clk)
    begin
      if(reset)
        rising_edge_o<=0;
      else if(a&a_i)
        rising_edge_o<=1;
      
      
    end
  
  
  always@(negedge clk)
    begin
      if(reset)
       falling_edge_o<=0;
      else if(b&(~a_i))
        falling_edge_o<=1;
      
        
      
    end

endmodule
