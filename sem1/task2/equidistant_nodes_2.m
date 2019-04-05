numEqDistNodes = 15;
a = -1;
b = 1;
xx = linspace(a, b, 1000);
yy = fun(xx);


eqDistNodes = linspace(a, b, numEqDistNodes);

% calculate 'y' by lagrange
y_lagr = lagrange(eqDistNodes, fun(eqDistNodes), xx);

%calculate 'y' by sle
vecXX = eqDistNodes';
pow = 0:numEqDistNodes-1;
matrXX = vecXX.^pow;
vecC1 = linsolve(matrXX, fun(eqDistNodes)');
y_system = (xx'.^pow)*vecC1;

plot(xx, yy), grid on, hold on  % clear function
plot(xx, y_lagr)  % with lagrange coefficients
plot(xx, y_system, 'Color', 'g')  % with lineq coefficients
plot(eqDistNodes, fun(eqDistNodes),'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

hold off
axis([a b -2 2])