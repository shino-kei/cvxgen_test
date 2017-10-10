/* Produced by CVXGEN, 2017-09-29 03:21:00 -0400.  */
/* CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2012 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: testsolver.c. */
/* Description: Basic test harness for solver.c. */
#include "solver.h"
Vars vars;
Params params;
Workspace work;
Settings settings;
#define NUMTESTS 0
int main(int argc, char **argv) {
  int num_iters;
#if (NUMTESTS > 0)
  int i;
  double time;
  double time_per;
#endif
  set_defaults();
  setup_indexing();
  load_default_data();
  /* Solve problem instance for the record. */
  settings.verbose = 1;
  num_iters = solve();
#ifndef ZERO_LIBRARY_MODE
#if (NUMTESTS > 0)
  /* Now solve multiple problem instances for timing purposes. */
  settings.verbose = 0;
  tic();
  for (i = 0; i < NUMTESTS; i++) {
    solve();
  }
  time = tocq();
  printf("Timed %d solves over %.3f seconds.\n", NUMTESTS, time);
  time_per = time / NUMTESTS;
  if (time_per > 1) {
    printf("Actual time taken per solve: %.3g s.\n", time_per);
  } else if (time_per > 1e-3) {
    printf("Actual time taken per solve: %.3g ms.\n", 1e3*time_per);
  } else {
    printf("Actual time taken per solve: %.3g us.\n", 1e6*time_per);
  }
#endif
#endif
  return 0;
}
void load_default_data(void) {
  params.y_0[0] = 0.20319161029830202;
  params.r_0[0] = 0.8325912904724193;
  /* Make this a diagonal PSD matrix, even though it's not diagonal. */
  params.q[0] = 1.2909047389129444;
  /* Make this a diagonal PSD matrix, even though it's not diagonal. */
  params.R[0] = 1.510827605197663;
  params.r_1[0] = 1.5717878173906188;
  params.r_2[0] = 1.5851723557337523;
  params.r_3[0] = -1.497658758144655;
  params.r_4[0] = -1.171028487447253;
  params.r_5[0] = -1.7941311867966805;
  params.r_6[0] = -0.23676062539745413;
  params.r_7[0] = -1.8804951564857322;
  params.r_8[0] = -0.17266710242115568;
  params.r_9[0] = 0.596576190459043;
  params.r_10[0] = -0.8860508694080989;
  params.r_11[0] = 0.7050196079205251;
  /* Make this a diagonal PSD matrix, even though it's not diagonal. */
  params.q_final[0] = 1.5908628174163508;
  params.A[0] = -1.9040724704913385;
  params.A[1] = 0.23541635196352795;
  params.A[2] = -0.9629902123701384;
  params.A[3] = -0.3395952119597214;
  params.A[4] = -0.865899672914725;
  params.A[5] = 0.7725516732519853;
  params.A[6] = -0.23818512931704205;
  params.A[7] = -1.372529046100147;
  params.A[8] = 0.17859607212737894;
  params.x_0[0] = 1.1212590580454682;
  params.x_0[1] = -0.774545870495281;
  params.x_0[2] = -1.1121684642712744;
  params.B[0] = -0.44811496977740495;
  params.B[1] = 1.7455345994417217;
  params.B[2] = 1.9039816898917352;
  params.C[0] = 0.6895347036512547;
  params.C[1] = 1.6113364341535923;
  params.C[2] = 1.383003485172717;
  params.u_max[0] = 0.7559880826577783;
}
