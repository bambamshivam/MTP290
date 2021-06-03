a=0;
b=1;
c=(a+b)/2;
if (cube(a)*cube(c)<0)
    b=c;
end
if (cube(b)*cube(c)<0)
    a=c;
end
c1=(a+b)/2;
while abs(cube(c1)-cube(c))>10^(-4)
    if (cube(a)*cube(c1)<0)
        b=c1;
    end
    if (cube(b)*cube(c1)<0)
        a=c1;
    end
    c=c1;
    c1=(a+b)/2;
end
disp(c)
function y=cube(x)
    y=x*x*x -7*x*x +14*x -6;
end
