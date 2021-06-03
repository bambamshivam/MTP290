function [X,Y]=Euler_Method(x0,y0,h,N,f)
    Y=zeros(1,N+1);
    X=zeros(1,N+1);
    Y(1)=y0;
    X(1)=x0;
    for i=2:N+1
        Y(i)=Y(i-1) + h*f(X(i-1),Y(i-1));
        X(i)=X(i-1)+h;
    end
    disp(X)
    disp(Y)
end