clc;
close;
clear;
xn = input('Enter the real input discrete sequence x[n]=');
N = length(xn);
XK = zeros(1,N)
IXK = zeros(1,N);

for K = 0:N-1
    for n = 0:N-1
        XK(K+1) = XK(K+1)+xn(n+1)*exp(-%i*2*%pi*K*n/N);    
    end
end

disp('Discrete Fourier Transform X(k)',round(XK))

n = 0:N-1;
K = 0:N-1

for n = 0:N-1    
    for K = 0:N-1        
        IXK(n+1) = IXK(n+1)+XK(K+1)*exp(%i*2*%pi*K*n/N);    
    end
end
IXK = IXK/N;
ixn = real(IXK);

disp('Inverse discrete fourier transform x(n)',round(ixn))
