function [t, y] = Euler_quadr(fun, t, y0, kpkd)
    h = t(2) - t(1);
    y = zeros(size(y0, 1), size(t, 2));
    y(:, 1) = y0;
    for i = 1:length(t)-1
        y(:, i+1) = y(:, i) + h*fun(t, y(:, i), kpkd);
    end
end

