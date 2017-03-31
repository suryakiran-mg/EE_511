clear all; close all; clc; 
tic; % Start the timer
M1 = 1; M2 = 2; % Mean of X and Y resp.
V1 = 4; V2 = 9; % Variance of X and Y resp.
u1 = rand(1000000,1); u2 = rand(1000000,1);
% Generate X & Y that are N(0,1) independent RVs
X = sqrt( - 2*log(u1)).*cos(2*pi*u2 ); 
Y = sqrt( - 2*log(u1)).*sin(2*pi*u2 );
% Scale them to a particular mean and variance 
x = sqrt(V1)*X + M1; % x~ N(M1,V1)
y = sqrt(V2)*Y + M2; % y~ N(M2,V2)
toc; % Read elapsed time from stopwatch
A = x + y;
Covariance_x_y = cov(x,y)
histogram(A); % pmf of gaussian
Mean_Variance_A = [mean(A) var(A)]
%theoretical pdf
histfit(A); 

