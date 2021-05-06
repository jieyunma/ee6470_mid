#ifndef PAD1_H_
#define PAD1_H_
#include <systemc>
using namespace sc_core;



#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "dwt_def.h"

class PAD1: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_int<36> >::in i_spike;
	cynw_p2p< sc_dt::sc_int<36> >::out o_spike;
#else
	sc_fifo< sc_dt::sc_int<36> >::in i_spike;
	sc_fifo< sc_dt::sc_int<36> >::out o_spike;
#endif

	SC_HAS_PROCESS( PAD1 );
	PAD1( sc_module_name n );
private:
	void padding();
	sc_dt::sc_int<36> spike_buffer[12];
};
#endif