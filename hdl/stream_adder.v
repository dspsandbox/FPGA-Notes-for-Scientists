module stream_adder #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input resetn,
    input signed [DATA_WIDTH - 1 : 0] data_0_i_tdata,
    input data_0_i_tvalid,
    input signed [DATA_WIDTH - 1 : 0] data_1_i_tdata,
    input data_1_i_tvalid,
    output reg signed [DATA_WIDTH - 1 : 0] data_o_tdata,
    output reg data_o_tvalid
);
    
    always @(posedge clk) begin
        if(resetn == 0) begin
            data_o_tdata <= 0;
            data_o_tvalid <= 0;
        end else begin
            data_o_tdata <= data_0_i_tdata + data_1_i_tdata;
            data_o_tvalid <= data_0_i_tvalid & data_1_i_tvalid;
        end
    end

endmodule