% Lab 1 Code 

% A.1
f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:2);
f(t)
plot(t,f(t));
title('Figure 1.46');
xlabel('t');ylabel('f(t)'); grid;
t=(-2:0.01:2);
plot(t,f(t));
title('Figure 1.47');
xlabel('t');ylabel('f(t)'); grid;

% A.2
f = @(tt) exp(-tt);
tt = -2:2;
f(tt)
plot (tt,f(tt));
title('Figure for Problem A.2');
xlabel('t');ylabel('f(t)');grid;


u = @(t) 1.0.*(t>=0);
t = (-2:2);
plot(t,u(t));
title('Figure 1.49');

% B.1
p = @(t) u(t)-u(t-1);
t = (-1:0.01:2); plot(t,p(t));
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);
title('Figure 1.50');

% B.2
r = @(t) t.*p(t);
plot(t,r(t));
xlabel('t');ylabel('r(t)');
title('r(t) = tp(t)');
axis([-1 2 -0.1 1.1]);

n = @(t) r(t)+r(-t+2);
plot(t,n(t));
xlabel('t');ylabel('r(t)');
title('n(t) = r(t)+r(-t+2)');
axis([-1 2 -0.1 1.1]);

% B.3
n1 = @(t) n(t/2);
plot(t,n1(t));
xlabel('t');ylabel('n1(t)');
title('n1(t) = n(t/2)');
axis([-1 2 -0.1 1.1]);

n2 = @(t) n1(t+1/2);
plot(t,n2(t));
xlabel('t');ylabel('n2(t)');
title('n2(t) = n1(t+1/2)');
axis([-1 2 -0.1 1.1]);

% B.4
n3 = @(t) n(t+1/4);
plot(t,n3(t));
xlabel('t');ylabel('n3(t)');
title('n3(t) = n(t+1/4)');
axis([-1 2 -0.1 1.1]);

n4 = @(t) n3(t/2);
plot(t,n4(t));
xlabel('t');ylabel('n4(t)');
title('n4(t) = n3(t/2)');
axis([-1 2 -0.1 1.1]);

% C.1
f = @(t) exp(-t).*cos(4*pi*t);
t=(-2:2);
f(t)

g = @(t) f(t).*u(t);
t = (-2:0.01:2);
plot(t,g(t));
xlabel('t'); ylabel('g(t)'); grid;
axis([-2 2 -1 1]);
title('g(t) = f(t)u(t)');

% C.2 
s = @(t) g(t+1);
t = 0:0.01:4;
plot(t,s(t));
xlabel('t'); ylabel('s(t)'); grid;
title('s(t) = g(t+1)');

% C.3
sa = @(t,a)exp(-2*t).*cos(4*pi*t).*(t>=0)*exp(-a);
t= (0:0.01:4)';
a=(1:2:7); 
sa = bsxfun(sa,t,a);
figure; 
plot(t,sa);
xlabel('t'); ylabel('sa(t)');grid;
title('sa vs. t')

% D.2
tic
for i = 1:1024
    for j = 1:100
        if abs(B(i,j)) < 0.01
            B(i,j)=0;
        end
    end
end 
toc 


tic
B((B > -0.01) & (B < 0.01)) = 0
toc

% D.3
f = @(x_audio) sum(~x_audio(:));
f(x_audio)




