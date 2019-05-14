% function S = integral(Tspan, z_targ, kpkd) 
% [T,X] = ode45(@(t,x)([0, 1; -kpkd(1), -kpkd(2)]*x + [0; z_targ * kpkd(1)]), Tspan ,[0,0]); 
% n = size(T); 
% Result = (X(:,1) - z_targ).^2 + X(:,2).^2 + min(40,(max(0,(kpkd(1) * (X(:,1)-z_targ) + kpkd(2) * X(:,2) + 10)))).^2; 
% S = sum(Result) * (50/n(1));
% end


function S = integral(f, z_targ, kpkd, T_func, t_start, t_stop, step)

f0 = [0, 0]';
[t, Z] = Euler_quadr(f, [t_start:step:t_stop], f0, kpkd);
z = Z(1, :);
z_der = Z(2, :);
foo = ((z - z_targ).^2 + z_der.^2 + T_func(z, z_der, kpkd).^2).*1e-3;

S = sum(foo);

end