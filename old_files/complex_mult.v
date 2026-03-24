//////////////////////////////////////////////////////////////////////////////
// Module: complex_mult
// Description: Double-Precision (64-bit) Floating Point complex multiplier. 
//
// IEEE 754 Double Format:
//   [63]    Sign (1 bit)
//   [62:52] Exponent (11 bits, bias <= 1023)
//   [51:0]  Mantissa/Fraction (52 bits, implicit leading 1 for normals)
//////////////////////////////////////////////////////////////////////////////

module complex_mult(
	input wire clk,
	input wire rst,
	input wire [63:0] a_data,
	input wire [63:0] b_data,
	input wire [63:0] c_data,
	input wire [63:0] d_data,
	input wire input_valid,
	input wire output_ready,
	output wire [63:0] outi_data,
	output wire [63:0] outr_data,
	output wire input_ready,
	output wire output_valid
	);
	
	// -----------------------------------------------------------------------
    // Internal regs for handshakes and input value storage; assigned to wires.
    // -----------------------------------------------------------------------
	reg input_ready_reg, output_valid_reg;
	reg [63:0] a, b, c, d, outi, outr;
	
	assign input_ready = input_ready_reg;
	assign outi_data = outi;
	assign outr_data = outr;
	assign output_valid = output_valid_reg;
	
	// -----------------------------------------------------------------------
    // Internal regs for intermediate values and fpus; assigned to wires.
    // -----------------------------------------------------------------------
	
	reg [63:0] fpu1a, fpu1b, fpu2a, fpu2b;
	reg [63:0] p1, p2, p3, p32, apb, cpd;
	reg [63:0] ri, rr;
    reg [1:0] fpu1_op, fpu2_op;	
	wire [4:0] fpu1_flags, fpu2_flags;
	wire [63:0] fpu1_result, fpu2_result;

	
	// -----------------------------------------------------------------------
    // Operation encoding for FPUs
    // -----------------------------------------------------------------------
    localparam OP_ADD = 2'b00;
    localparam OP_SUB = 2'b01;
    localparam OP_MUL = 2'b10;
	
	// -----------------------------------------------------------------------
    // FPU instances
    // -----------------------------------------------------------------------
	fp64_fpu fpu1(
		.a_data			(fpu1a),
		.b_data			(fpu1b),
		.op				(fpu1_op),
		.result			(fpu1_result),
		.flags			(fpu1_flags)
	);
	
	fp64_fpu fpu2(
		.a_data			(fpu2a),
		.b_data			(fpu2b),
		.op				(fpu2_op),
		.result			(fpu2_result),
		.flags			(fpu2_flags)
	);
	
	// -----------------------------------------------------------------------
    // State switching variables
    // -----------------------------------------------------------------------
	
	reg [3:0] switch;
	parameter 	set_values 	= 4'b0000,
				set1_fpu1	= 4'b0001,
				set1_fpu2 	= 4'b0010,
				get1	   	= 4'b0011,
				set2_fpu1	= 4'b0100,
				set2_fpu2	= 4'b0101,
				get2		= 4'b0110,
				set3_fpu1 	= 4'b0111,
				set3_fpu2	= 4'b1000,
				get3		= 4'b1001,
				set4_fpu1	= 4'b1010,
				set4_fpu2	= 4'b1011,
				get4		= 4'b1100,
				get5		= 4'b1101,
				set_out		= 4'b1110;
	
	initial begin
		input_ready_reg = 0;
		output_valid_reg = 0;
		switch = set_values;
	end
	
	always @(posedge clk) 
	begin
		if(rst == 1)
			begin
				switch = set_values;
				input_ready_reg = 0;
				output_valid_reg = 0;
			end
		else 
		
		case(switch)
			// Data in handshake
			set_values:
			begin
				input_ready_reg = 1;
				if(input_ready && input_valid)
					begin
						a = a_data;
						b = b_data;
						c = c_data;
						d = d_data;
						input_ready_reg = 0;
						switch = set1_fpu1;
					end
			end
			
			
			// First fpu result set.
			// a * c
			set1_fpu1:
			begin	
				fpu1_op = OP_MUL;
				fpu1a = a;
				fpu1b = c;
				switch = set1_fpu2;
			end

			// b * d
			set1_fpu2:
			begin
				fpu2_op = OP_MUL;
				fpu2a = b;
				fpu2b = d;
				switch = get1;
			end
		  
			get1:
			begin
                p1 = fpu1_result;
                p2 = fpu2_result;
                switch = set2_fpu1;
			end
			
			// Second fpu result set.
			// a + b
			set2_fpu1:
			begin
				fpu1_op = OP_ADD;
				fpu1a = a;
				fpu1b = b;
				switch = set2_fpu2;
			end
			
			// c + d 
			set2_fpu2:
			begin
				fpu2_op = OP_ADD;
				fpu2a = c;
				fpu2b = d;
				switch = get2;
			end

			get2:
			begin
			     apb = fpu1_result;
                 cpd = fpu2_result;
                 switch = set3_fpu1;
			end
			
			// Third fpu result set.
			// (a + b)(c + d)
			set3_fpu1:
			begin
				fpu1_op = OP_MUL;
				fpu1a = apb;
				fpu1b = cpd;
				switch = set3_fpu2;
			end
			
			// p1 - p2
			set3_fpu2:
			begin
				fpu2_op = OP_SUB;
				fpu2a = p1;
				fpu2b = p2;
				switch = get3;
			end
			
			get3:
			begin
                p3 = fpu1_result;
                rr = fpu2_result;
                switch = set4_fpu1;
			end
			
			// Fourth fpu result set.
			// p3 - p2
			set4_fpu1:
			begin
				fpu1_op = OP_SUB;
				fpu1a = p3;
				fpu1b = p2;
				switch = get4;
			end
			
			get4:
			begin
                p32 = fpu1_result;
                switch = set4_fpu2;
			end
			
			// p32 - p1
			set4_fpu2:
			begin
				fpu2_op = OP_SUB;
				fpu2a = p32;
				fpu2b = p1;
				switch = get5;
			end
		
			get5:
			begin
			    ri = fpu2_result;
				switch = set_out;
			end
			
			// Data out handshake
			set_out:
			begin
				outi = ri;
				outr = rr;
				output_valid_reg = 1;    
				if(output_valid && output_ready)
					begin
						output_valid_reg = 0;
						switch = set_values;
					end
			end
		endcase
	end
endmodule
