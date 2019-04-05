clear;
clc;

dy = @(x, y) -10000*y;
x_start = 0;
x_stop = 1;
y0 = 1;
[x, y] = Euler(dy, [x_start; x_stop], y0, 1e-6);
[x_im, y_im] = Euler_impl([x_start; x_stop], y0, 1e-6);

figure(1)
plot(x, y, 'Color','red'), grid on, hold on
plot(x_im, y_im, 'Color','blue')
hold off

[x_1, y_1] = Euler(dy, [x_start; x_stop], y0, 1e-3);
[x_im_1, y_im_1] = Euler_impl([x_start; x_stop], y0, 1e-3);

figure(2)
plot(x_1, y_1, 'Color','red'), grid on, hold on
plot(x_im_1, y_im_1, 'Color','blue')
hold off