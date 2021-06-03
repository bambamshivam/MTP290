f =@(x,y) y- y*y;
[X,Y]=Improved_Euler_Method(0,0.2,0.1,10,f);
plot(X,Y);