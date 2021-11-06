% 1) Normal distribution
miu = input("miu= ");
sigma = input("sigma= ");
alpha = input("alpha= ");
beta = input("beta= ");

% a)P(X ? 0) = cdf(0)
Pa1 = normcdf(0,miu,sigma);
disp(Pa1);

% P(X >= 0) = 1 - P(X < 0) = 1 - P(X <= 0)
Pa2 = 1 - Pa1;
disp(Pa2);

# b)P(-1 <= X <= 1) = P(X <= 1) - P(X < 1) = P(X <= 1) - P(X <= 1)
Pb1 = normcdf(1,miu,sigma) - normcdf(-1, miu,sigma);
disp(Pb1);

% P(X <= -1 or X>= 1) = 1 - P(-1 <= X <= 1)
Pb2 = 1 - Pb1;
disp(Pb2);

% c) P(X < x-alpha) = alpha; alpha is from (0,1)
Pc = norminv(alpha, miu, sigma);
disp(Pc);

% d) P( > x-beta) = beta; beta is from (0,1) - order 1-beta
Pd = norminv(1-beta, miu,sigma);
disp(Pd);

% 2) Aproximations of the binomial distribution with normal distribution
p  = input("p= ");

for n=1:20:500
  values = 0:n;
  bd = binopdf(values, n, p);
  subplot(2,1,1);
  plot(values, bd);
  nd = normpdf(values, n*p, sqrt(n*p*(1-p)));
  subplot(2,1,2);
  plot(values, nd);
  pause(1);
  hold off;
  endfor