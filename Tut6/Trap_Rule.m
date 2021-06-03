function a=Trap_Rule(x0,xn,f,n)
    h=(xn-x0)/n;
    a=0;
    X=zeros(1,n+1);
    X(1)=x0;
    X(n+1)=xn;
    for i=2:n
        X(i)=X(i-1)+h;
        a=a+f(X(i));
    end
    a=a + f(X(1))/2 + f(X(n+1))/2;
    a=a*h;
    disp(X);
end