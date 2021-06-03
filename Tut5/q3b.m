f =@(x,y) y- y*y;
[X,Y]=Improved_Euler_Method(0,0.2,0.1,10,f);
plot(X,Y);
hold on
[X1,Y1]=Runge_Kutta(0,0.2,0.1,10,f);
plot(X1,Y1);
hold off
