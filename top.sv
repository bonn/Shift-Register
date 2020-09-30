
// Jordan Bonn
// EE 4321 Assignment 3
//  Top Module





module top ; 

logic top_clk, top_clk_inh, top_ser_in, top_shift_Nload, top_N_clr;
logic [7:0] top_par_in;
logic top__q_h;

logic top_test = 1'b1;





	
	testbench  testbench_1(.bench_ser_in(top_ser_in),.bench_par_in(top_par_in),.bench_clk(top_clk), .bench_clk_inh(top_clk_inh), .bench_N_clr(top_N_clr), .bench_shift_Nload(top_shift_Nload), .bench__q_h(top__q_h));
	
	s_reg reg_1(.ser_in(top_ser_in), .par_in(top_par_in), .clk(top_clk), .clk_inh(top_clk_inh), .N_clr(top_N_clr),  .shift_Nload(top_shift_Nload), .q_out(top__q_h));



endmodule
