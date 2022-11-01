//Sheikh Shahid Gull....D14B....57....DTSP....Exp4B
//DIF-FFT Algorithm

clc;
clear;
N=input("Enter the no. of samples: ");
disp("No. of Stages: ",log2(N));
x=input("Enter input sequence x(n): ");
Wn=[1,0.707-0.707*%i,-%i,-0.707-0.707*%i];
Wnj=conj(Wn);

//DFT
//1st stage
g1(1)=x(1)+x(5);
g1(2)=x(2)+x(6);
g1(3)=x(3)+x(7);
g1(4)=x(4)+x(8);
g2(1)=(x(1)-x(5))*Wn(1);
g2(2)=(x(2)-x(6))*Wn(2);
g2(3)=(x(3)-x(7))*Wn(3);
g2(4)=(x(4)-x(8))*Wn(4);

//2nd stage
d110=g1(1)+g1(3);
d111=g1(2)+g1(4);
d120=(g1(1)-g1(3))*Wn(1);
d121=(g1(2)-g1(4))*Wn(3);
d210=g2(1)+g2(3);
d211=g2(2)+g2(4);
d220=(g2(1)-g2(3))*Wn(1);
d221=(g2(2)-g2(4))*Wn(3);

//3rd stage
X(1)=d110+d111;
X(5)=(d110-d111)*Wn(1)
X(3)=d120+d121;
X(7)=(d120-d121)*Wn(1)
X(2)=d210+d211;
X(6)=(d210-d211)*Wn(1)
X(4)=d220+d221;
X(8)=(d220-d221)*Wn(1);
disp('DFT using DIF-FFT',X)

//IDFT
//1st stage
g1(1)=X(1)+X(5);
g1(2)=X(2)+X(6);
g1(3)=X(3)+X(7);
g1(4)=X(4)+X(8);
g2(1)=(X(1)-X(5))*Wnj(1);
g2(2)=(X(2)-X(6))*Wnj(2);
g2(3)=(X(3)-X(7))*Wnj(3);
g2(4)=(X(4)-X(8))*Wnj(4);

//2nd stage
d110=g1(1)+g1(3);
d111=g1(2)+g1(4);
d120=(g1(1)-g1(3))*Wnj(1);
d121=(g1(2)-g1(4))*Wnj(3);
d210=g2(1)+g2(3);
d211=g2(2)+g2(4);
d220=(g2(1)-g2(3))*Wnj(1);
d221=(g2(2)-g2(4))*Wnj(3);

//3rd stage
X(1)=d110+d111;
X(5)=(d110-d111)*Wnj(1)
X(3)=d120+d121;
X(7)=(d120-d121)*Wnj(1)
X(2)=d210+d211;
X(6)=(d210-d211)*Wnj(1)
X(4)=d220+d221;
X(8)=(d220-d221)*Wnj(1);
disp('IDFT using DIF-FFT',round(X/N));
