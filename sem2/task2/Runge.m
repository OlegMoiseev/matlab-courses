function [x, y] = Runge(fun, Tspan, x0)
    h = 1e-6;
    x = [Tspan(1):h:Tspan(2)];
    y = x0;
    for i = 1:size(x, 2)-1
        k1 = fun(x(i), y(:, i));
        k2 = fun(x(i) + h/2, y(:, i) + h/2 * k1);
        k3 = fun(x(i) + h/2, y(:, i) + h/2 * k2);
        k4 = fun(x(i) + h, y(:, i) + h * k3);

        y(:, i+1) = y(:, i) + h/6*(k1+2*k2+2*k3+k4);
    end
end

