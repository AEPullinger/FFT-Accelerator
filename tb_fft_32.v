module tb_fft_32;
	// Data registers
	reg [63:0] inr_0_reg;
	reg [63:0] ini_0_reg;
	reg [63:0] inr_1_reg;
	reg [63:0] ini_1_reg;
	reg [63:0] inr_2_reg;
	reg [63:0] ini_2_reg;
	reg [63:0] inr_3_reg;
	reg [63:0] ini_3_reg;
	reg [63:0] inr_4_reg;
	reg [63:0] ini_4_reg;
	reg [63:0] inr_5_reg;
	reg [63:0] ini_5_reg;
	reg [63:0] inr_6_reg;
	reg [63:0] ini_6_reg;
	reg [63:0] inr_7_reg;
	reg [63:0] ini_7_reg;
	reg [63:0] inr_8_reg;
	reg [63:0] ini_8_reg;
	reg [63:0] inr_9_reg;
	reg [63:0] ini_9_reg;
	reg [63:0] inr_10_reg; 
	reg [63:0] ini_10_reg; 
	reg [63:0] inr_11_reg; 
	reg [63:0] ini_11_reg; 
	reg [63:0] inr_12_reg; 
	reg [63:0] ini_12_reg; 
	reg [63:0] inr_13_reg; 
	reg [63:0] ini_13_reg; 
	reg [63:0] inr_14_reg; 
	reg [63:0] ini_14_reg; 
	reg [63:0] inr_15_reg; 
	reg [63:0] ini_15_reg; 
	reg [63:0] inr_16_reg; 
	reg [63:0] ini_16_reg; 
	reg [63:0] inr_17_reg; 
	reg [63:0] ini_17_reg; 
	reg [63:0] inr_18_reg; 
	reg [63:0] ini_18_reg; 
	reg [63:0] inr_19_reg; 
	reg [63:0] ini_19_reg; 
	reg [63:0] inr_20_reg; 
	reg [63:0] ini_20_reg; 
	reg [63:0] inr_21_reg; 
	reg [63:0] ini_21_reg; 
	reg [63:0] inr_22_reg; 
	reg [63:0] ini_22_reg; 
	reg [63:0] inr_23_reg; 
	reg [63:0] ini_23_reg; 
	reg [63:0] inr_24_reg; 
	reg [63:0] ini_24_reg; 
	reg [63:0] inr_25_reg; 
	reg [63:0] ini_25_reg; 
	reg [63:0] inr_26_reg; 
	reg [63:0] ini_26_reg; 
	reg [63:0] inr_27_reg; 
	reg [63:0] ini_27_reg; 
	reg [63:0] inr_28_reg; 
	reg [63:0] ini_28_reg; 
	reg [63:0] inr_29_reg; 
	reg [63:0] ini_29_reg; 
	reg [63:0] inr_30_reg; 
	reg [63:0] ini_30_reg; 
	reg [63:0] inr_31_reg; 
	reg [63:0] ini_31_reg; 
	
	wire [63:0] outr_0;
	wire [63:0] outi_0;
	wire [63:0] outr_1;
	wire [63:0] outi_1;
	wire [63:0] outr_2;
	wire [63:0] outi_2;
	wire [63:0] outr_3;
	wire [63:0] outi_3;
	wire [63:0] outr_4;
	wire [63:0] outi_4;
	wire [63:0] outr_5;
	wire [63:0] outi_5;
	wire [63:0] outr_6;
	wire [63:0] outi_6;
	wire [63:0] outr_7;
	wire [63:0] outi_7;
	wire [63:0] outr_8;
	wire [63:0] outi_8;
	wire [63:0] outr_9;
	wire [63:0] outi_9;
	wire [63:0] outr_10;
	wire [63:0] outi_10;
	wire [63:0] outr_11;
	wire [63:0] outi_11;
	wire [63:0] outr_12;
	wire [63:0] outi_12;
	wire [63:0] outr_13;
	wire [63:0] outi_13;
	wire [63:0] outr_14;
	wire [63:0] outi_14;
	wire [63:0] outr_15;
	wire [63:0] outi_15;
	wire [63:0] outr_16;
	wire [63:0] outi_16;
	wire [63:0] outr_17;
	wire [63:0] outi_17;
	wire [63:0] outr_18;
	wire [63:0] outi_18;
	wire [63:0] outr_19;
	wire [63:0] outi_19;
	wire [63:0] outr_20;
	wire [63:0] outi_20;
	wire [63:0] outr_21;
	wire [63:0] outi_21;
	wire [63:0] outr_22;
	wire [63:0] outi_22;
	wire [63:0] outr_23;
	wire [63:0] outi_23;
	wire [63:0] outr_24;
	wire [63:0] outi_24;
	wire [63:0] outr_25;
	wire [63:0] outi_25;
	wire [63:0] outr_26;
	wire [63:0] outi_26;
	wire [63:0] outr_27;
	wire [63:0] outi_27;
	wire [63:0] outr_28;
	wire [63:0] outi_28;
	wire [63:0] outr_29;
	wire [63:0] outi_29;
	wire [63:0] outr_30;
	wire [63:0] outi_30;
	wire [63:0] outr_31;
	wire [63:0] outi_31;
	
	fft_32 uut(
		.inr_0			(inr_0_reg),
        .ini_0			(ini_0_reg), 
		.inr_1			(inr_1_reg),
        .ini_1			(ini_1_reg), 
		.inr_2			(inr_2_reg),
        .ini_2			(ini_2_reg), 
		.inr_3			(inr_3_reg),
        .ini_3			(ini_3_reg), 
		.inr_4			(inr_4_reg),
        .ini_4			(ini_4_reg), 
		.inr_5			(inr_5_reg),
        .ini_5			(ini_5_reg), 
		.inr_6			(inr_6_reg),
        .ini_6			(ini_6_reg), 
		.inr_7			(inr_7_reg),
        .ini_7			(ini_7_reg), 
		.inr_8			(inr_8_reg),
        .ini_8			(ini_8_reg), 
		.inr_9			(inr_9_reg),
        .ini_9			(ini_9_reg), 
		.inr_10			(inr_10_reg),
        .ini_10			(ini_10_reg), 
		.inr_11			(inr_11_reg),
        .ini_11			(ini_11_reg), 
		.inr_12			(inr_12_reg),
        .ini_12			(ini_12_reg), 
		.inr_13			(inr_13_reg),
        .ini_13			(ini_13_reg), 
		.inr_14			(inr_14_reg),
        .ini_14			(ini_14_reg), 
		.inr_15			(inr_15_reg),
        .ini_15			(ini_15_reg), 
		.inr_16			(inr_16_reg),
        .ini_16			(ini_16_reg), 
		.inr_17			(inr_17_reg),
        .ini_17			(ini_17_reg), 
		.inr_18			(inr_18_reg),
        .ini_18			(ini_18_reg), 
		.inr_19			(inr_19_reg),
        .ini_19			(ini_19_reg), 
		.inr_20			(inr_20_reg),
        .ini_20			(ini_20_reg), 
		.inr_21			(inr_21_reg),
        .ini_21			(ini_21_reg), 
		.inr_22			(inr_22_reg),
        .ini_22			(ini_22_reg), 
		.inr_23			(inr_23_reg),
        .ini_23			(ini_23_reg), 
		.inr_24			(inr_24_reg),
        .ini_24			(ini_24_reg), 
		.inr_25			(inr_25_reg),
        .ini_25			(ini_25_reg), 
		.inr_26			(inr_26_reg),
        .ini_26			(ini_26_reg), 
		.inr_27			(inr_27_reg),
        .ini_27			(ini_27_reg), 
		.inr_28			(inr_28_reg),
        .ini_28			(ini_28_reg), 
		.inr_29			(inr_29_reg),
        .ini_29			(ini_29_reg), 
		.inr_30			(inr_30_reg),
        .ini_30			(ini_30_reg), 
		.inr_31			(inr_31_reg),
        .ini_31			(ini_31_reg),
		.outr_0				(outr_0),
        .outi_0				(outi_0),
		.outr_1				(outr_1),
        .outi_1				(outi_1),
		.outr_2				(outr_2),
        .outi_2				(outi_2),
		.outr_3				(outr_3),
        .outi_3				(outi_3),
		.outr_4				(outr_4),
        .outi_4				(outi_4),
		.outr_5				(outr_5),
        .outi_5				(outi_5),
		.outr_6				(outr_6),
        .outi_6				(outi_6),
		.outr_7				(outr_7),
        .outi_7				(outi_7),
		.outr_8				(outr_8),
        .outi_8				(outi_8),
		.outr_9				(outr_9),
        .outi_9				(outi_9),
		.outr_10			(outr_10),
        .outi_10			(outi_10),
		.outr_11			(outr_11),
        .outi_11			(outi_11),
		.outr_12			(outr_12),
        .outi_12			(outi_12),
		.outr_13			(outr_13),
        .outi_13			(outi_13),
		.outr_14			(outr_14),
        .outi_14			(outi_14),
		.outr_15			(outr_15),
        .outi_15			(outi_15),
		.outr_16			(outr_16),
        .outi_16			(outi_16),
		.outr_17			(outr_17),
        .outi_17			(outi_17),
		.outr_18			(outr_18),
        .outi_18			(outi_18),
		.outr_19			(outr_19),
        .outi_19			(outi_19),
		.outr_20			(outr_20),
        .outi_20			(outi_20),
		.outr_21			(outr_21),
        .outi_21			(outi_21),
		.outr_22			(outr_22),
        .outi_22			(outi_22),
		.outr_23			(outr_23),
        .outi_23			(outi_23),
		.outr_24			(outr_24),
        .outi_24			(outi_24),
		.outr_25			(outr_25),
        .outi_25			(outi_25),
		.outr_26			(outr_26),
        .outi_26			(outi_26),
		.outr_27			(outr_27),
        .outi_27			(outi_27),
		.outr_28			(outr_28),
        .outi_28			(outi_28),
		.outr_29			(outr_29),
        .outi_29			(outi_29),
		.outr_30			(outr_30),
        .outi_30			(outi_30),
		.outr_31			(outr_31),
        .outi_31			(outi_31)
	);
	
	// -------------------------------------------------------------------
    // IEEE 754 double constants
    // -------------------------------------------------------------------
    localparam [63:0] POS_ZERO  = 64'h0000_0000_0000_0000;
    localparam [63:0] NEG_ZERO  = 64'h8000_0000_0000_0000;
    localparam [63:0] ONE       = 64'h3FF0_0000_0000_0000; // 1.0
    localparam [63:0] TWO       = 64'h4000_0000_0000_0000; // 2.0
    localparam [63:0] THREE     = 64'h4008_0000_0000_0000; // 3.0
    localparam [63:0] FOUR      = 64'h4010_0000_0000_0000; // 4.0
    localparam [63:0] FIVE      = 64'h4014_0000_0000_0000; // 5.0
    localparam [63:0] SIX       = 64'h4018_0000_0000_0000; // 6.0
	localparam [63:0] SEVEN     = 64'h401C_0000_0000_0000; // 7.0
    localparam [63:0] EIGHT     = 64'h4020_0000_0000_0000; // 8.0
	localparam [63:0] TEN       = 64'h4024_0000_0000_0000; // 10.0
    localparam [63:0] TWENTY    = 64'h4034_0000_0000_0000; // 20.0
	localparam [63:0] HALF      = 64'h3FE0_0000_0000_0000; // 0.5
    localparam [63:0] ONE_HALF  = 64'h3FF8_0000_0000_0000; // 1.5
    localparam [63:0] NEG_ONE   = 64'hBFF0_0000_0000_0000; // -1.0
    localparam [63:0] NEG_TWO   = 64'hC000_0000_0000_0000; // -2.0
    localparam [63:0] POS_INF   = 64'h7FF0_0000_0000_0000;
    localparam [63:0] NEG_INF   = 64'hFFF0_0000_0000_0000;
    localparam [63:0] QNAN      = 64'h7FF8_0000_0000_0000;
	
	initial 
	begin
		$display("==========================================================");
		$display("              FFT Butterfly Testbench");
		$display("==========================================================");
		
		inr_0_reg = ONE;
        ini_0_reg = POS_ZERO;
		inr_1_reg = TWO;
        ini_1_reg = POS_ZERO;
		inr_2_reg = THREE;
        ini_2_reg = POS_ZERO;
		inr_3_reg = ONE;
        ini_3_reg = POS_ZERO;
		inr_4_reg = TWO;
        ini_4_reg = POS_ZERO;
		inr_5_reg = THREE;
        ini_5_reg = POS_ZERO;
		inr_6_reg = ONE;
        ini_6_reg = POS_ZERO;
		inr_7_reg = TWO;
        ini_7_reg = POS_ZERO;
		inr_8_reg = THREE;
        ini_8_reg = POS_ZERO;
		inr_9_reg = ONE;
        ini_9_reg = POS_ZERO;
		inr_10_reg = TWO;
        ini_10_reg = POS_ZERO;
		inr_11_reg = THREE;
        ini_11_reg = POS_ZERO;
		inr_12_reg = ONE;
        ini_12_reg = POS_ZERO;
		inr_13_reg = TWO;
        ini_13_reg = POS_ZERO;
		inr_14_reg = THREE;
        ini_14_reg = POS_ZERO;
		inr_15_reg = ONE;
        ini_15_reg = POS_ZERO;
		inr_16_reg = TWO;
        ini_16_reg = POS_ZERO;
		inr_17_reg = THREE;
        ini_17_reg = POS_ZERO;
		inr_18_reg = ONE;
        ini_18_reg = POS_ZERO;
		inr_19_reg = TWO;
        ini_19_reg = POS_ZERO;
		inr_20_reg = THREE;
        ini_20_reg = POS_ZERO;
		inr_21_reg = ONE;
        ini_21_reg = POS_ZERO;
		inr_22_reg = TWO;
        ini_22_reg = POS_ZERO;
		inr_23_reg = THREE;
        ini_23_reg = POS_ZERO;
		inr_24_reg = ONE;
        ini_24_reg = POS_ZERO;
		inr_25_reg = TWO;
        ini_25_reg = POS_ZERO;
		inr_26_reg = THREE;
        ini_26_reg = POS_ZERO;
		inr_27_reg = ONE;
        ini_27_reg = POS_ZERO;
		inr_28_reg = TWO;
        ini_28_reg = POS_ZERO;
		inr_29_reg = THREE;
        ini_29_reg = POS_ZERO;
		inr_30_reg = ONE;
        ini_30_reg = POS_ZERO;
		inr_31_reg = TWO;
        ini_31_reg = POS_ZERO;
