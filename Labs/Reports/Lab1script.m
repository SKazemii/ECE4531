%% Lab 1: Discrete-Time Frequency
% 
% Author: Maryhelen Stevenson
%
%% Explanation of the function ct_dt(.)
%
% The file ct_dt.m was supplied for use in this lab; a listing of the file
% is included in Appendix 1. The file defines a matlab function
% ct_dt(A,f0,PHI,fs,nc,ifig) which can be used to plot nc cycles
% of a continuous-time cosine with amplitude A, frequency f0, and phase
% PHI.  It also superimposes the values of the discrete-time sinusoid that
% would result from sampling the continuous-time sinusoid at a rate of fs
% samples per second.  The function returns a vector of time
% instances at which the values of the continuous-time sinusoid were
% evaluated to generate the continuous-time plot.
% 
% 
% An example to illustrate the usage of ct_dt(.) follows: 
%
A = 2; % amplitude of continuous-time cosine
f0 = 0.5; % frequency (in units of Hz.) of continuous-time cosine
PHI = -pi/4; % phase (in units of radians) of continuous-time cosine
fs = 10; % sampling rate to be used (units of samples/second)
nc = 5; % number of cycles of continuous-time cosine to be plotted
ifig = 1; % optional figure number to use in the title of the figure
% the function returns the time vector used to plot the c.t. signal
t = ct_dt(A,f0,PHI,fs,nc,ifig); 

%%
% _Discussion of Figure 1_
% In accordance with the usage of ct_dt, we note that Figure 1,
% contains 5 cycles of the continuous-time cosine, $$x_a(t)$,
% where $$x_a(t)=2\cos(2\pi(0.5)t - \pi/4)$.  It also superimposes the 
% discrete-time sinusoid x[n] = xa(n/10).  The values of n are not shown
% but could be added in by hand.  Note that t=0 corresponds to n=0; whereas
% t=1 corresponds to n=10.
% etc.
% 
%% Exercise 1
%  
% Let x_a(t) = 3 sin(2 pi 50 t) = 3 cos (2 pi 50 t - pi/2)
% 
% Define x[n] = x_a(n/fs)
%
% a) Figure 2 shows a plot of xa(t) and x[n] for the case when fs=200
% samples/second.  It was produced using the code below.
% 
%  include the necessary code
%%
% _Discussion of Figure 2_
%
% include discussion here.  Your discussion should include answers to all
% questions posed in the lab manual.  Please use complete sentences.  Keep
% in mind that a reader should not have to have a copy of the lab manual to
% make sense of your discussion.
%%
% b) Figure 3 shows a plot of xa(t) and x[n] for the case when fs=120
% samples/second. It was produced using the code below.
% 
%  include the necessary code
%%
% _Discussion of Figure 3_
%
% include discussion here
%%
% c) Figure 4 shows a plot of xa(t) and x[n] for the case when fs=40
% samples/second. It was produced using the code below.
% 
%  include the necessary code 
%%
% _Discussion of Figure 4_
%
% include discussion here.  
%
%%
% d) ...
%
%% Exercise 2
%
% 
%% Exercise 3
%
% 
%% Exercise 4
%
%
%% Appendix 1: Listing of the file ct_dt.m
%
%     Please include a listing of the function here, complete with any 
%     modifications that you may have made.
%
%     function t = ct_dt(A,f0,PHI,fs,nc, ifig)
%     %A 	    amplitude of cosine;
%     %f0 	CT frequency of cosine (cycles/sec);
%     %PHI 	phase of cosine (radians);
%     %fs	    sampling frequency (samples/sec.)
%     %nc 	number of CT cycles to be displayed
%     %ifig   optional Figure number to use in the title of the plot
%
%     ...
