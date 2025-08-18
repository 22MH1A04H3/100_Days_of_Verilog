module top_module (
    input clk,
    input shift_ena,
    input count_ena,
    input data,
    output [3:0] q);
    
    reg [3:0]a;
    initial a={3'b000,data};
    always@(posedge clk)
        begin
            if(shift_ena)
                a<={a[2:0],data};//lest shifting
            else if(count_ena)
                a<=a-1;
            
        end
assign q=a;
    
endmodule
