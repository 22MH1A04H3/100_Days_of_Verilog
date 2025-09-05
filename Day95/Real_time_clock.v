
module top(
  input clk,rst,clr,en,
  output reg [6:0]HRL_M,HRL_L,MIN_M,MIN_L,SEC_L,SEC_M);
  
  wire [3:0]a,b,c,d,e,f;
  
  
  //counter to bcd interfacing 
  
  bcdto7 uuta(.in(a),.out(SEC_L));
  bcdto7 uutb(.in(b),.out(SEC_M));
  bcdto7 uutc(.in(c),.out(MIN_L));
  bcdto7 uutd(.in(d),.out(MIN_M));
  bcdto7 uute(.in(e),.out(HRL_M));
  bcdto7 uutf(.in(f),.out(HRL_L));
  
  
  
  
  
  
  
 //internal wire 
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
  
  
  //and logic among counters
  
  assign w2 = w6 && w1;
  assign w3 = w2 && w7;
  assign w4 = w8 && w3;
  assign w5 = w4 && w9;
  
  //counter to counter interfacing
  sec_l uut1(.clk(clk),.rst(rst),.clr(clr),.en(en),.sec_l(a),.t1(w1));
  sec_m uut2(.clk(clk),.rst(rst),.clr(clr),.en(en),.sec_m(b),.t2(w6),.i1(w1));
  
  min_l uut3(.clk(clk),.rst(rst),.clr(clr),.en(en),.min_l(c),.i2(w2),.t3(w7));
  min_m uut4(.clk(clk),.rst(rst),.clr(clr),.en(en),.min_m(d),.i3(w3),.t4(w8));
  
  h_l uut5(.clk(clk),.rst(rst),.clr(clr),.en(en),.h_l(f),.i4(w4),.t5(w9));
  h_m uut6(.clk(clk),.rst(rst),.clr(clr),.en(en),.h_m(e),.i5(w5));
  
  
  
endmodule
  
