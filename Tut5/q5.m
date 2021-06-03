[X,Y1,Y2]=SystemODE(0,2,1,0.1,10,@(x,y1,y2) y1 -y1*y2 +sin(pi*x),@(x,y1,y2) y1*y2 -y2);
plot(X,Y1);
hold on
plot(X,Y2);
hold off