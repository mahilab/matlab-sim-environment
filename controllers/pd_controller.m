function [tau] = pd_controller(Kp, Kd, X, X_des)
    X = reshape(X,length(X),1);
    X_des = reshape(X_des,length(X_des),1);
    
    x  = X(1:length(X)/2);
    xd = X(length(X)/2+1:end);
    
    x_des  = X_des(1:length(X_des)/2);
    xd_des = X_des(length(X_des)/2+1:end);
    
    tau = Kp*(x_des-x) + Kd*(xd_des-xd);
end