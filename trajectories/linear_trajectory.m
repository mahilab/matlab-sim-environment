function [X_des] = linear_trajectory(x_start, x_end, t_start, t_end, t)
    if t < t_start
        x_des = x_start;
    elseif t < t_end
        x_des = (t-t_start)/(t_end-t_start) * (x_end - x_start) + x_start;
    else
        x_des = x_end;
    end
    x_d_des = zeros(size(x_des));
    X_des = [x_des,x_d_des];
end