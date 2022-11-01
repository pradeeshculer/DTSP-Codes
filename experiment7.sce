//Sheikh Shahid Gull.....D14B.....57.....Exp7

clc;
clear;
close;
cycle = zeros(1,500);
y=[01 2 3 4 5 6 7 8 9 10 9 8 7 6 5 4 3 2 1 0]/4;  // Triangle pulse segment
t=[0:1:40]; // Local time axis
a =(0.05*(t-20).*(t-20)-20)/50;  // Parabolic recovery segment
cycle(1:61)=2*[y a];  // Place pulse in 1sec. cycle
cyc=filter([1 1 1 1 1],[1],cycle);  // Smooth the corners
x=[cyc cyc cyc cyc cyc ];  //Repetition used for 5 cycle of trace

[idum,nsize ]=size(x) ;
t =[0:1:nsize-1]/500; // Sampling frequency 500Hz
plot(t,x);
title("ECG Signal", "color", "red", "fontsize", 4) ;
xlabel("Time Index","fontsize",2, "color", "red") ;
ylabel("Amplitude", "fontsize",2,"color", "red");
