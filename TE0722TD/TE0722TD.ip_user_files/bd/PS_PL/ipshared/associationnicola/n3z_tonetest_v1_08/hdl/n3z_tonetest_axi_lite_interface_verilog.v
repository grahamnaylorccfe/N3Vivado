module n3z_tonetest_axi_lite_interface_verilog#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 5, C_S_NUM_OFFSETS = 7)(
  output wire[0:0] fromarm_tvalid,
  output wire[15:0] fromarm_tdata,
  output wire[0:0] data2arm_tready,
  output wire[7:0] audiovolume,
  input wire[7:0] data2arm_tdata,
  input wire[0:0] data2arm_tvalid,
  input wire[0:0] fromarm_tready,
  output wire clk,
  input wire n3z_tonetest_aclk,
  input wire n3z_tonetest_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] n3z_tonetest_s_axi_awaddr,
  input  wire n3z_tonetest_s_axi_awvalid,
  output wire n3z_tonetest_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] n3z_tonetest_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] n3z_tonetest_s_axi_wstrb,
  input  wire n3z_tonetest_s_axi_wvalid,
  output wire n3z_tonetest_s_axi_wready,
  output wire [1:0] n3z_tonetest_s_axi_bresp,
  output wire n3z_tonetest_s_axi_bvalid,
  input  wire n3z_tonetest_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] n3z_tonetest_s_axi_araddr,
  input  wire n3z_tonetest_s_axi_arvalid,
  output wire n3z_tonetest_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] n3z_tonetest_s_axi_rdata,
  output wire [1:0] n3z_tonetest_s_axi_rresp,
  output wire n3z_tonetest_s_axi_rvalid,
  input  wire n3z_tonetest_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg  start_;
wire start__wire;
wire blk_next_write;
wire [23:0] _n_steps;	// initial count for clock bursts. MSB (bit 23) is free-running clock flag
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign n3z_tonetest_s_axi_awready = axi_awready;
assign n3z_tonetest_s_axi_wready  = axi_wready;
assign n3z_tonetest_s_axi_bresp  = axi_bresp;
assign n3z_tonetest_s_axi_bvalid = axi_bvalid;
assign n3z_tonetest_s_axi_arready = axi_arready;
assign n3z_tonetest_s_axi_rdata  = axi_rdata;
assign n3z_tonetest_s_axi_rvalid = axi_rvalid;
assign n3z_tonetest_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign fromarm_tvalid = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign fromarm_tdata[15:0] = slv_wire_array[1][15:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign data2arm_tready = slv_wire_array[2][0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign audiovolume[7:0] = slv_wire_array[3][7:0];
// map output 4
assign slv_wire_array[4] = {24'h0, data2arm_tdata[7:0]};
// map output 5
assign slv_wire_array[5] = data2arm_tvalid;
// map output 6
assign slv_wire_array[6] = fromarm_tready;
  initial
  begin
    for(offset_index = 0;offset_index < C_S_NUM_OFFSETS; offset_index = offset_index + 1)
    begin
      slv_reg_array[offset_index] = 0;
    end
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      5'd0 : dec_w = 0;
      5'd4 : dec_w = 1;
      5'd8 : dec_w = 2;
      5'd12 : dec_w = 3;
      5'd16 : dec_w = 4;
      5'd20 : dec_w = 5;
      5'd24 : dec_w = 6;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      5'd0 : dec_r = 0;
      5'd4 : dec_r = 1;
      5'd8 : dec_r = 2;
      5'd12 : dec_r = 3;
      5'd16 : dec_r = 4;
      5'd20 : dec_r = 5;
      5'd24 : dec_r = 6;
      default : dec_r = 0;
    endcase
  end
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && n3z_tonetest_s_axi_awvalid && n3z_tonetest_s_axi_wvalid && ~blk_next_write)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= n3z_tonetest_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && n3z_tonetest_s_axi_wvalid && n3z_tonetest_s_axi_awvalid && ~blk_next_write)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && n3z_tonetest_s_axi_wvalid && axi_awready && n3z_tonetest_s_axi_awvalid;
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        for(offset_index = 0;offset_index < C_S_NUM_OFFSETS; offset_index = offset_index + 1)
        begin
          slv_reg_array[offset_index] = 0;
        end
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( n3z_tonetest_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= n3z_tonetest_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && n3z_tonetest_s_axi_awvalid && ~axi_bvalid && axi_wready && n3z_tonetest_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (n3z_tonetest_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && n3z_tonetest_s_axi_arvalid && ~blk_next_write)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= n3z_tonetest_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && n3z_tonetest_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & n3z_tonetest_s_axi_arvalid & ~axi_rvalid;
  always @(n3z_tonetest_aresetn, slv_reg_rden, axi_araddr)
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge n3z_tonetest_aclk )
  begin
    if ( n3z_tonetest_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign clk = n3z_tonetest_aclk;

endmodule

