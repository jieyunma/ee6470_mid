#include "DWT2.h"

DWT2::DWT2( sc_module_name n ): sc_module( n )
{
	SC_THREAD( conv );
	sensitive << i_clk.pos();
	dont_initialize();
	reset_signal_is(i_rst, false);

#ifndef NATIVE_SYSTEMC
	i_spike.clk_rst(i_clk, i_rst);
    o_D.clk_rst(i_clk, i_rst);
    o_A.clk_rst(i_clk, i_rst);
#endif
}

// const double HiD[8] = {-0.0322, -0.0126, 0.0992, 0.2979, -0.8037, 0.4976, 0.0296, -0.0758};
// const double LoD[8] = {-0.0758, -0.0296, 0.4976, 0.8037, 0.2979, -0.0992, -0.0126, 0.0322};
const int HiD[8] = {-4, -2, 13, 38, -103, 64, 4, -10};
const int LoD[8] = {-10, -4, 64, 103, 38, -13, -2, 4};

void DWT2::conv() {
	{
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_spike.reset();
		o_D.reset();
		o_A.reset();
#endif
		wait();
	}
	while (true) {
                {
		        HLS_CONSTRAIN_LATENCY(0, 10, "lat00");
                        for (unsigned int i = 0; i < 8; i++){
                            HLS_UNROLL_LOOP ( ON, "shift" );
                            spike_buffer[i] = 0;
                        }                            
			// HLS_CONSTRAIN_LATENCY(0, 1, "lat00");
                        // spike_buffer[0] = 0;
                        // spike_buffer[1] = 0;
                        // spike_buffer[2] = 0;
                        // spike_buffer[3] = 0;
                        // spike_buffer[4] = 0;
                        // spike_buffer[5] = 0;
                        // spike_buffer[6] = 0;
                        // spike_buffer[7] = 0;
                }
                unsigned int m;
                for (m = 0; m < L2_N + 4; m++) {
			sc_dt::sc_int<36> spike_1;
			sc_dt::sc_int<36> spike_2;                        
#ifndef NATIVE_SYSTEMC
                        {
				HLS_DEFINE_PROTOCOL("input");
                                spike_1 = i_spike.get();
                                spike_2 = i_spike.get();
                        }
#else
                        spike_1 = i_spike.read();
                        spike_2 = i_spike.read();
#endif            
// cout << "m = " << m << " L2: receive " << spike_1/128.0 << " and " << spike_2/128.0 << endl;
                        {
		                HLS_CONSTRAIN_LATENCY(0, 10, "lat01");
                                for (unsigned int i = 0; i < 8; i++){
                                    HLS_UNROLL_LOOP ( ON, "shift" );
                                    temp_D[i] = 0;
                                    temp_A[i] = 0;
                                } 
                                val_A = 0;
                                val_D = 0;
                        }
                        {
				HLS_CONSTRAIN_LATENCY(0, 16, "lat01");
                                for ( unsigned int i = 0; i < 6; i++ ){
                                    HLS_UNROLL_LOOP ( ON, "shift" );
                                    spike_buffer[i] = spike_buffer[i+2];
                                }
                                spike_buffer[6] = spike_1;
                                spike_buffer[7] = spike_2;
                        }
                        {
		                HLS_CONSTRAIN_LATENCY(0, 16, "lat01");
                                for (unsigned int i = 0; i < 8; i++) {
                                        unsigned int j = 7-i;
                                        HLS_UNROLL_LOOP ( ON, "shift");
                                        temp_D[i] = spike_buffer[i]*HiD[j];
                                        temp_A[i] = spike_buffer[i]*LoD[j];
                                }
                        }
                        {
		                HLS_CONSTRAIN_LATENCY(0, 16, "lat01");
                                for (unsigned int i = 0; i < 8; i++) {
                                        HLS_UNROLL_LOOP ( ON, "shift");
                                        val_D = val_D + temp_D[i];
                                        val_A = val_A + temp_A[i];
                                }
                        } 
                        // {
			// 	HLS_CONSTRAIN_LATENCY(0, 1, "lat01");
                        //         spike_buffer[0] = spike_buffer[2];
                        //         spike_buffer[1] = spike_buffer[3];
                        //         spike_buffer[2] = spike_buffer[4];
                        //         spike_buffer[3] = spike_buffer[5];
                        //         spike_buffer[4] = spike_buffer[6];
                        //         spike_buffer[5] = spike_buffer[7];
                        //         spike_buffer[6] = spike_1;
                        //         spike_buffer[7] = spike_2;
                        // }
                        // {
		        //         HLS_CONSTRAIN_LATENCY(0, 16, "lat01");
                        //         val_D = spike_buffer[0]*HiD[7] + spike_buffer[1]*HiD[6] + spike_buffer[2]*HiD[5] + spike_buffer[3]*HiD[4] + spike_buffer[4]*HiD[3] + spike_buffer[5]*HiD[2] + spike_buffer[6]*HiD[1] + spike_buffer[7]*HiD[0];
                        //         val_A = spike_buffer[0]*LoD[7] + spike_buffer[1]*LoD[6] + spike_buffer[2]*LoD[5] + spike_buffer[3]*LoD[4] + spike_buffer[4]*LoD[3] + spike_buffer[5]*LoD[2] + spike_buffer[6]*LoD[1] + spike_buffer[7]*LoD[0];
                              
//                         // }
// cout << "spike: " << spike_buffer[0] << " " << spike_buffer[1] << " " << spike_buffer[2] << " " << spike_buffer[3] << " " << spike_buffer[4] << " " << spike_buffer[5] << " " << spike_buffer[6] << " " << spike_buffer[7] << endl;
// cout << "HiD  : " << HiD[7] << " " << HiD[6] << " " << HiD[5] << " " << HiD[4] << " " << HiD[3] << " " << HiD[2] << " " << HiD[1] << " " << HiD[0] << endl;
// cout << "A = " << val_A << " D = " << val_D << endl;                          
#ifndef NATIVE_SYSTEMC
                        {
			        HLS_DEFINE_PROTOCOL("output");
                                if (m > 2) {
                                        o_D.put(val_D);
                                        o_A.put(val_A);
                                }
			        wait();
                        }
// if (m>2) {
//         cout << "L2: write out D: " << val_D << " and A: " << val_A << endl;
//         // cout << "spike: " << spike_buffer[0] << " " << spike_buffer[1] << " " << spike_buffer[2] << " " << spike_buffer[3] << " " << spike_buffer[4] << " " << spike_buffer[5] << " " << spike_buffer[6] << " " << spike_buffer[7] << endl;
// }
#else
                        if (m > 3) {
                                o_D.write(val_D);
                                o_A.write(val_A);
                        }
#endif
                }
        }
}
