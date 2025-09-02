module digital_clock(
input clk,reset,
  output [5:0]ss,
  output [5:0]mm,
  output[4:0]hh);
  reg [5:0]sec=0;
  reg [5:0]min=0;
  reg [4:0]hours=0;
  
  always@(posedge clk or posedge reset)
    begin
      if(reset)
        begin
          sec<=0;
          min<=0;
          hours<=0;
          
        end
      else
        begin
          if(sec=='d59)
            begin
              sec<=0;
              if(min=='d59)
                begin
                  min<=0;
                  if(hours=='d23)
                    hours<=0;
                  else
                    hours<=hours+1;
                end
              else
                min<=min+1;
              
            end
          else
            sec<=sec+1;
        end
    end
  assign ss=sec;
  assign mm=min;
  assign hh=hours;
  
endmodule 
