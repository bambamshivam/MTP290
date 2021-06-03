function [X,Y1,Y2]=SystemODE(x0,y10,y20,h,N,f1,f2)
    Y1=zeros(1,N+1);
    Y2=zeros(1,N+1);
    X=zeros(1,N+1);
    Y1(1)=y10;
    Y2(1)=y20;
    X(1)=x0;
    for i=2:N+1
        Y1(i)=Y1(i-1) + h*f1(X(i-1),Y1(i-1),Y2(i-1));
        Y2(i)=Y2(i-1) + h*f2(X(i-1),Y1(i-1),Y2(i-1));
        X(i)=X(i-1)+h;
    end
    disp(X)
    disp(Y1)
    disp(Y2)
end