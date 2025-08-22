module day10 (
  input     wire          clk,
  input     wire          reset,
  input     wire          load_i,
  input     wire[3:0]     load_val_i,

  output    wire[3:0]     count_o
);
  reg [3:0]counter;
  always@(posedge clk)
    begin
      if(reset)
        counter<=4'b0000;
      else if(load_i)
        counter<=load_val_i;
      else 
        counter<=counter+1;
      
    end
  assign count_o=counter;
endmodule
