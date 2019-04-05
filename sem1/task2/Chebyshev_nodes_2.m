numChebNodes = 15;
a = -1;
b = 1;
xx = linspace(a, b, 1000);
yy = fun(xx);


k = cumsum(ones(1, numChebNodes));
ChebNodes = 0.5*(a+b) + 0.5*(b-a)*cos((2*k-1)/(2*numChebNodes) * pi);

%calculate 'y' by lagrange
y_lagr = lagrange(ChebNodes, fun(ChebNodes), xx);

%calculate 'y' by sle
vecXX = ChebNodes';
pow = 0:numChebNodes-1;
matrXX = vecXX.^pow;
vecC1 = linsolve(matrXX, fun(ChebNodes)');
y_system = (xx'.^pow)*vecC1;

plot(xx, yy, 'Color', 'blue'), grid on, hold on  % clear function
plot(xx, y_lagr, 'Color', 'red')  % with lagrange coefficients
plot(xx, y_system, 'Color', 'green')  % with lineq coefficients
plot(ChebNodes, fun(ChebNodes),'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

hold off
axis([a b -2 2])