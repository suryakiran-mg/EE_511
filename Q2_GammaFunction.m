clc; clear all; i=0; trial =0;
%--Sample code to find the maximum ratio c
pdfX = @(x) 1/gamma(5.5).* x.^(5.5-1).*exp(-x); % 1-line fun handle for f
pdfY = @(y) 1/5.5 * exp(-y/5.5); % one-line function handle for g
t = 0:0.01:20;
ratio = pdfX(t)./pdfY(t);
c = max(ratio) % find the maximum ratio
%--Accept/Reject Method
while(i<1000)
Y = (-5.5)*(log(rand));
%Y = exprnd(5.5);
if (rand*c <= (pdfX(Y)/pdfY(Y)) )
    i=i+1; Gamma(i)=Y;
end
trial = trial+1;
end
efficiency = 1000/trial
%--Plots
yyaxis left; histogram(Gamma,10);hold on;
yyaxis right;
x = 0:0.1:40;PDF_gamma = gampdf(x,5.5,1);
plot(x,PDF_gamma,'linewidth',2)
title('Gamma(5.5,1) pdf with theoretical overlaid')



