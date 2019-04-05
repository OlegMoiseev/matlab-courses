clear;

ddy1 = @(x,y) [y(2), 16.81 * y(1)]';

%[T,X] = ode45(ddy1,[0, 9],[1, -4.1]);
[T,X] = Runge(ddy1,[0, 0.7],[1, -4.1]');

figure(1)
plot(T, X(1,:), 'r'), grid on

ddy2 = @(x,y) [y(2), -8.2*y(2) - 16.81*y(1)]';

[T,X] = ode45(ddy2,[0, 9],[1, -4.1]);
figure(2)
plot(T, X(:,1), 'b'), grid on
