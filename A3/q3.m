a=-4;
b=4;
f=@(x) 1/(1 + x*x);
n=10;
v1=(b-a)*(f(a) + f(b))/2;%using trapezoidal rule
v2=(b-a)*(f(a) + 4*f((a+b)/2) + f(b))/6;%using simpson's rule
v3=Comp_Trap_Rule(a,b,f,n);%using composite tapezoidal rule
v4=Comp_Sim_Rule(a,b,f,n);%using composite simpsons rule
v5=Gaus2p(a,b,f);%using two point Gauss-Legendre quadrature rule
disp(v1);
disp(v2);
disp(v3);
disp(v4);
disp(v5);
%since actual integration value is atan(4)-atan(-4)=2.6516
%therefore Composite Trapezoidal rule gives the most accurate
%value. Also value using gauss two point rule is much more accurate 
%and gives much less error than trapezoidal rule or simpsons 
%rule but less accurate than composite method of trapezoidal or
%simpsons rule.
function a=Comp_Trap_Rule(x0,xn,f,n)
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
end
function a=Comp_Sim_Rule(x0,xn,f,n)
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
end
function v=Gaus2p(a,b,f)
    v=((b-a)/2)*(f((b-a)*(1/sqrt(3))/2 + (a+b)/2) + f((b-a)*(-1/sqrt(3))/2 + (a+b)/2));
end