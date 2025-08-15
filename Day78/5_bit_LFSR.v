module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
); 
    reg [4:0]t;
    always@(posedge clk)
        begin
            if(reset)
                t<=5'b00001;
            else
                begin
                    t[0]<=t[1];
                    t[1]<=t[2];
                    t[2]<=t[0]^t[3];
                    t[3]<=t[4];
                    t[4]<=1'b0^t[0];
                end
                
        end
    assign q = t;
endmodule

