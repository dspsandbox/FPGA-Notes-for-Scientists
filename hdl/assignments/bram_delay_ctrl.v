module bram_delay_ctrl #(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 13
)(
    input clk,
    input resetn,
    input [ADDR_WIDTH - 1 : 0] delay, 
    input [DATA_WIDTH -1 : 0] data_i_tdata,
    input data_i_tvalid,
    output [DATA_WIDTH -1 : 0] data_o_tdata,
    output data_o_tvalid,
    
    output [ADDR_WIDTH - 1 : 0] addra, addrb,
    output clka, clkb,
    output [DATA_WIDTH -1 : 0] dina, dinb,
    input [DATA_WIDTH -1 : 0] douta, doutb,
    output ena, enb,
    output wea, web
        );
        
        
   reg [ADDR_WIDTH -1 : 0]  counter;
   
   
   always @(posedge clk ) begin
       if (resetn == 0) begin
            counter <= 0;
       end else begin
            counter <= counter +1;
       end
   
   end 
   
   assign data_o_tdata = doutb;
   assign data_o_tvalid = 1;
   assign addra = counter;
   assign addrb = counter - delay;
   assign clka = clk;
   assign clkb = clk;
   assign dina = data_i_tdata;
   assign dinb = 0;
   assign ena = 1;
   assign enb = 1;
   assign wea = 1;
   assign web = 0;
   
endmodule
