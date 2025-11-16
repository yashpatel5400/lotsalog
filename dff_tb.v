`timescale 1ns/1ps

module dff_tb;
    reg clk;
    reg d;
    wire q;

    dff dut(
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // clock wave switches every 5 ns
    end

    initial begin
        d = 0; #3;
        $display("t=%t clk=%b d=%b q=%b", $time, clk, d, q);

        d = 1; #10;
        $display("t=%t clk=%b d=%b q=%b", $time, clk, d, q);

        d = 0; #10;
        $display("t=%t clk=%b d=%b q=%b", $time, clk, d, q);

        d = 1; #10;
        $display("t=%t clk=%b d=%b q=%b", $time, clk, d, q);

        $finish;
    end
endmodule