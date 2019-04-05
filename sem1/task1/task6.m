vec = [1 2 3 4 3 2 0];
s = size(vec);
s = s(2);

s1 = vec(1 : (fix(s/2) + 1));
s2 = vec((fix(s/2)) : s);
s2 = fliplr(s2);

if (isequal(s1, s2))
    disp("TRUE")
else
    disp("FALSE")
end
    