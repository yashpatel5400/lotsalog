`timescale 1ns/1ps

module ex1_tb;
    reg clk;
    reg rst;
    
    wire red;
    wire yellow;
    wire green;

    fsm dut(
        .clk(clk),
        .rst(rst),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #12;
        rst = 0; 

        #4;
        $display("clk=%b r=%b y=%b g=%b", clk, red, yellow, green);

        #102;
        $display("clk=%b r=%b y=%b g=%b", clk, red, yellow, green);

        #12;
        $display("clk=%b r=%b y=%b g=%b", clk, red, yellow, green);

        $finish;
    end
endmodule