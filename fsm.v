module fsm(
    input wire clk,
    input wire rst,
    output reg red,
    output reg yellow,
    output reg green
);
    always @(posedge clk) begin
        if (rst) begin
            red    <= 1'b1;
            yellow <= 1'b0;
            green  <= 1'b0;
        end
        else begin
            if (red == 1'b1) begin
                red    <= 1'b0;
                yellow <= 1'b1;
                green  <= 1'b0;
            end
            else
                if (yellow == 1'b1) begin
                    red    <= 1'b0;
                    yellow <= 1'b0;
                    green  <= 1'b1;
                end
                else begin
                    red    <= 1'b1;
                    yellow <= 1'b0;
                    green  <= 1'b0;
                end
        end 
    end
endmodule