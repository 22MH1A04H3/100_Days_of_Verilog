module traffic_light(
input clk,rst,
output reg ns_g,ns_r,ns_y,ew_g,ew_y,ew_r);
  
  //internal states
  parameter nsgewr=3'b000;
  parameter nsyewr=3'b001;
  parameter nsrewr=3'b010;
  parameter nsrewg=3'b011;
  parameter nsrewy=3'b100;
  parameter nsrewr_1=3'b101;
  
  
  //internal registers
  reg [7:0]counter;
  reg [2:0]current_state,next_state;
  
  //counter_delay 
  parameter green=8'd15;
   parameter yellow=8'd3;
   parameter red=8'd3;
  
  always@(posedge clk)
    begin
      if(rst)
        begin
          current_state<=nsgewr;
          counter<=8'd0;
          
        end
      else
         begin
          if (counter != 0)
        counter <= counter - 1;
          
           else
            //counter logic
             begin
               current_state<=next_state;
               case(current_state)
             nsgewr:counter<=green;
             nsyewr:counter<=yellow;
             nsrewr:counter<=red;
             nsrewg:counter<=green;
             nsrewy:counter<=yellow;
             nsrewr_1:counter<=red;    
                 default:counter<=green;
               endcase
             end
           
         end
    end
 
      //next_state
      always@(*)
        begin
          case(current_state)
            nsgewr:next_state<=nsyewr;
             nsyewr:next_state<=nsrewr;
             nsrewr:next_state<=nsrewg;
             nsrewg:next_state<=nsrewy;
             nsrewy:next_state<=nsrewr_1;
             nsrewr_1:next_state<=nsgewr;    
                 default:next_state<=nsgewr; 
          endcase
        end
  always@(*)
    begin
     
               ns_r<=0;
               ns_y<=0;
               ew_g<=0;
               ew_y<=0;
               ew_r<=0;
       ns_g<=0;
      case(current_state)
           nsgewr:
             begin
               ns_g<=1;
               
               ew_r<=1;
              
             end
             nsyewr:
               begin
             
               ns_y<=1;
              
               ew_r<=1;
              
             end
             nsrewr:
               begin
              
               ns_r<=1;
             
               ew_r<=1;
             end
             nsrewg:
               begin
             
               ns_r<=1;
              
               ew_g<=1;
           
             end
             nsrewy:
               begin
              
               ns_r<=1;
            
               ew_y<=1;
              
             end
             nsrewr_1: 
               begin
              
               ns_r<=1;
              
               ew_r<=1;
               end
      endcase
    end
endmodule

