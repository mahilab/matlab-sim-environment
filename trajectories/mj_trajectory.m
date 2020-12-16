function [X_des] = mj_trajectory(x_start, x_end, t_start, t_end, t)
    t_scale = (t-t_start)/(t_end-t_start);
    if t < t_end
        x_des = x_start + (x_end-x_start)*(10*t_scale^3 - 15*t_scale^4 + 6*t_scale^5);
    else
        x_des = x_end;
    end
    x_d_des = zeros(size(x_des));
    X_des = [x_des,x_d_des];
end