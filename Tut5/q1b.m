f =@(x,y) 0.5*pi*(1- y*y)^0.5;
[X,Y]=Euler_Method(0,0,0.01,100,f);
plot(X,Y);