/*
		#20
		inr_0_reg = TWO;
        ini_0_reg = POS_ZERO;
		inr_1_reg = TWO;
        ini_1_reg = POS_ZERO;
		inr_2_reg = TWO;
        ini_2_reg = POS_ZERO;
		inr_3_reg = TWO;
        ini_3_reg = POS_ZERO;
		inr_4_reg = TWO;
        ini_4_reg = POS_ZERO;
		inr_5_reg = TWO;
        ini_5_reg = POS_ZERO;
		inr_6_reg = TWO;
        ini_6_reg = POS_ZERO;
		inr_7_reg = TWO;
        ini_7_reg = POS_ZERO;
		inr_8_reg = TWO;
        ini_8_reg = POS_ZERO;
		inr_9_reg = TWO;
        ini_9_reg = POS_ZERO;
		inr_10_reg = TWO;
        ini_10_reg = POS_ZERO;
		inr_11_reg = TWO;
        ini_11_reg = POS_ZERO;
		inr_12_reg = TWO;
        ini_12_reg = POS_ZERO;
		inr_13_reg = TWO;
        ini_13_reg = POS_ZERO;
		inr_14_reg = TWO;
        ini_14_reg = POS_ZERO;
		inr_15_reg = TWO;
        ini_15_reg = POS_ZERO;
		inr_16_reg = TWO;
        ini_16_reg = POS_ZERO;
		inr_17_reg = TWO;
        ini_17_reg = POS_ZERO;
		inr_18_reg = TWO;
        ini_18_reg = POS_ZERO;
		inr_19_reg = TWO;
        ini_19_reg = POS_ZERO;
		inr_20_reg = TWO;
        ini_20_reg = POS_ZERO;
		inr_21_reg = TWO;
        ini_21_reg = POS_ZERO;
		inr_22_reg = TWO;
        ini_22_reg = POS_ZERO;
		inr_23_reg = TWO;
        ini_23_reg = POS_ZERO;
		inr_24_reg = TWO;
        ini_24_reg = POS_ZERO;
		inr_25_reg = TWO;
        ini_25_reg = POS_ZERO;
		inr_26_reg = TWO;
        ini_26_reg = POS_ZERO;
		inr_27_reg = TWO;
        ini_27_reg = POS_ZERO;
		inr_28_reg = TWO;
        ini_28_reg = POS_ZERO;
		inr_29_reg = TWO;
        ini_29_reg = POS_ZERO;
		inr_30_reg = TWO;
        ini_30_reg = POS_ZERO;
		inr_31_reg = TWO;
        ini_31_reg = POS_ZERO;

		#20
		inr_0_reg = THREE;
        ini_0_reg = POS_ZERO;
		inr_1_reg = THREE;
        ini_1_reg = POS_ZERO;
		inr_2_reg = THREE;
        ini_2_reg = POS_ZERO;
		inr_3_reg = THREE;
        ini_3_reg = POS_ZERO;
		inr_4_reg = THREE;
        ini_4_reg = POS_ZERO;
		inr_5_reg = THREE;
        ini_5_reg = POS_ZERO;
		inr_6_reg = THREE;
        ini_6_reg = POS_ZERO;
		inr_7_reg = THREE;
        ini_7_reg = POS_ZERO;
		inr_8_reg = THREE;
        ini_8_reg = POS_ZERO;
		inr_9_reg = THREE;
        ini_9_reg = POS_ZERO;
		inr_10_reg = THREE;
        ini_10_reg = POS_ZERO;
		inr_11_reg = THREE;
        ini_11_reg = POS_ZERO;
		inr_12_reg = THREE;
        ini_12_reg = POS_ZERO;
		inr_13_reg = THREE;
        ini_13_reg = POS_ZERO;
		inr_14_reg = THREE;
        ini_14_reg = POS_ZERO;
		inr_15_reg = THREE;
        ini_15_reg = POS_ZERO;
		inr_16_reg = THREE;
        ini_16_reg = POS_ZERO;
		inr_17_reg = THREE;
        ini_17_reg = POS_ZERO;
		inr_18_reg = THREE;
        ini_18_reg = POS_ZERO;
		inr_19_reg = THREE;
        ini_19_reg = POS_ZERO;
		inr_20_reg = THREE;
        ini_20_reg = POS_ZERO;
		inr_21_reg = THREE;
        ini_21_reg = POS_ZERO;
		inr_22_reg = THREE;
        ini_22_reg = POS_ZERO;
		inr_23_reg = THREE;
        ini_23_reg = POS_ZERO;
		inr_24_reg = THREE;
        ini_24_reg = POS_ZERO;
		inr_25_reg = THREE;
        ini_25_reg = POS_ZERO;
		inr_26_reg = THREE;
        ini_26_reg = POS_ZERO;
		inr_27_reg = THREE;
        ini_27_reg = POS_ZERO;
		inr_28_reg = THREE;
        ini_28_reg = POS_ZERO;
		inr_29_reg = THREE;
        ini_29_reg = POS_ZERO;
		inr_30_reg = THREE;
        ini_30_reg = POS_ZERO;
		inr_31_reg = THREE;
        ini_31_reg = POS_ZERO;
        */
	end
endmodule