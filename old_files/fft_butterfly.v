//////////////////////////////////////////////////////////////////////////////
// Module: FFT Butterfly
// Description: Double-Precision (64-bit) Floating Point FFT multiplier.
//
//////////////////////////////////////////////////////////////////////////////

module fft_butterfly(
	input wire 			clk,
	input wire 			rst,
	input wire [63:0] 	a_imag,
	input wire [63:0] 	a_real,
	input wire [63:0] 	b_imag, 
	input wire [63:0] 	b_real,
	input wire [63:0] 	w_imag, 
	input wire [63:0] 	w_real,
	input wire			input_valid,
	output wire 		input_ready,
	output wire	[63:0] 	x_imag,
	output wire	[63:0]	x_real,
	output wire [63:0]  y_imag,
	output wire [63:0] 	y_real,
	output wire			output_valid,
	input wire 			output_ready
	);

    
	// -----------------------------------------------------------------------
    // Regs and wires for butterfly
    // -----------------------------------------------------------------------
	reg [63:0] ai_reg, ar_reg, bi_reg, br_reg, wi_reg, wr_reg, xi_reg, xr_reg, yi_reg, yr_reg;
	reg input_valid_reg, input_ready_reg, output_valid_reg, output_ready_reg;
	wire [63:0] ai, ar, bi, br, wi, wr;
	reg [2:0] counter;
	
	assign input_ready = input_ready_reg;
	assign output_valid = output_valid_reg;
	
	assign ai = ai_reg;
	assign ar = ar_reg;
	assign bi = bi_reg;
	assign br = br_reg;
	assign wi = wi_reg;
	assign wr = wr_reg;
	assign x_imag = xi_reg;
	assign x_real = xr_reg;
	assign y_imag = yi_reg;
	assign y_real = yr_reg;
	
	// -----------------------------------------------------------------------
    // Regs and wires for complex multiplier
    // -----------------------------------------------------------------------
	reg [63:0] mult_outi_reg, mult_outr_reg;
	reg mult_out_ready_reg, mult_input_valid_reg;
	
	wire [63:0] mult_resulti, mult_resultr;
	wire [63:0] mult_outi, mult_outr;
	wire mult_input_ready, mult_input_valid, mult_out_valid, mult_out_ready;
	
	assign mult_outi = mult_outi_reg;
	assign mult_outr = mult_outr_reg;
	assign mult_out_ready = mult_out_ready_reg;
	assign mult_input_valid = mult_input_valid_reg;
	
	// -----------------------------------------------------------------------
    // Regs and wires for fpus
    // -----------------------------------------------------------------------
	reg [63:0] fpu1a, fpu1b, fpu2a, fpu2b, fpu3a, fpu3b, fpu4a, fpu4b;
	reg [1:0] fpu1_op, fpu2_op, fpu3_op, fpu4_op;
	wire [63:0] fpu1_result, fpu2_result, fpu3_result, fpu4_result;
	
	// -----------------------------------------------------------------------
    // Operation encoding for FPUs
    // -----------------------------------------------------------------------
    localparam OP_ADD = 2'b00;
    localparam OP_SUB = 2'b01;
    localparam OP_MUL = 2'b10;
	
	// -----------------------------------------------------------------------
    // State switching variables
    // -----------------------------------------------------------------------
	
	reg [3:0] switch;
	parameter 	set_ar 		= 4'b0000,
				set_ai 		= 4'b0001,
				set_br 		= 4'b0010,
				set_bi 		= 4'b0011,
				set_wr		= 4'b0100,
				set_wi	 	= 4'b0101,
				set_mult	= 4'b0110,
				get_mult	= 4'b0111,
				set_fpus	= 4'b1000,
				get_fpus	= 4'b1001,
				set_out 	= 4'b1010;
	
	// -----------------------------------------------------------------------
    // Submodules
    // -----------------------------------------------------------------------
	complex_mult cmult(
		.clk		    (clk),
		.rst			(rst),
		.a_data			(br),
		.b_data			(bi),
		.c_data			(wr),
		.d_data			(wi),
		.input_valid	(mult_input_valid),
		.output_ready	(mult_out_ready),
		.outi_data		(mult_resulti),
		.outr_data		(mult_resultr),
		.input_ready	(mult_input_ready),
		.output_valid	(mult_out_valid)
	);
	
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
	
	fp64_fpu fpu3(
		.a_data			(fpu3a),
		.b_data			(fpu3b),
		.op				(fpu3_op),
		.result			(fpu3_result),
		.flags			(fpu3_flags)
	);
	
	fp64_fpu fpu4(
		.a_data			(fpu4a),
		.b_data			(fpu4b),
		.op				(fpu4_op),
		.result			(fpu4_result),
		.flags			(fpu4_flags)
	);
	
	initial begin
		input_ready_reg = 0;
		output_valid_reg = 0;
		mult_input_valid_reg = 0;
		mult_out_ready_reg = 0;
		fpu1_op = OP_MUL;
		fpu2_op = OP_ADD;
		fpu3_op = OP_MUL;
		fpu4_op = OP_ADD;
		counter = 0;
		switch = set_ar;
	end
	
	
	always @(posedge clk)
	begin
	
	if(rst == 1)
	begin
	    switch = set_ar;
		input_ready_reg = 0;
		output_valid_reg = 0;
		mult_input_valid_reg = 0;
		mult_out_ready_reg = 0;
		fpu1_op = OP_SUB;
		fpu2_op = OP_ADD;
		fpu3_op = OP_SUB;
		fpu4_op = OP_ADD;
		counter = 3'b000;
	end
	
	case(switch)
	// Set values
	// Real first, then imaginary, to match common storage schemes.
		set_ar:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					ar_reg = a_real;
					input_ready_reg = 0;
					switch = set_ai;
				end
		end
		
		set_ai:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					ai_reg = a_imag;
					input_ready_reg = 0;
					switch = set_br;
				end
		end
		
		set_br:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					br_reg = b_real;
					input_ready_reg = 0;
					switch = set_bi;
				end
		end
		
		set_bi:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					bi_reg = b_imag;
					input_ready_reg = 0;
					switch = set_wr;
				end
		end
		
				
		set_wr:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					wr_reg = w_real;
					input_ready_reg = 0;
					switch = set_wi;
				end
		end
		
		set_wi:
		begin
			input_ready_reg = 1;
			if(input_ready && input_valid)
				begin
					wi_reg = w_imag;
					input_ready_reg = 0;
					switch = set_mult;
				end
		end
		
		// Get values of B x W
		set_mult:
		begin
			mult_input_valid_reg = 1;
			if(counter == 3'b001)
				begin
					mult_input_valid_reg = 0;
					counter = 3'b000;
					switch = get_mult;
				end
			else
				begin
					counter = counter + 3'b001;
				end
		end
		
		get_mult:
		begin
			mult_out_ready_reg = 1;
			if(mult_out_ready && mult_out_valid)
			begin
				mult_outi_reg = mult_resulti;
				mult_outr_reg = mult_resultr;
				mult_out_ready_reg = 0;
				switch = set_fpus;
			end
		end
		
		// Get result values from all FPUs
		set_fpus:
		begin
			// FPU1: Ai x (B x W)i = Yi
			fpu1a = ai_reg;
			fpu1b = mult_outi_reg;
			
			// FPU2: Ai + (B x W)i = Xi
			fpu2a = ai_reg;
			fpu2b = mult_outi_reg;
			
			// FPU3: Ar x (B x W)r = Yr
			fpu3a = ar_reg;
			fpu3b = mult_outr_reg;
			
			// FPU4: Ar + (B x W)r = Xr
			fpu4a = ar_reg;
			fpu4b = mult_outr_reg;
			
			switch = get_fpus;
		end
		
		get_fpus:
		begin
			if(counter == 3'b001)
				begin
					yi_reg = fpu1_result;
					xi_reg = fpu2_result;
					yr_reg = fpu3_result;
					xr_reg = fpu4_result;
					
					counter = 3'b000;
					switch = set_out;
				end
			else 
				begin
					counter = counter + 3'b001;
				end
		end
		
		// Send output
		set_out:
		begin
			output_valid_reg = 1;
			if(output_valid && output_ready) begin
				output_valid_reg = 0;
				switch = set_ar;
			end
		end
		endcase
	end
endmodule