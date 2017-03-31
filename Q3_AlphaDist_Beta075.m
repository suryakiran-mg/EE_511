clc;clear all;
figure(1);
subplot(2,2,1);
title('PDF of X & overlaid theor.PDF; Alpha=0.5,Beta=0.75');
Alpha=0.5; Beta=0.75;
hold on; yyaxis left;
X =stblrnd(Alpha,Beta,1,0,1000,1);
a = -50:50; hist(X,a);xlim([-20 20]); yyaxis right;
P = stblpdf(a,Alpha,Beta,1,0,1000,1);
plot(a,P);

figure(2)
subplot(2,2,1);
t = timeseries(X); plot(t)
title('Time series plot;Aplha=0.5,Beta=0.75');xlabel('time');ylabel('RV X');
%%%%%%%%%%%%%%
figure(1);
subplot(2,2,2);
title('PDF of X & overlaid theor.PDF; Alpha=1,Beta=0.75');
Alpha=1; Beta=0.75;
hold on; yyaxis left;
X =stblrnd(Alpha,Beta,1,0,1000,1);
a = -50:50; hist(X,a);xlim([-20 20]); yyaxis right;
P = stblpdf(a,Alpha,Beta,1,0,1000,1);
plot(a,P);

figure(2)
subplot(2,2,2);
t = timeseries(X); plot(t)
title('Time series plot;Aplha=1,Beta=0.75');xlabel('time');ylabel('RV X');

%%%%%%%%%%%%%%
figure(1);
subplot(2,2,3);
title('PDF of X & overlaid theor.PDF; Alpha=1.8,Beta=0.75');
Alpha=1.8; Beta=0.75;
hold on; yyaxis left;
X =stblrnd(Alpha,Beta,1,0,1000,1);
a = -50:50; hist(X,a);xlim([-20 20]); yyaxis right;
P = stblpdf(a,Alpha,Beta,1,0,1000,1);
plot(a,P);

figure(2)
subplot(2,2,3);
t = timeseries(X); plot(t)
title('Time series plot;Aplha=1.8,Beta=0.75');xlabel('time');ylabel('RV X');
%%%%%%%%%%%%%%
figure(1);
subplot(2,2,4);
title('PDF of X & overlaid theor.PDF; Alpha=2,Beta=0.75');
Alpha=2; Beta=0.75;
hold on; yyaxis left;
X =stblrnd(Alpha,Beta,1,0,1000,1);
a = -50:50; hist(X,a);xlim([-20 20]); yyaxis right;
P = stblpdf(a,Alpha,Beta,1,0,1000,1);
plot(a,P);

figure(2)
subplot(2,2,4);
t = timeseries(X); plot(t)
title('Time series plot;Aplha=2,Beta=0.75');xlabel('time');ylabel('RV X');