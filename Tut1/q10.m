a=0;
b=1;
c1=(a+b)/2;
if (cube(a)*cube(c1)<0)
    b=c1;
end
if (cube(b)*cube(c1)<0)
    a=c1;
end
c2=(a+b)/2;
i=2;
while abs(cube(c1)-cube(c2))>10^(-4)
    if (cube(a)*cube(c2)<0)
        b=c;
    end
    if (cube(b)*cube(c2)<0)
        a=c;
    end
    c1=c2;
    c2=(a+b)/2;
    i=i+1;
end
disp(c)
disp(i)
function y=cube(x)
    y=exp(-x)-x;
end
