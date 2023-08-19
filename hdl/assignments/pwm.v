module pwm (
    input clk,
    input resetn,
    input [31 : 0] incr_i,
    input [31 : 0] duty_cycle_i,
    output pwm_o
);

    reg [31 : 0] counter_reg;

    always @(posedge clk) begin
        if(resetn == 0) begin
            counter_reg <= 0;
        end else begin
            counter_reg <= counter_reg + incr_i;
        end
    end

    assign pwm_o = (counter_reg < duty_cycle_i) ? 1 : 0;
    
endmodule
