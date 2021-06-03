x0=0;
x1=1;
y0=0;
y1=1;
n=8;
p=@(x) 0;
q=@(x) 0;
f=@(x) -1;
BVP(x0,x1,y0,y1,n,p,q,f);
function [X,Y]=BVP(x0,x1,y0,y1,n,p,q,f)
    h=(x1-x0)/n;
    X=zeros(n-1,1);
    b=zeros(n-1,1);
    A=zeros(n-1);
    for i=1:n-1
        X(i)=x0+ i*h;
    end
    A(1,1)=2+ q(X(1))*h*h;
    A(1,2)=p(X(1))*h/2 -1;
    b(1)=(1+ p(X(1))*h/2)*y0 + h*h*f(X(1));
    for i=2:n-2
        A(i,i-1)=-1 -p(X(i))*h/2;
        A(i,i)=2+ q(X(i))*h*h;
        A(i,i+1)=p(X(i))*h/2 -1;
        b(i)=h*h*f(X(i));
    end
    A(n-1,n-2)=-1 -p(X(n-1))*h/2;
    A(n-1,n-1)=2 + q(X(n-1))*h*h;
    b(n-1)=(1- p(X(n-1))*h/2)*y1 + h*h*f(X(n-1));
    Y=A\b;
    X1=zeros(n+1,1);
    X1(2:n)=X;
    X1(1)=x0;
    X1(n+1)=x1;
    Y1=zeros(n+1,1);
    Y1(2:n)=Y;
    Y1(1)=y0;
    Y1(n+1)=y1;
    X=X1;
    Y=Y1;
    disp(X);
    disp(Y);
end