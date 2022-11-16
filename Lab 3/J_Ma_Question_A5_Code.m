% Lab 3 Code

% A.5
n=-500:500;
t=[-300:1:300];
w=pi*0.1; % change the w for x1, x2 and x3
x=zeros(size(t));
for i = 1:length(n)
 x=x+D(i)*exp(j*n(i)*w*t);
end

figure(5);
plot(t,x,'k')
xlabel('t'); ylabel('x(t)');
axis([-300 300 -1 2]);
title('Reconstructed Fourier Coefficients');
grid;