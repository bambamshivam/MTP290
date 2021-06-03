f=@(x) x-1-cos(x);
df=@(x) 1+sin(x);
[a,b]=newton_raphson(f,df,1,10^-7);