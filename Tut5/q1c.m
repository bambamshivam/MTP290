f =@(x,y) -20*y +20*x*x +2*x;
[X,Y]=Euler_Method(0,1,0.1,10,f);
plot(X,Y);
hold on
x=0:0.001:1;
y=exp(-20*x)+ x.*x;
plot(x,y);
hold off
