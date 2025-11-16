`timescale 1ns/1ps

module counter_tb;
    reg clk;
    reg rst;
    wire [3:0] counter;

    counter dut(
        .clk(clk),
        .rst(rst),
        .counter(counter)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #12;
        rst = 0;

        $display("counter=%b", counter); // 0

        #16;
        $display("counter=%b", counter); // 2

        #20;
        $display("counter=%b", counter); // 6
        
        $finish;
    end
endmodule