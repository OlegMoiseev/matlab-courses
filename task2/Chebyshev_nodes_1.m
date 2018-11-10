numEqDistNodes = 1;
numChebNodes = 10;
a = -5*pi;
b = 5*pi;
xx = linspace(a, b, 1000);
yy = sin(xx);

deltaCh = 1;
while deltaCh > 1e-3
    numChebNodes = numChebNodes + 1;
    k = cumsum(ones(1, numChebNodes));
    ChebNodes = 0.5*(a+b) + 0.5*(b-a)*cos((2*k-1)/(2*numChebNodes) * pi);
    yCh = lagrange(ChebNodes, sin(ChebNodes), xx);
    deltaCh = max(abs(yCh - yy));
end
disp(numChebNodes)
disp("Chebyshev nodes with delta")
disp(deltaCh)

disp("Coeffs for Cheb nodes:")
sle_sin(ChebNodes)

plot(xx, yy), grid on, hold on
plot(xx, y)
plot(xx, yCh)
plot(ChebNodes, sin(ChebNodes),'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

hold off
axis([-5*pi 5*pi -5 5])