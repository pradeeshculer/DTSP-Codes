//Sheikh Shahid Gull.....D14B......57.......Exp6
//FIR filter using Hamming window

clc;
close;
fc=input("Enter Analog cutoff freq in Hz=") // 250
fs=input("Enter Analog sampling freq in Hz=") //2000
M=input("Enter order of filter = ") // 7
w=(2*%pi)*(fc/fs) ;
Tuo=(M-1)/2     //Center Value
for n=1:M
    if(n==Tuo+1)
      hd(n)=w/%pi;
    else
      hd(n)=sin(w*((n-1)-Tuo))/(((n-1)-Tuo)*%pi);
  end
end
//hamming window
for n=1:M
  W(n)=0.54250-0.46*cos((2*%pi*n)/(M-1));
end
//Windowing Fitler Coefficients
h=hd.*W;
h;
[hzm,fr]=frmag(h,256);
hzm_dB = 20*log10(hzm)./max(hzm);
plot(fr,hzm_dB)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR LPF using Hamming window M=7')
