//4-bit Barrel shift register
module shift(
  input [3:0]din,
  input [1:0]shift_amnt,
input direction,shift_type,
  output [3:0]dout);
  reg [3:0]q;
  
  always@(*)
    begin
      if(direction)//left
        begin
          case(shift_amnt)
            2'b00:q=din;
            2'b01:
              begin
                if(shift_type)//logical shift
                  q={din[2:0],1'b0};
                else           //rotate shift
                  q={din[2:0],din[3]};
              end
            2'b10:
              begin
                if(shift_type)//logical shift
                  q={din[1:0],2'b00};
                else            //rotate shift
                  q={din[1:0],din[3:2]};
              end
            2'b11:
              begin
                if(shift_type)//logical shift
                  q={din[0],3'b000};
                else//rotate shift
                  q={din[0],din[3:1]};
              end
          endcase
        end
      else//right
        begin
          case(shift_amnt)
            2'b00:q=din;
            2'b01:
              begin
                if(shift_type)//logical shift
                  q={1'b0,din[3:1]};
                else//rotate shift
                  q={din[0],din[3:1]};
              end
            2'b10:
              begin
                if(shift_type)//logical shift
                  q={2'b00,din[3:2]};
                else//rotate shift
                  q={din[1:0],din[3:2]};
              end
            2'b11:
              begin
                if(shift_type)//logical shift
                  q={3'b000,din[3]};
                else//rotate shift
                  q={din[2:0],din[3]};
              end
          endcase
        end
    end
  assign dout = q;
  
endmodule
