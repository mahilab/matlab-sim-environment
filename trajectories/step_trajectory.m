function [X_des] = step_trajectory(x_start, x_end, t_step, t)
    if t < t_step
        x_des = x_start;
    else
        x_des = x_end;
    end
    x_d_des = zeros(size(x_des));
    X_des = [x_des,x_d_des];
end