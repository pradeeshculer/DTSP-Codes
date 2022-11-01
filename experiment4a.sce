//Sheikh Shahid Gull    D14B    57....DTSP.....Exp4A
//DIT-FFT Algorithm

clc;
clear;
N=input("Enter the no. of samples: ");
disp("No. of Stages: ",log2(N));
x=input("Enter input sequence x(n): ");
Wn=[1,0.707-0.707*%i,-%i,-0.707-0.707*%i];
Wnj=conj(Wn);

//DFT
//1st stage
V110=x(1)+Wn(1)*x(5);
V111=x(1)-Wn(1)*x(5);
V120=x(3)+Wn(1)*x(7);
V121=x(3)-Wn(1)*x(7);
V210=x(2)+Wn(1)*x(6);
V211=x(2)-Wn(1)*x(6);
V220=x(4)+Wn(1)*x(8);
V221=x(4)-Wn(1)*x(8);

//2nd stage
F10=V110+Wn(1)*V120;
F11=V111+Wn(3)*V121;
F12=V110-Wn(1)*V120;
F13=V111-Wn(3)*V121;
F20=V210+Wn(1)*V220;
F21=V211+Wn(3)*V221;
F22=V210-Wn(1)*V220;
F23=V211-Wn(3)*V221;

//3rd stage
X(1)=F10+Wn(1)*F20;
X(2)=F11+Wn(2)*F21;
X(3)=F12+Wn(3)*F22;
X(4)=F13+Wn(4)*F23;
X(5)=F10-Wn(1)*F20;
X(6)=F11-Wn(2)*F21;
X(7)=F12-Wn(3)*F22;
X(8)=F13-Wn(4)*F23;
disp('DFT using DIT-FFT',X);

//IDFT
//1st stage
V110=X(1)+Wnj(1)*X(5);
V111=X(1)-Wnj(1)*X(5);
V120=X(3)+Wnj(1)*X(7);
V121=X(3)-Wnj(1)*X(7);
V210=X(2)+Wnj(1)*X(6);
V211=X(2)-Wnj(1)*X(6);
V220=X(4)+Wnj(1)*X(8);
V221=X(4)-Wnj(1)*X(8);

//2nd stage
F10=V110+Wnj(1)*V120;
F11=V111+Wnj(3)*V121;
F12=V110-Wnj(1)*V120;
F13=V111-Wnj(3)*V121;
F20=V210+Wnj(1)*V220;
F21=V211+Wnj(3)*V221;
F22=V210-Wnj(1)*V220;
F23=V211-Wnj(3)*V221;

//3rd stage
x(1)=F10+Wnj(1)*F20;
x(2)=F11+Wnj(2)*F21;
x(3)=F12+Wnj(3)*F22;
x(4)=F13+Wnj(4)*F23;
x(5)=F10-Wnj(1)*F20;
x(6)=F11-Wnj(2)*F21;
x(7)=F12-Wnj(3)*F22;
x(8)=F13-Wnj(4)*F23;
disp('IDFT using DIT-FFT',round(x/N));
