x_start = 0;
x_stop = 1.5;
y0 = 0;
[x, y] = Euler(@dy1, [x_start; x_stop], y0);

plot(x, y, 'Color','red'), grid on
