f =@(x,y) -0.2*y;
[X,Y]=Euler_Method(0,5,0.2,10,f);
plot(X,Y);