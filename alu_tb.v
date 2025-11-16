`timescale 1ns/1ps

module alu_tb;
    reg[7:0]  a;
    reg[7:0]  b;
    reg[3:0]  opcode;
    wire[7:0] result;
    wire zero;
    wire carry;

    alu dut(
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .zero(zero),
        .carry(carry)
    );

    initial begin
        a = 8'b00000010;
        b = 8'b00000001;
        opcode = 4'b0000;
        #10;
        $display("a=%b b=%b -> result=%b", a, b, result);

        $finish;
    end
endmodule;