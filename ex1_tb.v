`timescale 1ns/1ps

module ex1_tb;
    reg a;
    reg b;
    reg c;
    reg d;
    reg [1:0] sel;

    wire y;

    mux dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 0; b = 1; c = 1; d = 1; sel = 2'b00; #1;
        $display("a=%b, b=%b, c=%b, d=%b, sel=%b, y=%b", a, b, c, d, sel, y);

        a = 0; b = 1; c = 1; d = 1; sel = 2'b11; #1;
        $display("a=%b, b=%b, c=%b, d=%b, sel=%b, y=%b", a, b, c, d, sel, y);
    end
endmodule