f=@(x) tan(x)-x;
df=@(x) 1/((cos(x))^2);
x=4;
[a,b]=newton_raphson(f,df,x,10^-7);