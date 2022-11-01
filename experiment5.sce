//Sheikh Shahid Gull.....D14B......57......DTSP.....Exp5

clc;
clear;
close;
fc=input('Enter cutoff freq in Hz fc='); //wc
fs=input('Enter sampling freq in Hz fs='); //ws
N=input('Enter order of filter N=');
Fp=2*fc/fs;

//IIR FILTER - BUTTERWORTH FILTER
//Low Pass
[Hz1]=iir(N,'lp','butt',[Fp/2,0],[0,0]);
[Hw1,w]=frmag(Hz1,256);
figure(1)
subplot(2,2,1);
plot(2*w,abs(Hw1));
title('Magnitude Response of Digital Butterworth IIR LPF');
xlabel('Normalized Digital frequency w');
ylabel('Magnitude |H(w)|');
xgrid(1);
figure(1)
subplot(2,2,2);
plot(2*w*fs,abs(Hw1));
title ('Magnitude Response of Analog Butterworth IIR LPF');
xlabel('Analog Frequency in Hz f');
ylabel('Magnitude |H(w)|');
xgrid(1);

//High Pass
[Hz2]=iir(N,'hp','butt',[Fp/2,0],[0,0]);
[Hw2,w]=frmag(Hz2,256);
figure(1)
subplot(2,2,3);
plot(2*w,abs(Hw2));
title('Magnitude Response of Digital Butterworth IIR HPF');
xlabel('Normalized Digital frequency w');
ylabel('Magnitude |H(w)|');
xgrid(1);
figure(1)
subplot(2,2,4);
plot(2*w*fs,abs(Hw2));
title ('Magnitude Response of Analog Butterworth IIR HPF');
xlabel('Analog Frequency in Hz f');
ylabel('Magnitude |H(w)|');
xgrid(1);

//IIR FILTER - CHEBYSHEW FILTER
//Low Pass
[Hz3]=iir(N,'lp','cheb1',[Fp/2,0],[0.08,0]);
[Hw3,w]=frmag(Hz3,256);
figure(2)
subplot(2,2,1);
plot(2*w,abs(Hw3));
title('Magnitude Response of Digital Chebyshew IIR LPF');
xlabel('Normalized Digital frequency w');
ylabel('Magnitude |H(w)|');
xgrid(1);
figure(2)
subplot(2,2,2);
plot(2*w*fs,abs(Hw3));
title ('Magnitude Response of Analog Chebyshew IIR LPF');
xlabel('Analog Frequency in Hz f');
ylabel('Magnitude |H(w)|');
xgrid(1);

//High Pass
[Hz4]=iir(N,'hp','cheb1',[Fp/2,0],[0.08,0]);
[Hw4,w]=frmag(Hz4,256);
figure(2)
subplot(2,2,3);
plot(2*w,abs(Hw4));
title('Magnitude Response of Digital Chebyshew IIR HPF');
xlabel('Normalized Digital frequency w');
ylabel('Magnitude |H(w)|');
xgrid(1);
figure(2)
subplot(2,2,4);
plot(2*w*fs,abs(Hw4));
title ('Magnitude Response of Analog Chebyshew IIR HPF');
xlabel('Analog Frequency in Hz f');
ylabel('Magnitude |H(w)|');
xgrid(1);
