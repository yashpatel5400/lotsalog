`timescale 1ns/1ps

module and_tb;
    reg a;
    reg b;

    wire y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("and_tb.vcd");
        $dumpvars(0, and_tb);

        a = 0; b = 0; #1;
        $display("a=%b b=%b -> y=%b", a, b, y);

        a = 0; b = 1; #1;
        $display("a=%b b=%b -> y=%b", a, b, y);

        a = 1; b = 0; #1;
        $display("a=%b b=%b -> y=%b", a, b, y);

        a = 1; b = 1; #1;
        $display("a=%b b=%b -> y=%b", a, b, y);

        $finish;
    end
endmodule