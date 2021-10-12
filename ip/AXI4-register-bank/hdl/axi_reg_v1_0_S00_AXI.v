
`timescale 1 ns / 1 ps

	module axi_reg_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 7,
		
		parameter integer reg_in_enabled = 1,
		parameter integer port_width_reg_in_00 = 32,
		parameter integer port_width_reg_in_01 = 32,
		parameter integer port_width_reg_in_02 = 32,
		parameter integer port_width_reg_in_03 = 32,
		parameter integer port_width_reg_in_04 = 32,
		parameter integer port_width_reg_in_05 = 32,
		parameter integer port_width_reg_in_06 = 32,
		parameter integer port_width_reg_in_07 = 32,
		parameter integer port_width_reg_in_08 = 32,
		parameter integer port_width_reg_in_09 = 32,
		parameter integer port_width_reg_in_10 = 32,
		parameter integer port_width_reg_in_11 = 32,
		parameter integer port_width_reg_in_12 = 32,
		parameter integer port_width_reg_in_13 = 32,
		parameter integer port_width_reg_in_14 = 32,
		parameter integer port_width_reg_in_15 = 32,
		
		parameter integer reg_out_enabled = 1,
		parameter integer port_width_reg_out_00 = 32,
		parameter integer port_width_reg_out_01 = 32,
		parameter integer port_width_reg_out_02 = 32,
		parameter integer port_width_reg_out_03 = 32,
		parameter integer port_width_reg_out_04 = 32,
		parameter integer port_width_reg_out_05 = 32,
		parameter integer port_width_reg_out_06 = 32,
		parameter integer port_width_reg_out_07 = 32,
		parameter integer port_width_reg_out_08 = 32,
		parameter integer port_width_reg_out_09 = 32,
		parameter integer port_width_reg_out_10 = 32,
		parameter integer port_width_reg_out_11 = 32,
		parameter integer port_width_reg_out_12 = 32,
		parameter integer port_width_reg_out_13 = 32,
		parameter integer port_width_reg_out_14 = 32,
		parameter integer port_width_reg_out_15 = 32			
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,
		
		
		input wire [port_width_reg_in_00 - 1 : 0] regIn00,
		input wire [port_width_reg_in_01 - 1 : 0] regIn01,
		input wire [port_width_reg_in_02 - 1 : 0] regIn02,
		input wire [port_width_reg_in_03 - 1 : 0] regIn03,
		input wire [port_width_reg_in_04 - 1 : 0] regIn04,
		input wire [port_width_reg_in_05 - 1 : 0] regIn05,
		input wire [port_width_reg_in_06 - 1 : 0] regIn06,
		input wire [port_width_reg_in_07 - 1 : 0] regIn07,
		input wire [port_width_reg_in_08 - 1 : 0] regIn08,
		input wire [port_width_reg_in_09 - 1 : 0] regIn09,
		input wire [port_width_reg_in_10 - 1 : 0] regIn10,
		input wire [port_width_reg_in_11 - 1 : 0] regIn11, 
		input wire [port_width_reg_in_12 - 1 : 0] regIn12,
		input wire [port_width_reg_in_13 - 1 : 0] regIn13,
		input wire [port_width_reg_in_14 - 1 : 0] regIn14,
		input wire [port_width_reg_in_15 - 1 : 0] regIn15,
		
		output wire [port_width_reg_out_00 - 1 : 0] regOut00,
		output wire [port_width_reg_out_01 - 1 : 0] regOut01,
		output wire [port_width_reg_out_02 - 1 : 0] regOut02,
		output wire [port_width_reg_out_03 - 1 : 0] regOut03,
		output wire [port_width_reg_out_04 - 1 : 0] regOut04,
		output wire [port_width_reg_out_05 - 1 : 0] regOut05,
		output wire [port_width_reg_out_06 - 1 : 0] regOut06,
		output wire [port_width_reg_out_07 - 1 : 0] regOut07,
		output wire [port_width_reg_out_08 - 1 : 0] regOut08,
		output wire [port_width_reg_out_09 - 1 : 0] regOut09,
		output wire [port_width_reg_out_10 - 1 : 0] regOut10,
		output wire [port_width_reg_out_11 - 1 : 0] regOut11,
		output wire [port_width_reg_out_12 - 1 : 0] regOut12,
		output wire [port_width_reg_out_13 - 1 : 0] regOut13,
		output wire [port_width_reg_out_14 - 1 : 0] regOut14,
		output wire [port_width_reg_out_15 - 1 : 0] regOut15
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;
	
	
	
	
	
	
	
	

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 32
	reg [port_width_reg_in_00- 1 : 0]	slv_reg0;
	reg [port_width_reg_in_01-1:0]	slv_reg1;
	reg [port_width_reg_in_02-1:0]	slv_reg2;
	reg [port_width_reg_in_03-1:0]	slv_reg3;
	reg [port_width_reg_in_04-1:0]	slv_reg4;
	reg [port_width_reg_in_05-1:0]	slv_reg5;
	reg [port_width_reg_in_06-1:0]	slv_reg6;
	reg [port_width_reg_in_07-1:0]	slv_reg7;
	reg [port_width_reg_in_08-1:0]	slv_reg8;
	reg [port_width_reg_in_09-1:0]	slv_reg9;
	reg [port_width_reg_in_10-1:0]	slv_reg10;
	reg [port_width_reg_in_11-1:0]	slv_reg11;
	reg [port_width_reg_in_12-1:0]	slv_reg12;
	reg [port_width_reg_in_13-1:0]	slv_reg13;
	reg [port_width_reg_in_14-1:0]	slv_reg14;
	reg [port_width_reg_in_15-1:0]	slv_reg15;
	reg [port_width_reg_out_00-1:0]	slv_reg16;
	reg [port_width_reg_out_01-1:0]	slv_reg17;
	reg [port_width_reg_out_02-1:0]	slv_reg18;
	reg [port_width_reg_out_03-1:0]	slv_reg19;
	reg [port_width_reg_out_04-1:0]	slv_reg20;
	reg [port_width_reg_out_05-1:0]	slv_reg21;
	reg [port_width_reg_out_06-1:0]	slv_reg22;
	reg [port_width_reg_out_07-1:0]	slv_reg23;
	reg [port_width_reg_out_08-1:0]	slv_reg24;
	reg [port_width_reg_out_09-1:0]	slv_reg25;
	reg [port_width_reg_out_10-1:0]	slv_reg26;
	reg [port_width_reg_out_11-1:0]	slv_reg27;
	reg [port_width_reg_out_12-1:0]	slv_reg28;
	reg [port_width_reg_out_13-1:0]	slv_reg29;
	reg [port_width_reg_out_14-1:0]	slv_reg30;
	reg [port_width_reg_out_15-1:0]	slv_reg31;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	      slv_reg10 <= 0;
	      slv_reg11 <= 0;
	      slv_reg12 <= 0;
	      slv_reg13 <= 0;
	      slv_reg14 <= 0;
	      slv_reg15 <= 0;
	      slv_reg16 <= 0;
	      slv_reg17 <= 0;
	      slv_reg18 <= 0;
	      slv_reg19 <= 0;
	      slv_reg20 <= 0;
	      slv_reg21 <= 0;
	      slv_reg22 <= 0;
	      slv_reg23 <= 0;
	      slv_reg24 <= 0;
	      slv_reg25 <= 0;
	      slv_reg26 <= 0;
	      slv_reg27 <= 0;
	      slv_reg28 <= 0;
	      slv_reg29 <= 0;
	      slv_reg30 <= 0;
	      slv_reg31 <= 0;
	    end 
	  else begin
	  
	   //Capture inputs
	   if (reg_in_enabled > 0) begin
         slv_reg0 <= regIn00;
       end  
       
       if (reg_in_enabled > 1) begin
         slv_reg1 <= regIn01;
       end  
       
       if (reg_in_enabled > 2) begin
         slv_reg2 <= regIn02;
       end  
       
       if (reg_in_enabled > 3) begin
         slv_reg3 <= regIn03;
       end  
       
       if (reg_in_enabled > 4) begin
         slv_reg4 <= regIn04;
       end  
       
       if (reg_in_enabled > 5) begin
         slv_reg5 <= regIn05;
       end  
       
       if (reg_in_enabled > 6) begin
         slv_reg6 <= regIn06;
       end  
       
       if (reg_in_enabled > 7) begin
         slv_reg7 <= regIn07;
       end  
       
       if (reg_in_enabled > 8) begin
         slv_reg8 <= regIn08;
       end  
       
       if (reg_in_enabled > 9) begin
         slv_reg9 <= regIn09;
       end  
       
       if (reg_in_enabled > 10) begin
         slv_reg10 <= regIn10;
       end  
       
       if (reg_in_enabled > 11) begin
         slv_reg11 <= regIn11;
       end   
       
       if (reg_in_enabled > 12) begin
         slv_reg12 <= regIn12;
       end  
       
       if (reg_in_enabled > 13) begin
         slv_reg13 <= regIn13;
       end  
       
       if (reg_in_enabled > 14) begin
         slv_reg14 <= regIn14;
       end  
       
       if (reg_in_enabled > 15) begin
         slv_reg15 <= regIn15;
       end  
	  
	  
	  
	  
	  
	  //Register write
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          5'h10:
	              if (reg_out_enabled > 0) begin
	               slv_reg16 <= S_AXI_WDATA[port_width_reg_out_00-1:0];
	              end  
	          5'h11:
	              if (reg_out_enabled > 1) begin
	               slv_reg17 <= S_AXI_WDATA[port_width_reg_out_01-1:0];
	              end   
	          5'h12:
	              if (reg_out_enabled > 2) begin
	               slv_reg18 <= S_AXI_WDATA[port_width_reg_out_02-1:0];
	              end  
	          5'h13:
	              if (reg_out_enabled > 3) begin
	               slv_reg19 <= S_AXI_WDATA[port_width_reg_out_03-1:0];
	              end  
	          5'h14:
	              if (reg_out_enabled > 4) begin
	               slv_reg20 <= S_AXI_WDATA[port_width_reg_out_04-1:0];
	              end  
	          5'h15:
	              if (reg_out_enabled > 5) begin
	               slv_reg21 <= S_AXI_WDATA[port_width_reg_out_05-1:0];
	              end 
	          5'h16:
	              if (reg_out_enabled > 6) begin
	               slv_reg22 <= S_AXI_WDATA[port_width_reg_out_06-1:0];
	              end 
	          5'h17:
	              if (reg_out_enabled > 7) begin
	               slv_reg23 <= S_AXI_WDATA[port_width_reg_out_07-1:0];
	              end 
	          5'h18:
	              if (reg_out_enabled > 8) begin
	               slv_reg24 <= S_AXI_WDATA[port_width_reg_out_08-1:0];
	              end 
	          5'h19:
	              if (reg_out_enabled > 9) begin
	               slv_reg25 <= S_AXI_WDATA[port_width_reg_out_09-1:0];
	              end 
	          5'h1A:
	              if (reg_out_enabled > 10) begin
	               slv_reg26 <= S_AXI_WDATA[port_width_reg_out_10-1:0];
	              end 
	          5'h1B:
	              if (reg_out_enabled > 11) begin
	               slv_reg27 <= S_AXI_WDATA[port_width_reg_out_11-1:0];
	              end 
	          5'h1C:
	              if (reg_out_enabled > 12) begin
	               slv_reg28 <= S_AXI_WDATA[port_width_reg_out_12-1:0];
	              end 
	          5'h1D:
	              if (reg_out_enabled > 13) begin
	               slv_reg29 <= S_AXI_WDATA[port_width_reg_out_13-1:0];
	              end 
	          5'h1E:
	              if (reg_out_enabled > 14) begin
	               slv_reg30 <= S_AXI_WDATA[port_width_reg_out_14-1:0];
	              end 
	          5'h1F:
	              if (reg_out_enabled > 15) begin
	               slv_reg31 <= S_AXI_WDATA[port_width_reg_out_15-1:0];
	              end 
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
	                      slv_reg12 <= slv_reg12;
	                      slv_reg13 <= slv_reg13;
	                      slv_reg14 <= slv_reg14;
	                      slv_reg15 <= slv_reg15;
	                      slv_reg16 <= slv_reg16;
	                      slv_reg17 <= slv_reg17;
	                      slv_reg18 <= slv_reg18;
	                      slv_reg19 <= slv_reg19;
	                      slv_reg20 <= slv_reg20;
	                      slv_reg21 <= slv_reg21;
	                      slv_reg22 <= slv_reg22;
	                      slv_reg23 <= slv_reg23;
	                      slv_reg24 <= slv_reg24;
	                      slv_reg25 <= slv_reg25;
	                      slv_reg26 <= slv_reg26;
	                      slv_reg27 <= slv_reg27;
	                      slv_reg28 <= slv_reg28;
	                      slv_reg29 <= slv_reg29;
	                      slv_reg30 <= slv_reg30;
	                      slv_reg31 <= slv_reg31;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        5'h00   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_00){1'b0}}, slv_reg0};
	        5'h01   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_01){1'b0}}, slv_reg1};
	        5'h02   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_02){1'b0}}, slv_reg2};
	        5'h03   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_03){1'b0}}, slv_reg3};
	        5'h04   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_04){1'b0}}, slv_reg4};
	        5'h05   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_05){1'b0}}, slv_reg5};
	        5'h06   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_06){1'b0}}, slv_reg6};
	        5'h07   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_07){1'b0}}, slv_reg7};
	        5'h08   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_08){1'b0}}, slv_reg8};
	        5'h09   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_09){1'b0}}, slv_reg9};
	        5'h0A   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_10){1'b0}}, slv_reg10};
	        5'h0B   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_11){1'b0}}, slv_reg11};
	        5'h0C   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_12){1'b0}}, slv_reg12};
	        5'h0D   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_13){1'b0}}, slv_reg13};
	        5'h0E   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_14){1'b0}}, slv_reg14};
	        5'h0F   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_in_15){1'b0}}, slv_reg15};
	        5'h10   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_00){1'b0}}, slv_reg16};
	        5'h11   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_01){1'b0}}, slv_reg17};
	        5'h12   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_02){1'b0}}, slv_reg18};
	        5'h13   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_03){1'b0}}, slv_reg19};
	        5'h14   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_04){1'b0}}, slv_reg20};
	        5'h15   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_05){1'b0}}, slv_reg21};
	        5'h16   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_06){1'b0}}, slv_reg22};
	        5'h17   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_07){1'b0}}, slv_reg23};
	        5'h18   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_08){1'b0}}, slv_reg24};
	        5'h19   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_09){1'b0}}, slv_reg25};
	        5'h1A   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_10){1'b0}}, slv_reg26};
	        5'h1B   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_11){1'b0}}, slv_reg27};
	        5'h1C   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_12){1'b0}}, slv_reg28};
	        5'h1D   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_13){1'b0}}, slv_reg29};
	        5'h1E   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_14){1'b0}}, slv_reg30};
	        5'h1F   : reg_data_out <= {{(C_S_AXI_DATA_WIDTH-port_width_reg_out_15){1'b0}}, slv_reg31};
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    
    
    //Update outputs
	assign regOut00 = slv_reg16;
	assign regOut01 = slv_reg17;
	assign regOut02 = slv_reg18;
	assign regOut03 = slv_reg19;
	assign regOut04 = slv_reg20;
	assign regOut05 = slv_reg21;
	assign regOut06 = slv_reg22;
	assign regOut07 = slv_reg23;
	assign regOut08 = slv_reg24;
	assign regOut09 = slv_reg25;
	assign regOut10 = slv_reg26;
	assign regOut11 = slv_reg27;
	assign regOut12 = slv_reg28;
	assign regOut13 = slv_reg29;
	assign regOut14 = slv_reg30;
	assign regOut15 = slv_reg31;
	
	endmodule
