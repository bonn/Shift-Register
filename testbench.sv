
// Jordan Bonn
// EE 4321 Assignment 3
//  Testbench Module





module testbench ( bench_clk, bench_clk_inh, bench_par_in, bench_ser_in, bench_shift_Nload, bench_N_clr, bench__q_h);

	output logic bench_clk, bench_clk_inh, bench_ser_in, bench_shift_Nload, bench_N_clr;
	
	
	
	output logic [7:0] bench_par_in;
	
	input logic bench__q_h;
	
	
	
	
	initial begin
		bench_clk = 1;

		bench_clk_inh = 0;
		bench_ser_in = 0;
		bench_shift_Nload = 0;
		bench_N_clr = 1;
		
		forever #5 bench_clk = ~bench_clk;
	end
	
	
	
	initial begin
		
		#10 bench_N_clr = 0;
				
		#10 bench_N_clr = 1;
		
		
		bench_par_in = 8'b11110000;
		bench_shift_Nload = 1'b1;
		#5;
		bench_clk_inh = 1'b1;
		#5 bench_ser_in = 1'b0;
		#5 bench_ser_in = 1'b1;
		#5 bench_ser_in = 1'b0;
		#5 bench_ser_in = 1'b1;
		#5 bench_ser_in = 1'b0;
		#5 bench_ser_in = 1'b1;
		#5 bench_ser_in = 1'b0;
		#5 bench_ser_in = 1'b1;
		
		bench_clk_inh = 1'b0;
		#80;
		
		#80;
		#5 bench_clk_inh = 1'b1;

		#5 bench_par_in = 8'b10101010;
		#5 bench_shift_Nload = 1'b0;
		#5 	bench_shift_Nload = ~bench_shift_Nload;
		#250
		
		
		
		
		
		$stop;
	end
	
endmodule