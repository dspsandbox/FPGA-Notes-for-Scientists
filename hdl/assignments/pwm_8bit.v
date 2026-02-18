module pwm_8bit (
    input clk,
    input resetn,
    input [7 : 0] duty_cycle,
    output pwm_o
);

    reg [7 : 0] counter_reg;

    always @(posedge clk) begin
        if(resetn == 0) begin
            counter_reg <= 0;
        end else begin
            counter_reg <= counter_reg + 1;
        end
    end

    assign pwm_o = (counter_reg < duty_cycle) ? 1 : 0;
    
endmodule
