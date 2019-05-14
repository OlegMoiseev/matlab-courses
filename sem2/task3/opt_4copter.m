clc;
clear;

t_start = 0;
t_stop = 40;
step = 1e-3;

m = 1;
b = 1;
g = 9.8;

w0 = (m*g/4*b)^(1/2)
T0 = 4*b*w0^2
T_max = 4*m*g

z_targ = -100
k_p = 1
k_d = 1

T_func = @(z, z_der, kpkd) max(min(kpkd(1)*(z - z_targ) + kpkd(2)*z_der + T0, T_max), 0);

f = @(t, z, kpkd) [z(2), g - T_func(z(1), z(2), kpkd)/m]';

func = @(kpkd) integral(f, z_targ, kpkd, T_func, t_start, t_stop, step);

k = fminsearch(func, [k_p, k_d])

f0 = [0, 0]';
[t, Z] = Euler_quadr(f, [t_start:step:t_stop], f0, k);

plot(t, Z(1, :), 'r'), grid on, hold on  % coordinate Z
plot(t, Z(2, :), 'blue')  % speed Z

T = T_func(Z(1, :), Z(2, :), k);
plot(t, T, 'black')