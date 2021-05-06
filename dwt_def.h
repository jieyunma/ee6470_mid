#ifndef FILTER_DEF_H_
#define FILTER_DEF_H_

#define DWT_N 8
#define L1_N 53
#define D1_N 53
#define L2_N 30
#define D2_N 30
#define A2_N 30
#define DATA_N 100
#define DATA_EXT_N 113
#define L1_EXT_N 66

union word {
  int sint;
  unsigned int uint;
  unsigned char uc[4];
};

#endif
