#ex 1
a = [1, 0, -2; 2, 1, 3; 0, 1, 0];
b = [2, 1, 1; 1, 0, -1; 1, 1, 0];
c = a - b;
d = a * b;
e = a .* b;

#ex2
title("Graphs table");
x = 0:0.1:3;
#subplot(2,1,1);
plot(x, power(x,5)/10);
hold on;
#subplot(2,1,2);
plot(x, cos(x));
hold on;
plot(x, times(x,sin(x)));
hold on;
names = {'a', 'b', 'c'};
legend(names, 'location', 'southeast');
set (h, "fontsize", 20);
hold on;

