n = 5
v([1:n]) = -2;
v1 = -v / 2;
m = diag(v) + diag(v1([1:end-1]), 1) + diag(v1([1:end-1]), -1);
m(1, end) = 1;
m(end, 1) = 1
rank = rank(m)