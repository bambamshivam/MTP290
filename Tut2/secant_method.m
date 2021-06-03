function [root,i]=secant_method(x0,x1,f,e)
    while abs(x1-x0)>e
        c=x1;
        x1=x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
        x0=c;
    end
    root=x1;
end