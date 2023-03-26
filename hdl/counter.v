module counter (
    input clk,
    input resetn,
    input [31 : 0] incr_i,
    output reg [31 : 0] counter_o
);

    always @(posedge clk) begin
        if(resetn == 0) begin
            counter_o <= 0;
        end else begin
            counter_o <= counter_o + incr_i;
        end
        
    end

endmodule