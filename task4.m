a = [1 2 3; 4 5 6];
b = [11 12; -2 -10];

a = a(:);
b = b(:);

sins = sin(a+b');
m = max(sins(:))
        