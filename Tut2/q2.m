f=@(x) 27*(x^4) +162*(x^3) -180*(x^2)  +62*x -7;
df=@(x) 108*(x^3) +486*(x^2) -360*x +62;
ddf=@(x) 324*(x^2) + 972*x -360;
[a,b]=newton_raphson(f,df,0,10^-8);
[c,d]=modified_newton_raphson(f,df,0,10^-8,3);