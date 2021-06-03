function [root,i]=modified_newton_raphson(f,df,x0,e,m)
    k=1;
    x1=x0 - (f(x0)/df(x0));
    while abs(x1-x0)>e
        x0=x1;
        x1=x1- m*(f(x1)/df(x1));
        k=k+1;
    end
    root=x1;
    i=k;
end