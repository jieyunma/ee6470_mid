#include "PAD2.h"

PAD2::PAD2( sc_module_name n ): sc_module( n )
{
	SC_THREAD( padding );
	sensitive << i_clk.pos();
	dont_initialize();
	reset_signal_is(i_rst, false);

#ifndef NATIVE_SYSTEMC
	i_spike.clk_rst(i_clk, i_rst);
    o_spike.clk_rst(i_clk, i_rst);
#endif
}

void PAD2::padding() {
	{
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_spike.reset();
		o_spike.reset();
#endif
		wait();
	}
	while (true) {
                {
			        HLS_CONSTRAIN_LATENCY(0, 12, "lat00");
                    for (unsigned int i = 0; i < 12; i++){
                        HLS_UNROLL_LOOP ( ON, "shift" );
                        spike_buffer[i] = 0;
                    }                    
                    // spike_buffer[0] = 0;
                    // spike_buffer[1] = 0;
                    // spike_buffer[2] = 0;
                    // spike_buffer[3] = 0;
                    // spike_buffer[4] = 0;
                    // spike_buffer[5] = 0;
                    // spike_buffer[6] = 0;
                    // spike_buffer[7] = 0;
                    // spike_buffer[8] = 0;
                    // spike_buffer[9] = 0;
                    // spike_buffer[10] = 0;
                    // spike_buffer[11] = 0;
                }
                unsigned int m;
                for (m = 0; m < L1_EXT_N + 8; m++) {
        			sc_dt::sc_int<36> spike;                        
#ifndef NATIVE_SYSTEMC
                        {
				            HLS_DEFINE_PROTOCOL("input");
                            spike = i_spike.get();
                        }
// cout << "in m = " << m << " = " << spike << endl;
#else
                        spike = i_spike.read();
#endif            
                        {
				            HLS_CONSTRAIN_LATENCY(0, 36, "lat01");
                            if (m < L1_N) {
                                for ( unsigned int i = 0; i < 11; i++ ){
                                    HLS_UNROLL_LOOP ( ON, "shift" );
                                    spike_buffer[i] = spike_buffer[i+1];
                                }
                                spike_buffer[11] = spike;
                            }                            
				            // HLS_CONSTRAIN_LATENCY(0, 12, "lat01");
                            // if (m < L1_N) {
                            //     spike_buffer[0] = spike_buffer[1];
                            //     spike_buffer[1] = spike_buffer[2];
                            //     spike_buffer[2] = spike_buffer[3];
                            //     spike_buffer[3] = spike_buffer[4];
                            //     spike_buffer[4] = spike_buffer[5];
                            //     spike_buffer[5] = spike_buffer[6];
                            //     spike_buffer[6] = spike_buffer[7];
                            //     spike_buffer[7] = spike_buffer[8];
                            //     spike_buffer[8] = spike_buffer[9];
                            //     spike_buffer[9] = spike_buffer[10];
                            //     spike_buffer[10] = spike_buffer[11];
                            //     spike_buffer[11] = spike;
                            // }
                        }
// for(unsigned int n = 0; n < 12; n++) cout << "spike " << n << " = " << spike_buffer[n]/128.0 << endl;
#ifndef NATIVE_SYSTEMC
                        {
			                HLS_DEFINE_PROTOCOL("output");
                            if (m > 4 && m < 11) o_spike.put(spike_buffer[(10-m)*2 + 1]);
                            else if (m > 63) o_spike.put(spike_buffer[75-m]);
                            else if (m >= L1_N) o_spike.put(spike_buffer[m + 1 - L1_N]);                            
                            else if (m > 10) o_spike.put(spike_buffer[0]);
                            else;
			                wait();
                        }
// if (m > 4 && m < 11) cout << "m = " << m << " = " << spike_buffer[(10-m)*2 + 1]/128.0 << endl;
// else if (m > 63) cout << "m = " << m << " = " << spike_buffer[75-m]/128.0 << endl;
// else if (m >= L1_N) cout << "m = " << m << " = " << spike_buffer[m + 1 - L1_N]/128.0 << endl;                            
// else if (m > 10) cout << "m = " << m << " = " << spike_buffer[0]/128.0 << endl;
// else cout << "m = " << m << endl;

#else
                            if (m > 4 && m < 11) o_spike.write(spike_buffer[(10-m)*2 + 1]);
                            else if (m > 63) o_spike.write(spike_buffer[75-m]);
                            else if (m >= L1_N) o_spike.write(spike_buffer[m + 1 - L1_N]);                            
                            else if (m > 10) o_spike.write(spike_buffer[0]);
                            else;
#endif
                }
        }
}
