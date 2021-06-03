f=@(x) tanh(x);
df=@(x) sech(x)*sech(x);
a=-10;
b=15;
s=0.1;
e=10^(-10);
bis_new(a,b,s,f,df,e);
function [root]=bis_new(a,b,s,f,df,e)
    a0=a; % making a copy of a and b so that initial value of a and b is not changed
    b0=b;
    while (abs(s*(a-b)) <= abs(a0-b0)) % condition of bisection method loop as specified in the question
        c=(a0+b0)/2; % bisection methdod
        if (f(a0)*f(c)<0)
            b0=c;
        elseif (f(a0)*f(c)>0)
            a0=c;
        else
            break; % this condition means f(a0)*f(c)=0 or f(c)=0 i.e. c is the root.
        end
    end

    if (f(c)~=0) % checking if c is not the root if no then we use newton raphson method
        x0=a0; % taking one end of the interval [a0,b0] as starting value of newtons method as both are already close to the root because bisection method has reduced the interval [a,b] to [a0,b0] and root lies between a0 and b0. 
        while abs(f(x0))>e % stopping criteria for newtons method.
            x0=x0- (f(x0)/df(x0)); % updating x0 in newtons method.
        end
        root=x0;
        disp(root);
    else
        disp(c); 
    end

end