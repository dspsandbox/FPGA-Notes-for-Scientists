module amplitude_ctrl #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input resetn,
    input signed [DATA_WIDTH - 1 : 0] amplitude,
    input signed [DATA_WIDTH - 1 : 0] data_i_tdata,
    input data_i_tvalid,
    output signed [DATA_WIDTH - 1 : 0] data_o_tdata,
    output reg data_o_tvalid
);
    reg signed [2 * DATA_WIDTH - 1 : 0] mult_reg;

    always @(posedge clk) begin
        if(resetn == 0) begin
            mult_reg <= 0;
            data_o_tvalid <= 0;
        end else begin
            mult_reg <= data_i_tdata * amplitude;
            data_o_tvalid <= data_i_tvalid;
        end
    end

    assign data_o_tdata = mult_reg[2 * DATA_WIDTH - 2 : DATA_WIDTH - 1];

endmodule