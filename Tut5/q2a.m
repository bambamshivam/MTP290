f =@(x,y) x*y*y;
[X,Y]=Improved_Euler_Method(0,1,0.1,10,f);
plot(X,Y);