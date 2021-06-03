x0=0;
x1=1;
while abs(x1-x0)>10^(-4)
    c=x1;
    x1=x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
    x0=c;
end