% Lab 2 Code

% A.1
R = [1e4, 1e4, 1e4];
C = [1e-9, 1e-6];

A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

lambda = roots(A);
