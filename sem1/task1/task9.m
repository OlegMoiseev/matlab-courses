A = [2 4 5 6 2 1 3 2 1 1 3 4 5 1]
m = min(A);
l = A == m;
z = cumsum(l) .* l
