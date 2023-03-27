module test_wave ( 
    input clk,
    input resetn,
    output reg signed [15 : 0] waveform_tdata,
    output reg waveform_tvalid
);

    always @(posedge clk) begin
        if(resetn == 0) begin
            waveform_tdata <= 0;
            waveform_tvalid <= 0;
        end else begin
            waveform_tdata <= waveform_tdata + 1;
            waveform_tvalid <= 1;
        end
    end
    
endmodule
