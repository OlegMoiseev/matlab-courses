function [gr] = grad(nodes_t, nodes_x, t)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    eps = 1e-6;
    gr = nodes_x;
    for k=1:length(nodes_x)
        new_nodes_x = nodes_x;
        new_nodes_x(k)= new_nodes_x(k) + eps;  % change one element from nodes
        % gr(k) = lim ((f(x(k)+eps) - f(x(k))) / eps)
        gr(k) = (integral_tr(nodes_t, new_nodes_x, t) - integral_tr(nodes_t, nodes_x, t)) / eps;  % calculate delta
    end
end

