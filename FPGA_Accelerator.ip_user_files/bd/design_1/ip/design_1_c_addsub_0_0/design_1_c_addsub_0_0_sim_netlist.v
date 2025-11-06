// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct 24 14:36:24 2025
// Host        : Tatertop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_0_0 -prefix
//               design_1_c_addsub_0_0_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_20,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_0_0
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sim_clk_gen_0_0_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_c_addsub_0_0_c_addsub_v12_0_20 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y3ZbCcdv9XasLMSMZW/y3Z6CUzCXNPTE+qdA8rN8R+bY1a3xUH0B/92K6jUJ2s2WEn1REyXOQgu8
z1NEWHIa9nJosDbj+GChjGTQwgXx6hcmrcoPipw89c2yCONv9um/soUaPzysLy4hmmECcp0nEvoo
xPoT9TYqcruYDtIOB7A=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F1IXWdxrPKwvTg8EeMjbKRbOQi8g3pVSNtCuVg69JLgqwWEV5YPJ799e7MoKiqJkPivuLi02N7OR
3hlEAzvBZ3MErCqbvMNQv7w7I1lUx9+PcnD0U7bq/UBNvJ4SM2MbX+zbypLiHoMWr2iJXBO7SNu1
rhAu1lfLAJFTaPeByNUlPrZ+jTO8nFOr63czMGj6idyWroogzVzYRiQWeWA1SPfn2YjH3ZVDvNsY
dvsAdBRES27GYG37D1ugMFri5LGOMaUqSbkct/gJpY9Gl7AtM6juWR9BFN8WcUmDZmrGRv5o8s7v
PvT4locJhONftqZXOCwafp7Nky6jEqmzPaBZTw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bo7kG4Yo1muXASb3K+dNN076tI4tNFg29R/EzlrphZRJbZpGm/I/tKRbKF4dSppaobE1DPkNCMdc
Lm2HgNApmlQYjDsJNg7t6VPv/GU/DfWQY8Nxjpd1C+3gRDyCuHxYJFJUxCj3lzL31n9zOZ0dgqaM
g68NcofLsns/Jynvhjg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KaN2tJr4q0UNsRnsGonecTlshqKcaOREnPMxRFUF1thLUibwKC1aG9ZHSXnf2CHOj4jLmgT0RGUg
itULJEfsjy/hCOOVf+7cyWU21lL7ciL7Xf8ok2Rb2Co8Jqm8KTyikoWP9sOUZ/NJ6gEUEROrnQlw
uvEdVVmnWmNyJ2sVUmp3Ak7XqUzz+Kay0oDECH3Aat4yC198zQImE4yVhJgy36kw6wnLJmbLY+PX
BCv9k77gpJdX0frge81vAMSP/TAPKHGiqhCBShNIjMRtxL+uqAIO0jKw09FNpy+W6Fj6qowyL9PH
5jqpOMhg8GELaciGksOC/Zl2N4S73OQcbQqcHw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
STxdukJ0Ps7Q/iujvgYoC8IpCWBcTU5Y10ns6ltitMcVdYBmbbE6R7XGL5vuptPIvoGh8S2FGZLi
PBFLfYSAZP4oSXsF/mg/zitHSRxirnd81evlt0p09ZYT77/KV0OEJ8PpEYEb1vY7z1H1T4zlREBF
SdCBGMK8DtSTJX/RjuLQ7xeXVNOp/XBsgPFNnp/rheT/KMHYz8nkBpzuPce0SEgmAVUbp6xA2YHZ
GneJc/7zzuLACPFtpyCDyX7E8ngPZGu0FN6d+AkNnvsHnsMjlC5K+D4cUBRYUiBnL4XDU37xwoz/
1LQ8d+4CniEq+4kw+GWWJLhCoubXH+MZbN/inA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y33HNuVH8FgqObSFFaKDX0GU3qNTzxgHbhe73nDCX69btae7453IbdcmV7iC/CPzwNp7zYlK03iB
0t+IeFq6WrcoVsF2WTwuv9uM/gBgovGdTEAVm5YSFK1byctgXjg0A0BdYS97jUDaf/4csV+H7ZyC
qvKluzcTGyKvUQnTomYUSQ28kLxqmq1NkJjrQlKtMRmhhI5hJTnsq98nyJ8EegaVWqIgJjqKjUpm
JLrEc0tMzdf/lUeie69ZABMmG0isSqiDk45ei2d1rVg1KNeJ5mLLLr7yD7thbGOBxhSJYebPWl1J
xd8DkEZAKORjNjL9vfNN1VSXbzRcEXSqmXm6Sg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yw8TgjL3JDLwKvOnWlgfHV7HFJDgumk05JYG6xg+ZEl+tzRZNk2xu0gBOhr7u5/Wl0au++UmGY6i
jNz96oYuX7PeetoiWtoOeGQJxx2KpOlfWeBQo6ZiLOfhxGrZmgQcIxRmJRJgcdWMtlL4Ei/+69GI
dOMD+lhyIZpHEHK/bzB1udA4KYMEzoJpJZ/v1ehra0FwBIh9Gel4Bwg7gd95AbibIn1/dqA4i3Io
eprNWgFJGx7cn6KdT0iM5NWx36OnXFxDlIjBCm7hpEHPfcopQWSzd5V80Jnu4Sl7dwMGvnJMrv3z
tY/52wmL52JCVH9gzS/z6ahAghncs3BHheHS0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jkfcW/kwccT/pnYgPwCFUAEXPO4w1sIzpMPIKA7oc+rEqJqr1hrOf9Jf2bYsYLtB6LGRcJa21Vmj
wuzdkTVyCAx7I6cfTipcRKP3KEsbEWRD+fkxZOrbtm530q5rDA7P6buM1gfHsBAJA4dyQW4sPWAd
XdThjGiOS5c34Yk1Nku7qda2Ngy72JPWCHZqcjSVcYq3t1Gy+vu/ps9RMROr+YpKxuWKL/TrlLyW
Zh2s1jF/RY+cQnbzAx2zQsuv2ZPwNMayv35zzsH+E2/sdw4gJrfsW/w8xon69M1K3HcyMHXkz1pG
1ARD2+r4X9TrUNmF0tsMGU//Yq8sDKs8tuZLEOMFXqiNt0cSO92lNunfvlgC+6Cj95Gmz5Ish4Ig
r738ysD14QJqX76mKB6uVjoans0SqrslykUdPdXRj20/YDNoBxGuDWORrvw8a+D0ZzLpNcW93Gm/
r4qqEqCyuKWwdue6gTrnRci11oxYSXG2gbTTYyQgn5mTS0RtpPG3q2EK

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LJGqd6SmZEGyn3I/RZHXQDVLBpUYHBXayfZsoC5aqeLzXio9mjP2jJJqiWGIFKE2XwVHURSLgk3G
H6kZmy4xc/KwiCHLNDWfqT6xXQrIiSgtx2D2iQuIyan4ExV7UT3qq4nT3VF8kLCvJmqTccLcd2f+
R+Xf2qDVdUDvGNnlmH41l4y4A/qSyULjdD4vQ5ECMXEvaa8cTlKxZakGA1WiCIfA8uSoTlpjQR0s
iMrT9wUgFuMs8+Dc02CQSSSo4pMYfhhXwronggT6BjjTGXR1+szUNBMU8lXyWTwEGb9cN4SZeasL
Wm0l1nbbrKwTQ730SeohB0aRd3zwOs4F3cHT0g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2nLT8Zvs6vla9f81jsNW2RPpEaJf9tKjV66ah5MzvkCo0kdwmi/psLyzofjZoAxPTJey7vNkD+OP
ig7ZThoxVTDJVMGERrfG8uaJ+LUCvPiCwnKn73vgpEMD7qP9g1VskXBf6CudHgaap8bDBgfVWITL
QExOCeVFUk9u93wTJdHimIoe6Ebg6RFmktgHJq1nNw6TYsKCwDY4E1Jg3vwGV5uT92yAW4PKYrDN
YGfeq3IIs+jiZrIZs1ffc3SAce6LLc62T3d8XglbzgKthxxcUc6Re4XKxVPp69nMLKsxTcvANNI0
Vgm0AGrkFuF+eBGT4Evi8c2RUBUZur4CgcKCwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bC7WF7hkz2L9eff+WtabxVTqD0ohNl7V54dbTlcmUuGjzlS7+etjYyf1ZmKyTxgZlI8CcGY3aLUm
g4gMZWQTkwQ2EABmYmtgG8B1CQOJdk0H16y1P3Ngef0kUT/4xGcurqPGqt8djCWLAJYHkIS0viNB
1s3Od9+84/L2xjU3GaQhc2e9u2OFVjrPCAKk0Ygmig+kgae5wRHqq16qz/+bWFyJe0O9cHyCjTtn
7/8jzeGuU0eaJfh0NrMBjbYxyV69oQjDU8ns6UMON/gG/Bos1va7j8dyIdYh6IGHeUSqr6LBTN7Q
2R4uEizA0QWc+/BV1v+nRTAIxxrJg5+4QWqljg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2640)
`pragma protect data_block
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
wgqJ9DSimSarYatiH27MJluV
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y3ZbCcdv9XasLMSMZW/y3Z6CUzCXNPTE+qdA8rN8R+bY1a3xUH0B/92K6jUJ2s2WEn1REyXOQgu8
z1NEWHIa9nJosDbj+GChjGTQwgXx6hcmrcoPipw89c2yCONv9um/soUaPzysLy4hmmECcp0nEvoo
xPoT9TYqcruYDtIOB7A=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F1IXWdxrPKwvTg8EeMjbKRbOQi8g3pVSNtCuVg69JLgqwWEV5YPJ799e7MoKiqJkPivuLi02N7OR
3hlEAzvBZ3MErCqbvMNQv7w7I1lUx9+PcnD0U7bq/UBNvJ4SM2MbX+zbypLiHoMWr2iJXBO7SNu1
rhAu1lfLAJFTaPeByNUlPrZ+jTO8nFOr63czMGj6idyWroogzVzYRiQWeWA1SPfn2YjH3ZVDvNsY
dvsAdBRES27GYG37D1ugMFri5LGOMaUqSbkct/gJpY9Gl7AtM6juWR9BFN8WcUmDZmrGRv5o8s7v
PvT4locJhONftqZXOCwafp7Nky6jEqmzPaBZTw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bo7kG4Yo1muXASb3K+dNN076tI4tNFg29R/EzlrphZRJbZpGm/I/tKRbKF4dSppaobE1DPkNCMdc
Lm2HgNApmlQYjDsJNg7t6VPv/GU/DfWQY8Nxjpd1C+3gRDyCuHxYJFJUxCj3lzL31n9zOZ0dgqaM
g68NcofLsns/Jynvhjg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KaN2tJr4q0UNsRnsGonecTlshqKcaOREnPMxRFUF1thLUibwKC1aG9ZHSXnf2CHOj4jLmgT0RGUg
itULJEfsjy/hCOOVf+7cyWU21lL7ciL7Xf8ok2Rb2Co8Jqm8KTyikoWP9sOUZ/NJ6gEUEROrnQlw
uvEdVVmnWmNyJ2sVUmp3Ak7XqUzz+Kay0oDECH3Aat4yC198zQImE4yVhJgy36kw6wnLJmbLY+PX
BCv9k77gpJdX0frge81vAMSP/TAPKHGiqhCBShNIjMRtxL+uqAIO0jKw09FNpy+W6Fj6qowyL9PH
5jqpOMhg8GELaciGksOC/Zl2N4S73OQcbQqcHw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
STxdukJ0Ps7Q/iujvgYoC8IpCWBcTU5Y10ns6ltitMcVdYBmbbE6R7XGL5vuptPIvoGh8S2FGZLi
PBFLfYSAZP4oSXsF/mg/zitHSRxirnd81evlt0p09ZYT77/KV0OEJ8PpEYEb1vY7z1H1T4zlREBF
SdCBGMK8DtSTJX/RjuLQ7xeXVNOp/XBsgPFNnp/rheT/KMHYz8nkBpzuPce0SEgmAVUbp6xA2YHZ
GneJc/7zzuLACPFtpyCDyX7E8ngPZGu0FN6d+AkNnvsHnsMjlC5K+D4cUBRYUiBnL4XDU37xwoz/
1LQ8d+4CniEq+4kw+GWWJLhCoubXH+MZbN/inA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y33HNuVH8FgqObSFFaKDX0GU3qNTzxgHbhe73nDCX69btae7453IbdcmV7iC/CPzwNp7zYlK03iB
0t+IeFq6WrcoVsF2WTwuv9uM/gBgovGdTEAVm5YSFK1byctgXjg0A0BdYS97jUDaf/4csV+H7ZyC
qvKluzcTGyKvUQnTomYUSQ28kLxqmq1NkJjrQlKtMRmhhI5hJTnsq98nyJ8EegaVWqIgJjqKjUpm
JLrEc0tMzdf/lUeie69ZABMmG0isSqiDk45ei2d1rVg1KNeJ5mLLLr7yD7thbGOBxhSJYebPWl1J
xd8DkEZAKORjNjL9vfNN1VSXbzRcEXSqmXm6Sg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yw8TgjL3JDLwKvOnWlgfHV7HFJDgumk05JYG6xg+ZEl+tzRZNk2xu0gBOhr7u5/Wl0au++UmGY6i
jNz96oYuX7PeetoiWtoOeGQJxx2KpOlfWeBQo6ZiLOfhxGrZmgQcIxRmJRJgcdWMtlL4Ei/+69GI
dOMD+lhyIZpHEHK/bzB1udA4KYMEzoJpJZ/v1ehra0FwBIh9Gel4Bwg7gd95AbibIn1/dqA4i3Io
eprNWgFJGx7cn6KdT0iM5NWx36OnXFxDlIjBCm7hpEHPfcopQWSzd5V80Jnu4Sl7dwMGvnJMrv3z
tY/52wmL52JCVH9gzS/z6ahAghncs3BHheHS0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jkfcW/kwccT/pnYgPwCFUAEXPO4w1sIzpMPIKA7oc+rEqJqr1hrOf9Jf2bYsYLtB6LGRcJa21Vmj
wuzdkTVyCAx7I6cfTipcRKP3KEsbEWRD+fkxZOrbtm530q5rDA7P6buM1gfHsBAJA4dyQW4sPWAd
XdThjGiOS5c34Yk1Nku7qda2Ngy72JPWCHZqcjSVcYq3t1Gy+vu/ps9RMROr+YpKxuWKL/TrlLyW
Zh2s1jF/RY+cQnbzAx2zQsuv2ZPwNMayv35zzsH+E2/sdw4gJrfsW/w8xon69M1K3HcyMHXkz1pG
1ARD2+r4X9TrUNmF0tsMGU//Yq8sDKs8tuZLEOMFXqiNt0cSO92lNunfvlgC+6Cj95Gmz5Ish4Ig
r738ysD14QJqX76mKB6uVjoans0SqrslykUdPdXRj20/YDNoBxGuDWORrvw8a+D0ZzLpNcW93Gm/
r4qqEqCyuKWwdue6gTrnRci11oxYSXG2gbTTYyQgn5mTS0RtpPG3q2EK

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LJGqd6SmZEGyn3I/RZHXQDVLBpUYHBXayfZsoC5aqeLzXio9mjP2jJJqiWGIFKE2XwVHURSLgk3G
H6kZmy4xc/KwiCHLNDWfqT6xXQrIiSgtx2D2iQuIyan4ExV7UT3qq4nT3VF8kLCvJmqTccLcd2f+
R+Xf2qDVdUDvGNnlmH41l4y4A/qSyULjdD4vQ5ECMXEvaa8cTlKxZakGA1WiCIfA8uSoTlpjQR0s
iMrT9wUgFuMs8+Dc02CQSSSo4pMYfhhXwronggT6BjjTGXR1+szUNBMU8lXyWTwEGb9cN4SZeasL
Wm0l1nbbrKwTQ730SeohB0aRd3zwOs4F3cHT0g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2nLT8Zvs6vla9f81jsNW2RPpEaJf9tKjV66ah5MzvkCo0kdwmi/psLyzofjZoAxPTJey7vNkD+OP
ig7ZThoxVTDJVMGERrfG8uaJ+LUCvPiCwnKn73vgpEMD7qP9g1VskXBf6CudHgaap8bDBgfVWITL
QExOCeVFUk9u93wTJdHimIoe6Ebg6RFmktgHJq1nNw6TYsKCwDY4E1Jg3vwGV5uT92yAW4PKYrDN
YGfeq3IIs+jiZrIZs1ffc3SAce6LLc62T3d8XglbzgKthxxcUc6Re4XKxVPp69nMLKsxTcvANNI0
Vgm0AGrkFuF+eBGT4Evi8c2RUBUZur4CgcKCwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bC7WF7hkz2L9eff+WtabxVTqD0ohNl7V54dbTlcmUuGjzlS7+etjYyf1ZmKyTxgZlI8CcGY3aLUm
g4gMZWQTkwQ2EABmYmtgG8B1CQOJdk0H16y1P3Ngef0kUT/4xGcurqPGqt8djCWLAJYHkIS0viNB
1s3Od9+84/L2xjU3GaQhc2e9u2OFVjrPCAKk0Ygmig+kgae5wRHqq16qz/+bWFyJe0O9cHyCjTtn
7/8jzeGuU0eaJfh0NrMBjbYxyV69oQjDU8ns6UMON/gG/Bos1va7j8dyIdYh6IGHeUSqr6LBTN7Q
2R4uEizA0QWc+/BV1v+nRTAIxxrJg5+4QWqljg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22144)
`pragma protect data_block
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
9Yzb3pA4HGTpGpQmDW8bfQwjK7uxXPAVIAMj4w==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
