f=@(x) x^2;
df=@(x) (1/3)*x^(-2/3);
x0=1;
[a,b]=newton_raphson(f,df,0.5);

