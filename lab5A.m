
%Lab #5, part A.
% The distributions of two characteristics X and Y are:
% X: 20 21 22 23 24 25 26 27
%     2  1  3  6  5  9  2  2
% Y: 75 76 77 78 79 80 81 82
%     3  2  2  5  8  8  1  1
% Find
% a) the means Xbar, Ybar
% b) the variances sigmabarX, sigmabarY
% c) the covariance cov(X,Y)
% d) the correlation coefficient ro(X,Y)

X=[20*ones(1,2),21,22*ones(1,3), 23*ones(1,6),...
  24*ones(1,5), 25*ones(1,9), 26*ones(1,2),...
  27*ones(1,2)];
Y=[75*ones(1,3),76*ones(1,2),77*ones(1,2),...
  78*ones(1,5),79*ones(1,8), 80*ones(1,8), 81, 82];
n1=length(X);
n2=length(Y);
n=n1;
%a)
mx = mean(X)
my = mean(Y);
fprintf('a) the means are: mx= %6.3f, my= %6.3f\n', mx, my)

%b)
vx = var(X,1)
vy = var(Y,1)
fprintf('b) the means are: vx= %6.3f, vy= %6.3f\n', vx, vy)
%use 1 as arg because we have populations not samples

%c)
c = cov(X,Y,1)
fprintf('c) the covariance is: cov(x, y) = %6.3f\n', c)

%d)
rr = corrcoef(X,Y) %correlation coefficients matrix
ro = rr(1,2) %entry on pos(1,2) of the matrix
fprintf('d) the corr. coeff. is: ro(x,y) = %6.3f\n', ro)

