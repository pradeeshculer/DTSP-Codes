clear;
clc;
N=input("Enter the no. of samples: ");
disp(N)
x1=input("Enter input sequence x1(n): ");
disp(x1)
x2=input("Enter input sequence x2(n): ");
disp(x2)
for k=1:N 
    X1(k)=0;
    for n=1:N
        X1(k)=X1(k)+x1(n)*exp(-(%i*2*%pi*(k-1)*(n-1))/N);
    end
end
disp("DFT of x1(n)",round(X1))



for k=1:N 
    X2(k)=0;
    for n=1:N
        X2(k)=X2(k)+x2(n)*exp(-(%i*2*%pi*(k-1)*(n-1))/N);
    end
end
disp("DFT of x2(n)",round(X2))

for k=1:N 
    Y(k)=X1(k)*X2(k)
end

disp("DFT of x1(n)*x2(n) ",round(Y))

for n=1:N 
    y(n)=0;
    for k=1:N
        y(n)=y(n)+Y(k)*(exp(%i*2*%pi*(k-1)*(n-1)/N));
    end
    y(n)=(1/N)*y(n);
end
disp("Circular Convolution of x1(n)*x2(n) ",round(y))
