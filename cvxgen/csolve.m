% csolve  Solves a custom quadratic program very rapidly.
%
% [vars, status] = csolve(params, settings)
%
% solves the convex optimization problem
%
%   minimize(quad_form(y_0 - r_0, q) + quad_form(u_0, R) + quad_form(y_1 - r_1, q) + quad_form(u_1, R) + quad_form(y_2 - r_2, q) + quad_form(u_2, R) + quad_form(y_3 - r_3, q) + quad_form(u_3, R) + quad_form(y_4 - r_4, q) + quad_form(u_4, R) + quad_form(y_5 - r_5, q) + quad_form(u_5, R) + quad_form(y_6 - r_6, q) + quad_form(u_6, R) + quad_form(y_7 - r_7, q) + quad_form(u_7, R) + quad_form(y_8 - r_8, q) + quad_form(u_8, R) + quad_form(y_9 - r_9, q) + quad_form(u_9, R) + quad_form(y_10 - r_10, q) + quad_form(u_10, R) + quad_form(y_11 - r_11, q_final))
%   subject to
%     x_1 == A*x_0 + B*u_0
%     x_2 == A*x_1 + B*u_1
%     x_3 == A*x_2 + B*u_2
%     x_4 == A*x_3 + B*u_3
%     x_5 == A*x_4 + B*u_4
%     x_6 == A*x_5 + B*u_5
%     x_7 == A*x_6 + B*u_6
%     x_8 == A*x_7 + B*u_7
%     x_9 == A*x_8 + B*u_8
%     x_10 == A*x_9 + B*u_9
%     x_11 == A*x_10 + B*u_10
%     y_1 == C*x_1
%     y_2 == C*x_2
%     y_3 == C*x_3
%     y_4 == C*x_4
%     y_5 == C*x_5
%     y_6 == C*x_6
%     y_7 == C*x_7
%     y_8 == C*x_8
%     y_9 == C*x_9
%     y_10 == C*x_10
%     y_11 == C*x_11
%     abs(u_0) <= u_max
%     abs(u_1) <= u_max
%     abs(u_2) <= u_max
%     abs(u_3) <= u_max
%     abs(u_4) <= u_max
%     abs(u_5) <= u_max
%     abs(u_6) <= u_max
%     abs(u_7) <= u_max
%     abs(u_8) <= u_max
%     abs(u_9) <= u_max
%     abs(u_10) <= u_max
%
% with variables
%      u_0   1 x 1
%      u_1   1 x 1
%      u_2   1 x 1
%      u_3   1 x 1
%      u_4   1 x 1
%      u_5   1 x 1
%      u_6   1 x 1
%      u_7   1 x 1
%      u_8   1 x 1
%      u_9   1 x 1
%     u_10   1 x 1
%      x_1   3 x 1
%      x_2   3 x 1
%      x_3   3 x 1
%      x_4   3 x 1
%      x_5   3 x 1
%      x_6   3 x 1
%      x_7   3 x 1
%      x_8   3 x 1
%      x_9   3 x 1
%     x_10   3 x 1
%     x_11   3 x 1
%      y_1   1 x 1
%      y_2   1 x 1
%      y_3   1 x 1
%      y_4   1 x 1
%      y_5   1 x 1
%      y_6   1 x 1
%      y_7   1 x 1
%      y_8   1 x 1
%      y_9   1 x 1
%     y_10   1 x 1
%     y_11   1 x 1
%
% and parameters
%        A   3 x 3
%        B   3 x 1
%        C   1 x 3
%        R   1 x 1    PSD
%        q   1 x 1    PSD
%  q_final   1 x 1    PSD
%      r_0   1 x 1
%      r_1   1 x 1
%      r_2   1 x 1
%      r_3   1 x 1
%      r_4   1 x 1
%      r_5   1 x 1
%      r_6   1 x 1
%      r_7   1 x 1
%      r_8   1 x 1
%      r_9   1 x 1
%     r_10   1 x 1
%     r_11   1 x 1
%    u_max   1 x 1    positive
%      x_0   3 x 1
%      y_0   1 x 1
%
% Note:
%   - Check status.converged, which will be 1 if optimization succeeded.
%   - You don't have to specify settings if you don't want to.
%   - To hide output, use settings.verbose = 0.
%   - To change iterations, use settings.max_iters = 20.
%   - You may wish to compare with cvxsolve to check the solver is correct.
%
% Specify params.A, ..., params.y_0, then run
%   [vars, status] = csolve(params, settings)
% Produced by CVXGEN, 2017-09-29 03:20:58 -0400.
% CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2012 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: csolve.m.
% Description: Help file for the Matlab solver interface.
