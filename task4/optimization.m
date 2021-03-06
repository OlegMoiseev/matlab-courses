clear
a = 1;
b = 2;
xa = 2;
xb = 2.5;
num_nodes = 1000;
t = linspace(a, b, num_nodes);
num_rand_points = 3;

rand_t = a + (b-a)*sort(rand(1, num_rand_points));
rand_x = xa + (xb-xa)*sort(rand(1, num_rand_points));

new_rand_x = zeros(1, length(rand_x));
new_I_tr = integral_tr([a, rand_t, b], [xa, rand_x, xb], t);

I_tr = 0;
step = 1e-3;
eps = 1e-6;



while (max(abs(new_rand_x - rand_x)) > eps) || (abs(new_I_tr - I_tr) > eps)
    gr = grad([a, rand_t, b], [xa, rand_x, xb], t);
    new_rand_x = rand_x - step * gr(2:4);
    rand_x = new_rand_x;
    I_tr = new_I_tr;
    new_I_tr = integral_tr([a, rand_t, b], [xa, new_rand_x, xb], t);

    while new_I_tr - I_tr >= 0
        step = step / 2;
        new_rand_x = new_rand_x - step * gr(2:4);
        new_I_tr = integral_tr([a, rand_t, b], [xa, new_rand_x, xb], t);
    end
  
end
disp(I_tr)
X = lagrange([a, rand_t, b], [xa, new_rand_x, xb],t);
plot(t, X, 'r'), grid on, hold on
plot(t, t+1./t, 'b')
hold off
