-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Oct 24 15:29:32 2025
-- Host        : Tatertop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kioko/FPGA_Accelerator/FPGA_Accelerator.gen/sources_1/bd/design_1/ip/design_1_complex_signal_gener_0_1/design_1_complex_signal_gener_0_1_sim_netlist.vhdl
-- Design      : design_1_complex_signal_gener_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_complex_signal_gener_0_1_complex_signal_generator is
  port (
    real_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    imagery_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid : out STD_LOGIC;
    tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_complex_signal_gener_0_1_complex_signal_generator : entity is "complex_signal_generator";
end design_1_complex_signal_gener_0_1_complex_signal_generator;

architecture STRUCTURE of design_1_complex_signal_gener_0_1_complex_signal_generator is
  signal clear : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal theta_index : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tlast_0 : STD_LOGIC;
  signal tlast_i_2_n_0 : STD_LOGIC;
  signal NLW_imag_temp_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_imag_temp_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_imag_temp_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_real_temp_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_real_temp_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_real_temp_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imag_temp_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of imag_temp_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of imag_temp_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of imag_temp_reg : label is "design_1_complex_signal_gener_0_1/inst/imag_temp_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of imag_temp_reg : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of imag_temp_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of imag_temp_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of imag_temp_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of imag_temp_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of imag_temp_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of imag_temp_reg : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of real_temp_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS of real_temp_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of real_temp_reg : label is 16384;
  attribute RTL_RAM_NAME of real_temp_reg : label is "design_1_complex_signal_gener_0_1/inst/real_temp_reg";
  attribute RTL_RAM_STYLE of real_temp_reg : label is "NONE";
  attribute RTL_RAM_TYPE of real_temp_reg : label is "RAM_SP";
  attribute ram_addr_begin of real_temp_reg : label is 0;
  attribute ram_addr_end of real_temp_reg : label is 1023;
  attribute ram_offset of real_temp_reg : label is 0;
  attribute ram_slice_begin of real_temp_reg : label is 0;
  attribute ram_slice_end of real_temp_reg : label is 15;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \theta_index_rep[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \theta_index_rep[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \theta_index_rep[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \theta_index_rep[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \theta_index_rep[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \theta_index_rep[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \theta_index_rep[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tlast_i_1 : label is "soft_lutpair1";
begin
imag_temp_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_01 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_02 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_03 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_04 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_05 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_06 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_07 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_08 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_09 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_0A => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_0B => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_0C => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_0D => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_0E => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_0F => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_10 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_11 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_12 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_13 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_14 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_15 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_16 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_17 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_18 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_19 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_1A => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_1B => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_1C => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_1D => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_1E => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_1F => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_20 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_21 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_22 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_23 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_24 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_25 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_26 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_27 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_28 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_29 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_2A => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_2B => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_2C => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_2D => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_2E => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_2F => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_30 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_31 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_32 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_33 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_34 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_35 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_36 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_37 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_38 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_39 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_3A => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_3B => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_3C => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_3D => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_3E => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_3F => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_A => X"08000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => theta_index(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => imagery_out(15 downto 0),
      DOBDO(15 downto 0) => NLW_imag_temp_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_imag_temp_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_imag_temp_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => clear,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
real_temp_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_01 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_02 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_03 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_04 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_05 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_06 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_07 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_08 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_09 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_0A => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_0B => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_0C => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_0D => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_0E => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_0F => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_10 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_11 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_12 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_13 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_14 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_15 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_16 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_17 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_18 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_19 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_1A => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_1B => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_1C => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_1D => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_1E => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_1F => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_20 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_21 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_22 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_23 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_24 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_25 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_26 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_27 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_28 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_29 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_2A => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_2B => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_2C => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_2D => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_2E => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_2F => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_30 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_31 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_32 => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_33 => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_34 => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_35 => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_36 => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_37 => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_38 => X"5ED762F166CF6A6D6DC970E273B5764178847A7C7C297D897E9C7F617FD87FFF",
      INIT_39 => X"06480C8C12C818F91F1A25282B1F30FB36BA3C5641CE471C4C3F513355F55A82",
      INIT_3A => X"AA0BAECDB3C1B8E4BE32C3AAC946CF05D4E1DAD8E0E6E707ED38F374F9B80000",
      INIT_3B => X"8028809F8164827783D78584877C89BF8C4B8F1E9237959399319D0FA129A57E",
      INIT_3C => X"A1299D0F9931959392378F1E8C4B89BF877C858483D782778164809F80288001",
      INIT_3D => X"F9B8F374ED38E707E0E6DAD8D4E1CF05C946C3AABE32B8E4B3C1AECDAA0BA57E",
      INIT_3E => X"55F551334C3F471C41CE3C5636BA30FB2B1F25281F1A18F912C80C8C06480000",
      INIT_3F => X"7FD87F617E9C7D897C297A7C7884764173B570E26DC96A6D66CF62F15ED75A82",
      INIT_A => X"08000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => theta_index(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => real_out(15 downto 0),
      DOBDO(15 downto 0) => NLW_real_temp_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_real_temp_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_real_temp_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => clear,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
real_temp_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => clear
    );
\theta_index_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => theta_index(0),
      R => clear
    );
\theta_index_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => theta_index(1),
      R => clear
    );
\theta_index_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => theta_index(2),
      R => clear
    );
\theta_index_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => theta_index(3),
      R => clear
    );
\theta_index_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => theta_index(4),
      R => clear
    );
\theta_index_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => theta_index(5),
      R => clear
    );
\theta_index_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => theta_index(6),
      R => clear
    );
