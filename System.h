#ifndef SYSTEM_PARALLEL_H_
#define SYSTEM_PARALLEL_H_
#include <systemc>

#include "Testbench.h"
// #include "SimpleBus.h"
// #include "TlmMemory.h"
#ifndef NATIVE_SYSTEMC
#include "DWT1_wrap.h"
#include "DWT2_wrap.h"
#include "PAD1_wrap.h"
#include "PAD2_wrap.h"
#else
#include "DWT1.h"
#include "DWT2.h"
#include "PAD1.h"
#include "PAD2.h"
#endif



using namespace sc_core;
class System: public sc_module
{
public:
	SC_HAS_PROCESS( System );
	System( sc_module_name n, std::string input_data, std::string output_data );
	~System();
private:
  Testbench tb;
#ifndef NATIVE_SYSTEMC
	DWT1_wrapper dwt_1;
	DWT2_wrapper dwt_2;
	PAD1_wrapper pad_1;
	PAD2_wrapper pad_2;
#else
	DWT1 dwt_1;
	DWT2 dwt_2;
	PAD1 pad_1;
	PAD2 pad_2;	
#endif
	sc_clock clk;
	sc_signal<bool> rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_int<36> > spike;
	cynw_p2p< sc_dt::sc_int<36> > spike_ext;
	cynw_p2p< sc_dt::sc_int<36> > D1;
	cynw_p2p< sc_dt::sc_int<36> > D2;
	cynw_p2p< sc_dt::sc_int<36> > A1;
	cynw_p2p< sc_dt::sc_int<36> > A1_ext;
	cynw_p2p< sc_dt::sc_int<36> > A2;
#else
	sc_fifo< sc_dt::sc_int<36> > spike;
	sc_fifo< sc_dt::sc_int<36> > spike_ext;
	sc_fifo< sc_dt::sc_int<36> > D1;
	sc_fifo< sc_dt::sc_int<36> > D2;
	sc_fifo< sc_dt::sc_int<36> > A1;
	sc_fifo< sc_dt::sc_int<36> > A1_ext;
	sc_fifo< sc_dt::sc_int<36> > A2;
#endif

	std::string _output_data;
};
#endif
