clc;
clear;

t_start = 0;
t_stop = 20;

m = 1;
b = 1;
g = 9.8;

w0 = (m*g/4*b)^(1/2)
T0 = 4*b*w0^2
z_targ = 1
k_p = 1
k_d = 1

T_func = @(z, z_der) k_p*(z - z_targ) + k_d*z_der + T0;

f = @(x, z) [z(2), g - T_func(z(1), z(2))/m]';

z0 = [0, 0];
[t, Z] = ode45(f, [t_start; t_stop], z0);

plot(t, Z(:,1), 'r'), grid on, hold on
T = T_func(Z(:,1), Z(:,2));
plot(t, T, 'b')

