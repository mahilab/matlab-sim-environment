function [M, C, G] = pendulum_ode_example(l, X)
    g = 9.80665;
    M = [1];
    C = [0];
    G = [g/l*sin(X(1))];
end
