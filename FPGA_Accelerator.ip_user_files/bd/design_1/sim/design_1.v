//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Fri Oct 24 15:28:22 2025
//Host        : Tatertop running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=6,da_clkrst_cnt=3,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ABS_FFT,
    FFT_Tlast,
    FFT_Tvalid,
    real_input);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ABS_FFT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ABS_FFT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]ABS_FFT;
  output FFT_Tlast;
  output FFT_Tvalid;
  output [15:0]real_input;

  wire [31:0]ABS_FFT;
  wire FFT_Tlast;
  wire FFT_Tvalid;
  wire [15:0]complex_signal_gener_0_imagery_out;
  wire complex_signal_gener_0_tlast;
  wire complex_signal_gener_0_tvalid;
  wire [31:0]ilconcat_0_dout;
  wire [0:0]ilconstant_0_dout;
  wire [15:0]ilslice_0_Dout;
  wire [15:0]ilslice_1_Dout;
  wire [31:0]mult_gen_0_P;
  wire [31:0]mult_gen_1_P;
  wire [15:0]real_input;
  wire sim_clk_gen_0_clk;
  wire sim_clk_gen_0_sync_rst;
  wire [31:0]xfft_0_m_axis_data_tdata;

  design_1_c_addsub_0_0 c_addsub_0
       (.A(mult_gen_0_P),
        .B(mult_gen_1_P),
        .CE(1'b1),
        .CLK(sim_clk_gen_0_clk),
        .S(ABS_FFT));
  design_1_complex_signal_gener_0_1 complex_signal_gener_0
       (.clk(sim_clk_gen_0_clk),
        .imagery_out(complex_signal_gener_0_imagery_out),
        .real_out(real_input),
        .reset(sim_clk_gen_0_sync_rst),
        .tlast(complex_signal_gener_0_tlast),
        .tvalid(complex_signal_gener_0_tvalid));
  assign ilconcat_0_dout = {real_input, complex_signal_gener_0_imagery_out};
  assign ilconstant_0_dout = 1'h1;
  assign ilslice_0_Dout = xfft_0_m_axis_data_tdata[31:16];
  assign ilslice_1_Dout = xfft_0_m_axis_data_tdata[15:0];
  design_1_mult_gen_0_0 mult_gen_0
       (.A(ilslice_0_Dout),
        .B(ilslice_0_Dout),
        .CLK(sim_clk_gen_0_clk),
        .P(mult_gen_0_P));
  design_1_mult_gen_0_1 mult_gen_1
       (.A(ilslice_1_Dout),
        .B(ilslice_1_Dout),
        .CLK(sim_clk_gen_0_clk),
        .P(mult_gen_1_P));
  design_1_sim_clk_gen_0_2 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk),
        .sync_rst(sim_clk_gen_0_sync_rst));
  design_1_xfft_0_0 xfft_0
       (.aclk(sim_clk_gen_0_clk),
        .m_axis_data_tdata(xfft_0_m_axis_data_tdata),
        .m_axis_data_tlast(FFT_Tlast),
        .m_axis_data_tready(ilconstant_0_dout),
        .m_axis_data_tvalid(FFT_Tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_config_tvalid(1'b0),
        .s_axis_data_tdata(ilconcat_0_dout),
        .s_axis_data_tlast(complex_signal_gener_0_tlast),
        .s_axis_data_tvalid(complex_signal_gener_0_tvalid));
endmodule
