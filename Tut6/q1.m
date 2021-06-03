p2=lp2(0,pi/4,pi/2,0,0.70711,1);
disp(p2(pi/6));
function [p2]=lp2(a,b,c,y0,y1,y2)
    p2= @(x) (x-c)*(x-b)*y0/((a-c)*(a-b)) + (x-a)*(x-b)*y2/((c-a)*(c-b)) + (x-c)*(x-a)*y1/((b-c)*(b-a));
end