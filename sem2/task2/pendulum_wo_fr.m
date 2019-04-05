% pendulum without friction

clear;
clc;

f = @(x,y) [y(2), -sin(y(1))]';
x_lim = [0, 50];
[T,X] = ode45(f, x_lim, [0, 0.5]);

figure(1)
plot(T, X(:,1), 'r'), grid on

[T,X] = ode45(f, x_lim, [0, 2]);

figure(2)
plot(T, X(:,1), 'r'), grid on


[T,X] = ode45(f, x_lim, [0, 2.5]);

figure(3)
plot(T, X(:,1), 'r'), grid on


[T,X] = ode45(f, x_lim, [pi, 0]);

figure(4)
plot(T, X(:,1), 'r'), grid on
