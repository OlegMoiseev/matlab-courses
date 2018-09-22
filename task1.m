a = rand(4, 3);
b = rand(3, 4);
prod = a*b
upper_on_diag = prod([1:3], [1:3])
determinant = det(upper_on_diag)
polynom = poly(upper_on_diag)
poly_roots = roots(polynom)
