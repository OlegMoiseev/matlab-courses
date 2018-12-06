function [y] = x_1(t, c1, c2, c3)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
y = c1*exp(-5.*t) .* cos(5.*t) + c2*exp(-5.*t) .* sin(5.*t) + c3;
end

