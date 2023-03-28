module stream_dec #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input reset,
    input [31 : 0] dec,
    input [DATA_WIDTH - 1 : 0] stream_i_tdata,
    input stream_i_tvalid,
    output stream_i_tready,
    output [DATA_WIDTH - 1 : 0] stream_o_tdata,
    output stream_o_tvalid,
    input stream_o_tready
);
   
    reg [31 : 0] counter;

    always @(posedge clk) begin
        if(resetn == 0) begin
            counter <= 1;
        end else begin
            if(counter < dec) begin
                counter <= counter + 1;
            end else begin
                counter <= 1;
            end
        end
    end

    assign stream_o_tdata = stream_i_tdata;

    assign stream_o_tvalid <= (counter == 1) ? stream_i_tvalid : 0;
                    
    assign stream_i_tready <= (counter == 1) ? stream_o_tready : 0;

endmodule;

