
// Jordan Bonn
// EE 4321 Assignment 3
//  Shift Register Module
//   This module is coded to act as a TI model SN74ALS166 IC
// inspiration for the code below was taken from https://physerver.hamilton.edu/people/bcollett/Verilog4.html
//    https://verilogbynaresh.blogspot.com/2013/07/design-of-parallel-in-serial-out-shift.html




module s_reg(ser_in, par_in, clk_inh, clk, N_clr, q_out, shift_Nload);



			// Inputs ser_in = Serial Inputs
			// par_a, par_b, par_c, par_d,, par_e, par_f, par_g, par_h,
			// Inputs par_in = Parallel Inputs A-H
			// Inputs clk = Serial Inputs
			// Inputs clk_inh = Serial Inputs
			// Inputs N_clr = Serial Inputs
			// Inputs shift_Nload = shifts the data along the register when high/ loads all data in parallel when low
			// Output q_out = Serial Output
	

	input logic ser_in, clk, clk_inh, N_clr, shift_Nload;
	

	
	input logic [7:0] par_in;
		
	output logic q_out;
	
	logic [7:0] buffer;

////////////////////////////////////////////////////////		
	
	

	


		

			always_ff @(posedge clk) begin
		
														
		
		
					if ( ~N_clr)begin	// While clr his high normal operation will occur, when low it will reset the flip flops to 0	
					
					q_out<=0;		
					buffer<=8'b0;
					end // if
					
					if(shift_Nload) begin						// Shift is high so we will have serial input
					
					   buffer [0] <= ser_in;
					   
					end //else if
					else if(~shift_Nload) begin					// Shift is low so we will have parallel input
						
						
							buffer <= par_in;
							
							end// else if
							
					if(~clk_inh)begin						// if clk inh is low then the register will ouput to q_h a single bit at a time	from the buffer	
					buffer <= buffer<<1;
					 q_out <= buffer [7];

					end //if
							
					
	
	
		
				
			
	
	
			end // always_ff



endmodule

