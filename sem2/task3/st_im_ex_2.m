clear;
clc;

f = @(x,y) [y(2), -100000.001*y(2) - 100*y(1)]';
x_lim = [0, 100];

[T,X] = ode45(f, x_lim, [1, 0]);

plot(T, X(:,1), 'r'), grid on
