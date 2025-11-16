module counter(
    input wire clk,
    input wire rst,
    output reg [3:0] counter
);
    always @(posedge clk) begin
        if (rst)
            counter <= 4'b0000;
        else
            counter <= counter + 4'b0001;
    end
endmodule