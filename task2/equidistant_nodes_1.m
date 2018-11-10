numEqDistNodes = 1;
numChebNodes = 10;
a = -5*pi;
b = 5*pi;
xx = linspace(a, b, 1000);
yy = sin(xx);

delta = 1;
while delta > 1e-3
    numEqDistNodes = numEqDistNodes + 1;
    eqDistNodes = linspace(a, b, numEqDistNodes);
    y = lagrange(eqDistNodes, sin(eqDistNodes), xx);
    delta = max(abs(y - yy));
end
disp(numEqDistNodes)
disp("equidistant nodes with delta")
disp(delta)


disp("Coeffs for equiv nodes:")
sle_sin(eqDistNodes)

plot(xx, yy), grid on, hold on
plot(xx, y)
plot(eqDistNodes, sin(eqDistNodes),'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

hold off
axis([-5*pi 5*pi -5 5])