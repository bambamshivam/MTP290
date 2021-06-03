f =@(x,y) -y*tan(x) + sin(2*x);
[X,Y]=Runge_Kutta(0,1,0.1,10,f);
plot(X,Y);