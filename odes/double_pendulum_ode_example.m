function [M, C, G] = double_pendulum_ode_example(m1, m2, I1, I2, lc1, lc2, l1, l2, X)
    g = 9.08665;

    theta1 = X(1);
    theta2 = X(2);
    theta1dot = X(3);
    theta2dot = X(4);

    d11 = m1*lc1^2+m2*(l1^2+lc2^2+2*l1*lc2*cos(theta2))+I1+I2;
    d12 = m2*(lc2^2+l1*lc2*cos(theta2))+I2;
    d22 = m2*lc2^2+I2;

    c1 = -m2*l1*l2*sin(theta2);
    c2 = -1/2*m2*l1*l2*sin(theta2);
    c3 = 1/2*m2*l1*l2*sin(theta2);

    g1 = (1/2*m1*l1+m2*l1)*g*cos(theta1)+1/2*m2*l2*g*cos(theta1+theta2);
    g2 = 1/2*m2*l1*l2*cos(theta1+theta2);

    M = [d11 d12;
         d12 d22];

    C = [c1*theta1dot*theta2dot+c2*theta2dot^2;
         c3*theta1dot^2];

    G = [g1;
         g2];
end