//Sheikh Shahid Gull.....D14B.....57......DTSP .....Exp9

clc;
clear all;

frequency=[240,270,300,320,360,400,450,480];              //range of frequencies

fs=8000;                      //sampling frequency
no=8;                         //number of frequencies
N=1:4000;                     //number of samples
temp=[];                      //array type variable

for i=1:no
    y=sin(2*3.14*(frequency(i)/fs)*N);
    temp=[temp y]
end

sound(temp,fs);             //function to play sound
