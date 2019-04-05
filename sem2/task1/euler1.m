x_start = 0;
x_stop = 4;
y0 = 0;
%[x, y] = Euler(@dy, [x_start; x_stop], y0);
[x, y] = ode45(@dy, [x_start; x_stop], y0);
plot(x, y, 'Color','red'), grid on
