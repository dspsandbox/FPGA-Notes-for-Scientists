module sdm_8bit(
input clk, 
input resetn,
input [7 : 0] duty_cycle,
output sdm_o);


reg [8:0] accumulator;
always @(posedge clk) begin
    if (resetn == 0) begin
        accumulator <= 0;
    end else begin    
        accumulator <= accumulator[7:0] + duty_cycle;
    end 
end 
assign sdm_o = accumulator[8];
endmodule
