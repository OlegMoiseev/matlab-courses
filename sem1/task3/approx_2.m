clear;
min_x = 0;
max_x = 10;
t = (min_x:0.01:max_x);

load('data11.mat')

exptrig = [exp(-5.*tt) .* cos(5.*tt), exp(-5.*tt) .* sin(5.*tt), ones(length(tt), 1)];

% exptrig * coef = xx
coef = exptrig \ xx;
coef(4) = yy(1) + coef(1)*exptrig(1, 2) - coef(2)*exptrig(1, 1);


x1 = x_1(t, coef(1), coef(2), coef(3));
x2 = x_2(t, coef(1), coef(2), coef(4));


plot(xx, yy, 'Color','b'), grid on, hold on
plot(x1, x2, 'Color','r')

hold off

