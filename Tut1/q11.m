x0=1;
x1=x0 - (f(x0)/fd(x0));
while abs(x1-x0)>10^(-4)
    x0=x1;
    x1=x1- (f(x1)-fd(x1));
end