//seconds lower nibbel
module sec_l(
input clk,rst,clr,en,
  output  reg [3:0]sec_l,
output  t1);
  //assign t1 = en && (sec_l =='d9);
  assign t1 = (~en) && (sec_l =='d9) ||en && (sec_l =='d9);
  
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         sec_l<=4'b0000;
      
         
       end
     else if(clr)
       begin
         sec_l<=4'b0000;
       
       end
     else
       begin
         if(en)//24 hours
           begin
             if(sec_l==4'd9)
               begin
               sec_l<=4'b0000;
            
               end
            
             
             else
               begin
            
               sec_l<=sec_l+1;
               end
           end
         else//12 hours
           begin
             if(sec_l==4'd9)
               begin
               sec_l<=4'b0000;
   
                 
               end
             else
               begin
              
               sec_l<=sec_l+1;
               end
             
           end
       end
   end
  
endmodule

//seconds upper nibbel
module sec_m(
input clk,clr,rst,en,i1,
  output reg[3:0]sec_m,
output  t2);
 // assign t2 = en&&(sec_m==4'd5);
  assign t2 = (~en)&&(sec_m==4'd5)||en&&(sec_m==4'd5);
  
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         sec_m<=4'b0000;
        
         
       end
     else if(clr)
       begin
         sec_m<=4'b0000;
         
       end
     else
       begin
         if(en)//24 hours
           begin
             if(sec_m==4'd5 && i1)
               begin
               sec_m<=4'b0000;
              
                 
               end
             else if(i1)
               begin
                 
                 sec_m<=sec_m+1;
               end
             else
               sec_m<=sec_m;
           end
         else//12 hours
           begin
             if(sec_m==4'd5 && i1)
               begin
               sec_m<=4'b0000;
              
                 
               end
             else if(i1)
               begin
                 
                 sec_m<=sec_m+1;
               end
             else
               sec_m<=sec_m;
           end
       end
   end
  
endmodule


//minites lower nibble
module min_l(
input clk,rst,clr,en,i2,
  output reg [3:0]min_l,
output t3);
  
  //assign t3 = en&&(min_l==4'd9);
  assign t3 = (~en)&&(min_l==4'd9) || en&&(min_l==4'd9);
  
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         min_l<=4'b0000;
      
         
       end
     else if(clr)
       begin
         min_l<=4'b0000;
       
       end
     else
       begin
         if(en)//24 hours
           begin
             if(min_l==4'd9 &&i2)
               begin
               min_l<=4'b0000;
            
               end
             else if(i2)
               begin
                 
                 min_l<=min_l+1;
               end
            
             
             else
               begin
            
               min_l<=min_l;
               end
           end
         else//12 hours
           begin
             if(min_l==4'd9 && i2)
               begin
               min_l<=4'b0000;
   
                 
               end
             else if(i2)
               begin
                 
                 min_l<=min_l+1;
               end
            
             else
               begin
              
               min_l<=min_l;
               end
             
           end
       end
   end

endmodule




//minuties higer nibble
module min_m(
input clk,clr,rst,en,i3,
  output reg[3:0]min_m,
output  t4);
  
  
  assign t4 = en&&(min_m=='d5)&&i3;
  
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         min_m<=4'b0000;
        
         
       end
     else if(clr)
       begin
         min_m<=4'b0000;
         
       end
     else
       begin
         if(en)//24 hours
           begin
             if(min_m=='d5)
               begin
               min_m<=4'b0000;
              
                 
               end
             else if(i3)
               begin
                 
                 min_m<=min_m+1;
               end
             else
               min_m<=min_m;
           end
         else//12 hours
           begin
             if(min_m=='d5)
               begin
               min_m<=4'b0000;
              
                 
               end
             else if(i3)
               begin
                 
                 min_m<=min_m+1;
               end
             else
               min_m<=min_m;
           end
       end
   end
  
endmodule


//hours most significant nibble


module h_l(
input clk,clr,rst,en,i4,
  output reg[3:0]h_l,
output  t5);
  
  
  assign t5 = en&&(h_l=='d3)&&i4 ||(~en)&&(h_l=='d2)&&i4;
  
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         h_l<=4'b0000;
        
         
       end
     else if(clr)
       begin
         h_l<=4'b0000;
         
       end
     else
       begin
         if(en)//24 hours
           begin
             if(h_l=='d3)
               begin
               h_l<=4'b0000;
              
                 
               end
             else if(i4)
               begin
                 
                 h_l<=h_l+1;
               end
             else
               h_l<=h_l;
           end
         else//12 hours
           begin
             if(h_l=='d1)
               begin
               h_l<=4'b0000;
              
                 
               end
             else if(i4)
               begin
                 
                 h_l<=h_l+1;
               end
             else
               h_l<=h_l;
           end
       end
   end
  
endmodule


//hours upper nibble


module h_m(
input clk,clr,rst,en,i5,
  output reg[3:0]h_m);
  
  
 
  always@(posedge clk or posedge rst or posedge clr)
   begin
     if(rst)
       begin
         h_m<=4'b0000;
        
         
       end
     else if(clr)
       begin
         h_m<=4'b0000;
         
       end
     else
       begin
         if(en)//24 hours
           begin
             if(h_m==4'd3)
               begin
               h_m<=4'b0000;
              
                 
               end
             else if(i5)
               begin
                 
                 h_m<=h_m+1;
               end
             else
               h_m<=h_m;
           end
         else//12 hours
           begin
             if(h_m==4'd1)
               begin
               h_m<=4'b0000;
              
                 
               end
             else if(i5)
               begin
                 
                h_m<=h_m+1;
               end
             else
               h_m<=h_m;
           end
       end
   end
  
endmodule


module bcdto7(
  input [3:0]in,
  output reg[6:0]out);
  always@(*)
    begin
      case(in)
        4'd0:out=7'b1111110;
        4'd1:out=7'b0110000;
        4'd2:out=7'b1101101;
        4'd3:out=7'b1111001;
        4'd4:out=7'b0110011;
        4'd5:out=7'b1011011;
        4'd6:out=7'b1011111;
        4'd7:out=7'b1110000;
        4'd8:out=7'b1111111;
        4'd9:out=7'b1111011;
        default:out=7'd0;
        
        
      endcase
    end
endmodule
