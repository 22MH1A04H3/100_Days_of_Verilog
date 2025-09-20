//car_parking_system
module car(
input clk,rst,
input sence_enter,sence_exit,
  input [1:0]password1,password2,
  output reg green,red,
  
  output reg [3:0]space_av,space_ut,cars_count);
  
  //internal storage elements
  reg [2:0]current_state,next_state;
  reg [3:0]wait_count;
  reg [3:0]overal_space=4'b1111;
  
  
  //state declaration
  parameter idle=3'b000,
            waiting_state=3'b001,
            password_cr=3'b010,
            password_wr=3'b011,
            stop=3'b100;
  
  
  //reset_state
  always@(posedge clk)
  begin
    if(rst)
      current_state<=idle;
    else
      current_state<=next_state;
  end
  
  
  //parking_management
  always@(posedge clk)
    begin
      if(rst)
        begin
          space_av<=overal_space;
          space_ut<='b0;
         cars_count<='b0;
        end
      else
        begin
          if((sence_enter==1'b1)&&(space_av>0))
            begin
              space_av<=space_av-1;
              space_ut<=space_ut+1;
              cars_count<=cars_count+1;
            end
          else if((sence_exit==1'b1)&&(space_av>0))
            begin
              space_av<=space_av+1;
              space_ut<=space_ut-1;
              cars_count<=cars_count-1;
            end
          else
            begin
              space_av<=space_av;
              space_ut<=space_ut;
              cars_count<=cars_count;
            end
        end
    end
  //waiting_state_logic
  always@(posedge clk)
    begin
      if(rst) wait_count<='d0;
      else
        begin
          if(current_state==waiting_state)//waiting for 3 unit of time
            wait_count<=wait_count+1'b1;
          else
            wait_count<='d0;
        end
    end
  //next_state_transition
  always@(*)
    begin
      case(current_state)
       idle:begin
         if((sence_enter==1'b1)&&(space_av>0))
           next_state<=waiting_state;
         else
           next_state<=idle;
       end
        waiting_state:begin
          if(wait_count=='d3)next_state<=waiting_state;
          else
            begin
              if((password1==2'b01)&&(password2==2'b01))
                next_state<=password_cr;
              else
                next_state<=password_wr;
            end
        end
        password_wr:
          begin
            if((password1==2'b01)&&(password2==2'b01))
              next_state<=password_cr;
            else
              next_state<=password_wr;
          end
        
        password_cr:
          begin
            if((sence_enter==1'b1)&&(sence_exit==1'b1))
              next_state<=stop;
            else if(sence_exit==1'b1)
              next_state<=idle;
            else
              next_state<=password_cr;
          end
        
        
        
        stop:begin
          if((password1==2'b01)&&(password2==2'b01))
            next_state<=password_cr;
          else
            next_state<=stop;
        end
        default:next_state<=idle;
      endcase
    end
          
          //output_logic
          always@(posedge clk)
            begin
              case(current_state)
                idle:
                  begin
                    green<=0;
                    red<=0;
                    
                  end
                waiting_state:
                  begin
                    green<=~green;//green light blinking
                    red<=0;
                    
                  end
                password_cr:
                  begin
                    green<=1;
                    red<=0;
                    
                  end
                password_wr:
                  begin
                    green<=0;
                    red<=1;
                   
                  end
                stop:
                  begin
                    green<=0;
                    red<=~red;
                   
                  end
              endcase
            end
endmodule
