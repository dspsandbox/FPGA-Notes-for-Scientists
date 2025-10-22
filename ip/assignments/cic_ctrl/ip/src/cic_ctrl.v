module cic_ctrl #(
    parameter CONFIG_WIDTH = 16,
    localparam ADDR_WIDTH = 7,
    localparam DATA_WIDTH = 32
)(
    input clk,
    input resetn,

    input [ADDR_WIDTH - 1 : 0] s_axi_awaddr,
    input [2 : 0] s_axi_awprot,
    input s_axi_awvalid,
    output s_axi_awready,
    input [DATA_WIDTH - 1 : 0] s_axi_wdata,
    input [3 : 0] s_axi_wstrb,
    input s_axi_wvalid,
    output  s_axi_wready,
    output [1 : 0] s_axi_bresp,
    output s_axi_bvalid,
    input s_axi_bready,
    input [ADDR_WIDTH - 1 : 0] s_axi_araddr,
    input [2 : 0] s_axi_arprot,
    input [0 : 0] s_axi_arvalid,
    output s_axi_arready,
    output [DATA_WIDTH - 1 : 0] s_axi_rdata,
    output [1 : 0] s_axi_rresp,
    output s_axi_rvalid,
    input s_axi_rready,

    output [CONFIG_WIDTH - 1 : 0] m_axis_config_tdata,
    output reg m_axis_config_tvalid
);
    
    wire regOut00;
    reg regOut00_old;


    reg_bank_0 reg_bank_instance (
        .s00_axi_aclk(clk),        // input wire s00_axi_aclk
        .s00_axi_aresetn(resetn),  // input wire s00_axi_aresetn
        .s00_axi_awaddr(s_axi_awaddr),    // input wire [6 : 0] s00_axi_awaddr
        .s00_axi_awprot(s_axi_awprot),    // input wire [2 : 0] s00_axi_awprot
        .s00_axi_awvalid(s_axi_awvalid),  // input wire s00_axi_awvalid
        .s00_axi_awready(s_axi_awready),  // output wire s00_axi_awready
        .s00_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s00_axi_wdata
        .s00_axi_wstrb(s_axi_wstrb),      // input wire [3 : 0] s00_axi_wstrb
        .s00_axi_wvalid(s_axi_wvalid),    // input wire s00_axi_wvalid
        .s00_axi_wready(s_axi_wready),    // output wire s00_axi_wready
        .s00_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s00_axi_bresp
        .s00_axi_bvalid(s_axi_bvalid),    // output wire s00_axi_bvalid
        .s00_axi_bready(s_axi_bready),    // input wire s00_axi_bready
        .s00_axi_araddr(s_axi_araddr),    // input wire [6 : 0] s00_axi_araddr
        .s00_axi_arprot(s_axi_arprot),    // input wire [2 : 0] s00_axi_arprot
        .s00_axi_arvalid(s_axi_arvalid),  // input wire s00_axi_arvalid
        .s00_axi_arready(s_axi_arready),  // output wire s00_axi_arready
        .s00_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s00_axi_rdata
        .s00_axi_rresp(s_axi_rresp),      // output wire [1 : 0] s00_axi_rresp
        .s00_axi_rvalid(s_axi_rvalid),    // output wire s00_axi_rvalid
        .s00_axi_rready(s_axi_rready),    // input wire s00_axi_rready
        .regOut00(regOut00),                
        .regOut01(m_axis_config_tdata)              
    );



    always @(posedge clk) begin
        if(resetn==0) begin
            regOut00_old <= 0;
            m_axis_config_tvalid <= 0;
        end else begin
            regOut00_old <= regOut00;
            if((regOut00_old==0) && (regOut00==1)) begin
                m_axis_config_tvalid <= 1;
            end else begin
                m_axis_config_tvalid <= 0;
            end 
        end
    end
    
endmodule