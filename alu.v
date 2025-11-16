module alu(
    input wire[7:0] a,
    input wire[7:0] b,
    input wire[3:0] opcode,
    output reg[7:0] result,
    output reg zero,
    output reg carry
);
    always @(*) begin
        carry = 1'b0;

        case (opcode)
            4'b0000: {carry, result} = a + b;
            4'b0001: {carry, result} = a - b;
            4'b0010: result = a & b;
            4'b0011: result = a | b;
            4'b0100: result = a ^ b;
            4'b0101: result = a << 1;
            4'b0110: result = a >> 1;
            4'b0111: result = a == b;
        endcase
        
        zero = (result == 0);
    end
endmodule