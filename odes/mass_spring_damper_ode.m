function [M, C, G] = mass_spring_damper_ode(I, b, k, X)
    x  = X(1);
    xd = X(2);
    
    M = [I];
    C = [b*xd];
    G = [k*x];
end

