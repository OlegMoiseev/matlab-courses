clear;
min_x = 3;
max_x = 10;
load('data.mat')
x = V;
y = b1f;
xx = (min_x:0.1:max_x);

p = polyfit(x, y, 1);  % approximate
disp(p)
approx_f = polyval(p, x);  % calculate an approximated function
err = (approx_f ./ y) - 1;  % calculate an error

plot(x, y, 'Color','b'), grid on, hold on
plot(x, approx_f, 'Color','r')
plot(x, err, 'Color','g')
hold off

%axis([min_x max_x min(y) 0.1])