function [X,Y]=Runge_Kutta(x0,y0,h,N,f)
    Y=zeros(1,N+1);
    X=zeros(1,N+1);
    Y(1)=y0;
    X(1)=x0;
    for i=2:N+1
        k1=h*f(X(i-1),Y(i-1));
        k2=Y(i-1) + h*f(X(i-1)+ h/2,Y(i-1)+ k1/2);
        k3=Y(i-1) + h*f(X(i-1)+ h/2,Y(i-1)+ k2/2);
        k4=Y(i-1) + h*f(X(i-1)+ h,Y(i-1)+ k3);
        Y(i)=Y(i-1) + (1/6)*(k1+ 2*k2+ 2*k3+k4);
        X(i)=X(i-1)+h;
    end
    disp(X)
    disp(Y)
end