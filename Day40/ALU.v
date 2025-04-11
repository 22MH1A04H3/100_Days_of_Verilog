module alu(
input [3:0] a, b,
input [2:0] s,
output reg [3:0] out,
output reg cout
);
reg [4:0] temp;

always @(*) begin
    cout = 0;
    case(s)
        3'b000: begin
            temp = a + b;
            out = temp[3:0];
            if (temp > 4'b1111)
                cout = 1;
        end
        3'b001: out = a - b;
        3'b010: out = a & b;
        3'b011: out = a ^ b;
        3'b100: out = a | b;
        3'b101: out = a << 2;
        3'b110: out = b >> 1;
        3'b111: out = a << 1;
        default: out = 4'bxxxx;
    endcase
end
endmodule
