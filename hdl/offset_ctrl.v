module offset_ctrl #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input resetn,
    input signed [DATA_WIDTH - 1 : 0] offset,
    input signed [DATA_WIDTH - 1 : 0] data_i_tdata,
    input data_i_tvalid,
    output signed reg [DATA_WIDTH - 1 : 0] data_o_tdata,
    output reg data_o_tvalid
);

    always @(posedge clk) begin
        if(resetn == 0) begin
            data_o_tdata <= 0;
            data_o_tvalid <= 0;
        end else begin
            data_o_tdata <= data_i_tdata + offset;
            data_o_tvalid <= data_i_tvalid;
        end
    end

endmodule