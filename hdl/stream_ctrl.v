module stream_ctrl #(
    parameter DATA_WIDTH = 16
)(
    input clk,
    input resetn,
    input [31 : 0] samples,
    input trig, 
    input [DATA_WIDTH - 1 : 0] stream_i_tdata,
    input stream_i_tvalid,
    output stream_i_tready,
    output [DATA_WIDTH - 1 : 0] stream_o_tdata,
    output stream_o_tvalid,
    output stream_o_tlast,
    input stream_o_tready
);
    
    localparam [0:0] IDLE=0, RUNNING=1;
    reg state;
    reg [31 : 0] counter;
    reg trig_old;



    always @(posedge clk) begin
        if (resetn == 0) begin
            state <= IDLE;
            counter <= 0;
            trig_old <= 0;
        end else begin
            case(state)
                IDLE: begin
                    counter <= 0;
                    if((trig == 1) && (trig_old == 0)) begin
                        state <= RUNNING;
                    end
                end

                RUNNING: begin 
                    if((stream_i_tvalid == 1) && (stream_o_tready == 1)) begin
                        counter <= counter + 1;
                        if(counter == (samples - 1)) begin
                            state <= IDLE;
                        end
                    end
                end
            endcase

            trig_old <= trig;
        end
    end

    assign stream_o_tdata = stream_i_tdata;

    assign stream_o_tvalid = (state == RUNNING) ? stream_i_tvalid : 0;
                   
    assign stream_i_tready = (state == RUNNING) ? stream_o_tready : 0;

    assign stream_o_tlast = ((state == RUNNING) && (counter == (samples - 1))) ? 1 : 0;

endmodule


