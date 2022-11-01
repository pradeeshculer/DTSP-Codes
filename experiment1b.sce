clear;
clc;
close;
w=0:0.01*%pi:2*%pi
y=(1+cos(2*w))
x=sin(2*w)
h=((x)^2+(y)^2)
H=abs((sqrt(h))/2)
P=-atan(y,x)
title("frequence response of 2nd order system")
subplot(2,1,1)
plot(w,H)
xlabel("Frequency")
ylabel("Magnitude")
subplot(2,1,2)
plot(w,P)
xlabel("Frequency")
ylabel("Phase")
