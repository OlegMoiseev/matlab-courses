function [res] = F(t, xt, dxt)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
res = t .* dxt.^2 + xt.^2 ./ t;
end

