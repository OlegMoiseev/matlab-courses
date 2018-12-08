function [I_tr] = integral_tr(nodes_t, nodes_x, t)
%     I_tr = 0;

    % interpolating
    
    xt = lagrange(nodes_t, nodes_x, t);
    xt_coeffs = polyfit(t, xt, 5);  % approximate
    dxt_coeffs = polyder(xt_coeffs);  % calc coeffs of dx(t)
    dxt = polyval(dxt_coeffs, t);  % calculate an approximated function

    % have calculated xt, dxt. Calculate an integral.

%     for i=2:length(x)
%         I_tr = I_tr + (F(x(i-1), xt(i-1), dxt(i-1)) + F(x(i), xt(i), dxt(i)))*(x(i)-x(i-1))/2;
%     end
    
    h = 1 / length(t);
    I_tr = sum(F(t, xt, dxt)) * h;

end

