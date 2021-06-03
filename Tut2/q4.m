f=@(x) x-2 + log(x);
df=@(x) 1 + 1/x;
[a,b]=newton_raphson(f,df,1.5,10^-8);