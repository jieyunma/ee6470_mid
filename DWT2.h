#ifndef DWT2_H_
#define DWT2_H_
#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "dwt_def.h"

class DWT2: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_int<36> >::in i_spike;
	cynw_p2p< sc_dt::sc_int<36> >::out o_D;
	cynw_p2p< sc_dt::sc_int<36> >::out o_A;
#else
	sc_fifo< sc_dt::sc_int<36> >::in i_spike;
	sc_fifo< sc_dt::sc_int<36> >::out o_D;
	sc_fifo< sc_dt::sc_int<36> >::out o_A;
#endif

	SC_HAS_PROCESS( DWT2 );
	DWT2( sc_module_name n );
private:
	void conv();
	sc_dt::sc_int<36> spike_buffer[8];
	sc_dt::sc_int<36> temp_D[8];
	sc_dt::sc_int<36> temp_A[8];	
	sc_dt::sc_int<36> val_D;
	sc_dt::sc_int<36> val_A;
};
#endif