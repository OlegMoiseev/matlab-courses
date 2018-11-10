A = ([1 2 3; 4 5 6; 7 8 9]);
A = A(:)';
isp = isprime(A);
A = max(A .* isp)
