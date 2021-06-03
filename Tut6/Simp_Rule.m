function a=Simp_Rule(x0,xn,f,n)
    h=(xn-x0)/n;
    a=0;
    X=zeros(1,n+1);
    X(1)=x0;
    X(n+1)=xn;
    for i=2:n
        X(i)=X(i-1)+h;
        if rem(i,2)==0
            a=a+4*f(X(i));
        else
            a=a+2*f(X(i));
        end
    end
    a=a + f(X(1)) + f(X(n+1));
    a=a*h/3;
    disp(X);
end