#Application
#A coin is tossed 3 times. Let X denote the number of heads that appear.
x = 0:3

#a) Find the probability distribution function of X.
#What type of distribution does X have?

p = binopdf(x, 3, 0.5);
subplot(2,1,1);
plot(x,p);
hold on;

#b) Find the cumulative distribution function of X,FX.
cp = binocdf(x, 3, 0.5)
subplot(2, 1, 2);
stairs(x, cp);

#c) Find P(X= 0) and P(X != 1).
px0 = binopdf(0, 3, 0.5);
pxn1 = 1 - binopdf(1, 3, 0.5)
disp('The value of px0 is: '), disp(px0);
disp('The value of pxn1 is: '), disp(pxn1);

#d) Find P(X?2),P(X <2).
pxle2 = binocdf(2,3,0.5);
# P(X < 2) = P(X <= 2) - P(X = 2)
pxl2 = binocdf(2,3,0.5) - binopdf(2,3,0.5);
disp('The value of pxle2 is: '), disp(pxle2);
disp('The value of pxl2 is: '), disp(pxl2);

#e) FindP(X?1),P(X >1).
# P(X >= 1) = 1 - P(X < 1) = 1 - P(X <= 1) + P(X = 1)
pxge1 = 1 - binocdf(1, 3, 0.5) + binopdf(1,3,0.5);
# P(x > 1) = 1 - P(X<=1)
pxg1 = 1 - binocdf(1,3,0.5);
disp('The value of pxge1 is: '), disp(pxge1);
disp('The value of pxg1 is: '), disp(pxg1);