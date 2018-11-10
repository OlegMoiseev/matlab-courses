n = 5
m1 = tril(flipud(cumsum(ones(n))))

ev = eig(m1)'

d = det(m1)

m1(n-1, n-1) = 0

d = det(m1)