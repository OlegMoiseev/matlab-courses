A = ([1 2 3; 4 5 6; 7 8 9])
a_max = 6;
a_min = 2;
l = A < a_min;
h = A > a_max;
A = A .* ~l .* ~h + a_min .* l + a_max .* h