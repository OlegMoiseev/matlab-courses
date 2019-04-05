function [x, y] = Euler(fun, Tspan, x0)
    h = 1e-6;
    x = [Tspan(1):h:Tspan(2)];
    y = [x0];
    for i = 1:length(x)-1
        y(i+1) = y(i) + h*fun(0, y(i));
    end
end

