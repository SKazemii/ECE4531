clc; clear; close all;
%% HEADER 
% 
%     ECE 4531 - Lab 3
%     Authors: Joseph Richardson, Christian Morrell, Saeed Kazemi
%     Date: Thursday February 18, 2021
%     Objective: This code looks at the cross correlation concepts covered in lecture.
% 
%
%% Part 1

x = [1, 1j, -1]
y = [1j, 1+1j, 1]

% a)

rxy = xcorr(x,y)

% b)

yf = conj(fliplr(y));
xconvyf = conv(x,yf)

%% Part 1 b) i) 
% |n1z = -2, n2z = 2,
% xconvyf = {...,0,1,1,-->0,j,j,0,...}.|

%% Part 1 b) ii)
% |The vector xconvyf is equal to the vector rxy.|

%% Part 1 c)
% c)
figure()
[ryx,lags] = xcorr(y,x)
stem(lags,ryx)
title("The cross-correlation");
ylabel("Amplitude");
xlabel("Lags");

%% Part 1 c)
% |rxy is in fact ryx^*[-l], values are flipped in order and complex values
% are conjugated.|

%% Part 2

% a)

B = ones(1,13);
B(1,[6,7,10,12]) = -1;
x = zeros(1,200);
x(1,[1:13]) = B;

% b)

[rBB,lags] = xcorr(B,B);
figure()
stem(lags,rBB)
title("Auto-correlation")
ylabel("x")
xlabel("lag")

%% Part 2 b) 
% |The elements of the vector rBB correspond to values of l of -12 to 12.
% The maximum value of rBB occurs at l = 0. The maximum value of rBB found
% at l = 0, is 13. The next largest value of rBB is 1.| 

%% Part 2 c)

var = 0.1;
L = 200;
v = sqrt(var)*randn(1,L);

% d)

A = 0.9;
nd = 30;
xd = zeros(1,200);
xd(1,[1+nd:13+nd])=B;
y = A*(xd + v);
figure()
plot(y)
title("The received signal")
ylabel("Amplitude")
xlabel("n")

% e) 

[ryx,lags] = xcorr(y,x);
subplot(2,1,1)
stem(lags(200:260),ryx(200:260))
ylabel("Amplitude")
xlabel("Lags")
title("The cross-correlation")

subplot(2,1,2)
stem(lags(200:260),y(1:61))
ylabel("Amplitude");
xlabel("n");
title("Output y[n]");

%% Part 2 e)
% |The maximum value of ryx[l] occurs at a value of l = 30. We can use the 
% cross-correlation of the received and transmitted signals to determine
% the value of nd (and in turn the distance of the object) by examining 
% which value of l corresponds to the maximum value of the cross-
% correlation. This value of l will tell us how long the delay is, which
% can be used to calculate the distance of the object.|

%% Part 2 f)

% Variance 0.5
var = 0.5;
L = 200;
v = sqrt(var)*randn(1,L);

A = 0.9;
nd = 30;
xd = zeros(1,200);
xd(1,[1+nd:13+nd])=B;
y = A*(xd + v);
figure()
plot(y)
title("The received signal")
ylabel("Amplitude")
xlabel("n")

[ryx,lags] = xcorr(y,x);
subplot(2,1,1)
stem(lags(200:260),ryx(200:260))
ylabel("Amplitude")
xlabel("Lags")
title("The cross-correlation with variance = 0.5")

subplot(2,1,2)
stem(lags(200:260),y(1:61))
ylabel("Amplitude");
xlabel("n");
title("Output y[n]");

% Variance 1
var = 1;
L = 200;
v = sqrt(var)*randn(1,L);

A = 0.9;
nd = 30;
xd = zeros(1,200);
xd(1,[1+nd:13+nd])=B;
y = A*(xd + v);
figure()
plot(y)
title("The received signal")
ylabel("Amplitude")
xlabel("n")

[ryx,lags] = xcorr(y,x);
subplot(2,1,1)
stem(lags(200:260),ryx(200:260))
ylabel("Amplitude")
xlabel("Lags")
title("The cross-correlation with variance = 1")

subplot(2,1,2)
stem(lags(200:260),y(1:61))
ylabel("Amplitude");
xlabel("n");
title("Output y[n]");

% Variance 2
var = 2;
L = 200;
v = sqrt(var)*randn(1,L);

A = 0.9;
nd = 30;
xd = zeros(1,200);
xd(1,[1+nd:13+nd])=B;
y = A*(xd + v);
figure()
plot(y)
title("The received signal")
ylabel("Amplitude")
xlabel("n")

[ryx,lags] = xcorr(y,x);
subplot(2,1,1)
stem(lags(200:260),ryx(200:260))
ylabel("Amplitude")
xlabel("Lags")
title("The cross-correlation with variance = 2")

subplot(2,1,2)
stem(lags(200:260),y(1:61))
ylabel("Amplitude");
xlabel("n");
title("Output y[n]");

