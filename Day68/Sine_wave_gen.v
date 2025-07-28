// Code your design here
module sine_wave_gen(
input logic clk,reset,
  output logic signed[15:0]sine);
  
  //lookuptable
  reg [15:0]lut[255:0];
  
  //assign sine values into look up table
  initial
    begin
      integer i;
      for(i=0;i<256;i++)
        begin
          lut[i]=$rtoi(32767*$sin(2.0*3.14*i/256.0));
        end
    end
  
  //internal storage declaration
  logic [15:0]index;
  logic [7:0]phase_acc;
  logic [7:0]phase_inc=(440/8000)*256;
  
  //sine wave generator
  always@(posedge clk)
    begin
      if(reset)
        begin
          index<=0;
          phase_acc<=0;
          
        end
      else if(phase_acc<256)
        begin
          phase_acc<=0;
          index<=index+1;
          
        end
      else
        begin
          phase_acc<=phase_acc+phase_inc;
        end
      sine<=lut[index[7:0]];
    end
  
endmodule
