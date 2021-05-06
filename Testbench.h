#ifndef TESTBENCH_H_
#define TESTBENCH_H_

#include <string>
using namespace std;

#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "dwt_def.h"

class Testbench : public sc_module {
public:
	sc_in_clk i_clk;
	sc_out < bool >  o_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_int<36> >::base_out o_spike;
	cynw_p2p< sc_dt::sc_int<36> >::base_in i_D1;
	cynw_p2p< sc_dt::sc_int<36> >::base_in i_D2;
	cynw_p2p< sc_dt::sc_int<36> >::base_in i_A2;
#else
	sc_fifo_out< sc_dt::sc_int<36> >::base_out o_spike;
	sc_fifo_in< sc_dt::sc_int<36> >::base_in i_D1;
	sc_fifo_in< sc_dt::sc_int<36> >::base_in i_D2;
	sc_fifo_in< sc_dt::sc_int<36> >::base_in i_A2;
#endif

  SC_HAS_PROCESS(Testbench);

  Testbench(sc_module_name n);
  ~Testbench();

  int read_data(string infile_name);
  int write_data(string outfile_name);

private:
    double *source_data;
    double *target_D1;
    double *target_D2;
    double *target_A2;
	
	unsigned int n_txn;
	sc_time max_txn_time;
	sc_time min_txn_time;
	sc_time total_txn_time;
	sc_time total_start_time;
	sc_time total_run_time;

    void feed_spike();
	void fetch_result_L1();
	void fetch_result_L2();
};
#endif
