#include "System.h"
System::System( sc_module_name n, string input_data, string output_data ): sc_module( n ),
	tb("tb"), dwt_1("dwt_1"), dwt_2("dwt_2"), clk("clk", CLOCK_PERIOD, SC_NS), rst("rst"), _output_data(output_data)
{
	tb.i_clk(clk);
	tb.o_rst(rst);

	dwt_1.i_clk(clk);
	dwt_1.i_rst(rst);
	dwt_2.i_clk(clk);
	dwt_2.i_rst(rst);

	pad_1.i_clk(clk);
	pad_1.i_rst(rst);
	pad_2.i_clk(clk);
	pad_2.i_rst(rst);

	tb.o_spike(spike);
	pad_1.i_spike(spike);

	pad_1.o_spike(spike_ext);
	dwt_1.i_spike(spike_ext);

	dwt_1.o_A(A1);
	pad_2.i_spike(A1);

	pad_2.o_spike(A1_ext);
	dwt_2.i_spike(A1_ext);
	
	tb.i_D1(D1);
	tb.i_D2(D2);
	tb.i_A2(A2);
	dwt_1.o_D(D1);
	dwt_2.o_D(D2);
	dwt_2.o_A(A2);

	tb.read_data(input_data);
}

System::~System() {
  tb.write_data(_output_data);
}

