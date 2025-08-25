//Assending_order
module sort(
  input [31:0]a,b,c,d,e,f,
  output reg [31:0]m,n,o,p,q,r);
 
  //internal mem
  reg [31:0]mem[5:0];
  reg [31:0]t;
  always@(*)
    begin
      mem[0]=a;
      mem[1]=b;
      mem[2]=c;
      mem[3]=d;
      mem[4]=e;
      mem[5]=f;
      for(int i=0;i<6;i++)
        begin
          for(int j=0;j<5;j++)
            begin
              if(mem[j]>mem[j+1])
                begin
                 // reg [31:0]t;
                  t = mem[j];
                  mem[j]=mem[j+1];
                  mem[j+1]=t;
                  
                end
              
            end
        end
      
      m=mem[0];
      n=mem[1];
      o=mem[2];
      p=mem[3];
      q=mem[4];
      r=mem[5];
      
    end
  
endmodule
