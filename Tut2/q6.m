f1=@(x) x^(2/3);
f2=@(x) (-1*x)^(2/3);
df1=@(x) (2/3)*x^(-1/3);
df2=@(x) (2/3)*(x*-1)^(-1/3);
x0=1;
e=10^-7;
[a,b]=n(f1,f2,df1,df2,0.5,10^-4);
function [root,i]=n(f1,f2,df1,df2,x0,e)
    k=1;
    f=f1;
    df=df1;
    x1=x0 - (f(x0)/df(x0));
    while abs(x1-x0)>e
        x0=x1;
        if(x1<0)
            f=f2;
            df=df2;
        end
        if(x1>=0)
            f=f1;
            df=df1;
        end
        x1=x1- (f(x1)/df(x1));
        k=k+1;
    end
    root=x1;
    i=k;
end