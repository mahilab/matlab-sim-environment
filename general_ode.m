function Xd = general_ode(t, X, system_ode, tau_func, traj)

xd  = X(length(X)/2+1:end);

X_des = traj(t);

tau = tau_func(X, X_des);

[M, C, G] = system_ode(X);

xdd = M\(tau - C - G);

Xd  = [xd; xdd];

end