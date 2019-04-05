% Saturn
clear;
clc;

gamma = 6.67408e-11;
R0 = 1e8;
M1 = 1.5e19;

f = @(t, r) [r(2), -gamma * M1 * r(1) / (r(1)^2 + R0^2)^(3/2)]';

t_lim = [0, 100];
[T,X] = ode45(f, t_lim, [0, 1])

figure(1)
plot(T, X(:,1), 'r'), grid on
    