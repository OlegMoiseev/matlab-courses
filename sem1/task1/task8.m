n = 10
x = 15

a = -n:n;
deg = (-1).^(n-a);
f1 = factorial(2*n);
f2 = factorial(n+a);
f3 = factorial(n-a);
den = x-a;
s = sum(deg .* (f1 ./ ( f2 .* f3 )) ./ den)