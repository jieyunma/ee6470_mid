#include <cassert>
#include <cstdio>
#include <cstdlib>
using namespace std;

#include "Testbench.h"

Testbench::Testbench(sc_module_name n) : sc_module(n) {
  SC_THREAD(feed_spike);
  sensitive << i_clk.pos();
  dont_initialize();
  SC_THREAD(fetch_result_L1);
  sensitive << i_clk.pos();
  dont_initialize();
  SC_THREAD(fetch_result_L2);
  sensitive << i_clk.pos();
  dont_initialize();
}

Testbench::~Testbench() {
	//cout<< "Max txn time = " << max_txn_time << endl;
	//cout<< "Min txn time = " << min_txn_time << endl;
	//cout<< "Avg txn time = " << total_txn_time/n_txn << endl;
	cout << "Total run time = " << total_run_time << endl;
}

int Testbench::read_data(string infile_name) {
  FILE *fp_s = NULL; // source file handler
  fp_s = fopen(infile_name.c_str(), "r");
  if (fp_s == NULL) {
    printf("fopen %s error\n", infile_name.c_str());
    return -1;
  }
  source_data = (double *)malloc(sizeof(double) * DATA_N);
  if (source_data == NULL) {
    printf("malloc images_s error\n");
    return -1;
  }
  for (unsigned int i = 0; i < DATA_N; i++) {
      fscanf(fp_s, "%lf", &source_data[i]);
  }

  target_D1 = (double *)malloc(sizeof(double) * D1_N);
  if (target_D1 == NULL) {
    printf("malloc target_D1 error\n");
    return -1;
  }

  target_D2 = (double *)malloc(sizeof(double) * D2_N);
  if (target_D2 == NULL) {
    printf("malloc target_D2 error\n");
    return -1;
  }

  target_A2 = (double *)malloc(sizeof(double) * A2_N);
  if (target_A2 == NULL) {
    printf("malloc target_A2 error\n");
    return -1;
  }

  // assert(fread(source_bitmap, sizeof(unsigned char),
  //              (size_t)(long)width * height * bytes_per_pixel, fp_s));
  fclose(fp_s);
  return 0;
}

int Testbench::write_data(string outfile_name) {
  FILE *fp_t = NULL; // target file handler

  fp_t = fopen(outfile_name.c_str(), "w");
  if (fp_t == NULL) {
    printf("fopen %s error\n", outfile_name.c_str());
    return -1;
  }

  // fprintf(fp_t, "----------------- D1 -----------------\n");
  for (unsigned int i = 0; i < D1_N; i++) fprintf(fp_t, "%lf\n", i, target_D1[i]);

  // fprintf(fp_t, "----------------- D2 -----------------\n");
  for (unsigned int i = 0; i < D2_N; i++) fprintf(fp_t, "%lf\n", i, target_D2[i]);

  // fprintf(fp_t, "----------------- A2 -----------------\n");
  for (unsigned int i = 0; i < A2_N; i++) fprintf(fp_t, "%lf\n", i, target_A2[i]);

  fclose(fp_t);
  return 0;
}

void Testbench::feed_spike() {
    int i;
    n_txn = 0;
    max_txn_time = SC_ZERO_TIME;
    min_txn_time = SC_ZERO_TIME;
    total_txn_time = SC_ZERO_TIME;

#ifndef NATIVE_SYSTEMC
	o_spike.reset();
#endif
	o_rst.write(false);
	wait(5);
	o_rst.write(true);
	wait(1);
	total_start_time = sc_time_stamp();

  for (i = 0; i < DATA_N + 8*DWT_N + 1; i = i + 1) {
      sc_dt::sc_int<36> spike;
      if (i >= DATA_N) spike = 0;
      else spike = source_data[i] * 128;
// cout << "test " << i << " = " << spike/128 << endl;
#ifndef NATIVE_SYSTEMC
	    o_spike.put(spike);
#else
	    o_spike.write(spike);
#endif      
  }

}

void Testbench::fetch_result_L1() {
    int i, j;
    double trash;
#ifndef NATIVE_SYSTEMC
	i_D1.reset();
	// i_D2.reset();
	// i_A2.reset();
#endif
	wait(5);
	wait(1);

    for(i = 0; i < L1_N + 4*DWT_N + 3; i++) {
#ifndef NATIVE_SYSTEMC
        if (i >= L1_N) trash = i_D1.get();
        else target_D1[i] = i_D1.get() / 128.0 / 128.0;
// cout << "get L1: i = " << i << " = " << target_D1[i] << endl;
#else
        target_D1[i] = i_D1.read();
#endif
    }
}

void Testbench::fetch_result_L2() {
    int i, j;
#ifndef NATIVE_SYSTEMC
	i_D2.reset();
	i_A2.reset();
#endif
	wait(5);
	wait(1);


    for(j = 0; j < L2_N; j++) {
#ifndef NATIVE_SYSTEMC
        target_D2[j] = i_D2.get() / 128.0 / 128.0 / 128.0;
        target_A2[j] = i_A2.get() / 128.0 / 128.0 / 128.0;
//  cout << "get L2: j = " << j << " = " << target_D2[j] << endl;
//  cout << "get L2: j = " << j << " = " << target_A2[j] << endl;
#else
        target_D2[j] = i_D2.read();
        target_A2[j] = i_A2.read();
#endif
    }
	total_run_time = sc_time_stamp() - total_start_time;
    sc_stop();
}
