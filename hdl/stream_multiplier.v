module stream_multiplier #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input resetn,
    input signed [DATA_WIDTH - 1 : 0] data_0_i_tdata,
    input data_0_i_tvalid,
    input signed [DATA_WIDTH - 1 : 0] data_1_i_tdata,
    input data_1_i_tvalid,
    output signed [DATA_WIDTH - 1 : 0] data_o_tdata,
    output reg data_o_tvalid
);

    reg signed [2 * DATA_WIDTH - 1 : 0] mult_reg;

    always @(posedge clk) begin
        if(resetn == 0) begin
            mult_reg <= 0;
            data_o_tvalid <= 0;
        end else begin
            mult_reg <= data_0_i_tdata * data_1_i_tdata;
            data_o_tvalid <= data_0_i_tvalid & data_1_i_tvalid;
        end
    end

    assign data_o_tdata = mult_reg[2 * DATA_WIDTH - 2 : DATA_WIDTH - 1];

endmodule