module dds_wrapper( 
    input clk,
    input [31 : 0] phase_off,
    input [31 : 0] phase_inc,
    input phase_clr,
    output signed [15 : 0] sin_tdata,
    output sin_tvalid,
    output signed [15 : 0] cos_tdata,
    output cos_tvalid
);


    wire [71 : 0] dds_i;
    wire [31 : 0] dds_o;

    dds_compiler_0 dds_compiler_0_instance (
        .aclk(clk),
        .s_axis_phase_tvalid(1),
        .s_axis_phase_tdata(dds_i),
        .m_axis_data_tdata(dds_o)
    );
          
    assign dds_i[31 : 0] = phase_inc;
    assign dds_i[63 : 32] = phase_off;
    assign dds_i[64] = phase_clr;
    assign dds_i[71 : 65] = 0;
    
    assign cos_tdata = dds_o[15 : 0];
    assign cos_tvalid = 1;
    assign sin_tdata = dds_o[31 : 16];
    assign sin_tvalid = 1;
endmodule