\theta_index_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => theta_index(7),
      R => clear
    );
\theta_index_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => theta_index(8),
      R => clear
    );
\theta_index_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => theta_index(9),
      R => clear
    );
\theta_index_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => theta_index(0),
      O => p_0_in(0)
    );
\theta_index_rep[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => theta_index(0),
      I1 => theta_index(1),
      O => p_0_in(1)
    );
\theta_index_rep[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => theta_index(1),
      I1 => theta_index(0),
      I2 => theta_index(2),
      O => p_0_in(2)
    );
\theta_index_rep[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => theta_index(2),
      I1 => theta_index(0),
      I2 => theta_index(1),
      I3 => theta_index(3),
      O => p_0_in(3)
    );
\theta_index_rep[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => theta_index(3),
      I1 => theta_index(1),
      I2 => theta_index(0),
      I3 => theta_index(2),
      I4 => theta_index(4),
      O => p_0_in(4)
    );
\theta_index_rep[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => theta_index(4),
      I1 => theta_index(2),
      I2 => theta_index(0),
      I3 => theta_index(1),
      I4 => theta_index(3),
      I5 => theta_index(5),
      O => p_0_in(5)
    );
\theta_index_rep[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tlast_i_2_n_0,
      I1 => theta_index(6),
      O => p_0_in(6)
    );
\theta_index_rep[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => theta_index(6),
      I1 => tlast_i_2_n_0,
      I2 => theta_index(7),
      O => p_0_in(7)
    );
\theta_index_rep[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => theta_index(7),
      I1 => tlast_i_2_n_0,
      I2 => theta_index(6),
      I3 => theta_index(8),
      O => p_0_in(8)
    );
\theta_index_rep[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => theta_index(8),
      I1 => theta_index(6),
      I2 => tlast_i_2_n_0,
      I3 => theta_index(7),
      I4 => theta_index(9),
      O => p_0_in(9)
    );
tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => theta_index(9),
      I1 => theta_index(8),
      I2 => theta_index(6),
      I3 => tlast_i_2_n_0,
      I4 => theta_index(7),
      O => tlast_0
    );
tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => theta_index(4),
      I1 => theta_index(2),
      I2 => theta_index(0),
      I3 => theta_index(1),
      I4 => theta_index(3),
      I5 => theta_index(5),
      O => tlast_i_2_n_0
    );
tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tlast_0,
      Q => tlast,
      R => clear
    );
tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset,
      Q => tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_complex_signal_gener_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    real_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    imagery_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid : out STD_LOGIC;
    tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_complex_signal_gener_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_complex_signal_gener_0_1 : entity is "design_1_complex_signal_gener_0_1,complex_signal_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_complex_signal_gener_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_complex_signal_gener_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_complex_signal_gener_0_1 : entity is "complex_signal_generator,Vivado 2025.1";
end design_1_complex_signal_gener_0_1;

architecture STRUCTURE of design_1_complex_signal_gener_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sim_clk_gen_0_2_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tlast : signal is "xilinx.com:interface:axis:1.0 interface_axis TLAST";
  attribute X_INTERFACE_INFO of tvalid : signal is "xilinx.com:interface:axis:1.0 interface_axis TVALID";
  attribute X_INTERFACE_MODE of tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of tvalid : signal is "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_sim_clk_gen_0_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.design_1_complex_signal_gener_0_1_complex_signal_generator
     port map (
      clk => clk,
      imagery_out(15 downto 0) => imagery_out(15 downto 0),
      real_out(15 downto 0) => real_out(15 downto 0),
      reset => reset,
      tlast => tlast,
      tvalid => tvalid
    );
end STRUCTURE;
