[X,Y1,Y2]=Second_Order_Runga_Kutta(0,1,2,0.1,10,@(x,y1,y2) -4*y1 +y2 +sin(pi*x),@(x,y1,y2) y1 -4*y2);
plot(X,Y1);
hold on
plot(X,Y2);
hold off