p3=lp3(0,1,2,4,0,1,8,64);
disp(p3(3));
function [p3]=lp3(a,b,c,d,y0,y1,y2,y3)
    p3= @(x) (x-c)*(x-b)*(x-d)*y0/((a-c)*(a-b)*(a-d)) + (x-a)*(x-b)*(x-d)*y2/((c-a)*(c-b)*(c-d)) + (x-c)*(x-a)*(x-d)*y1/((b-c)*(b-a)*(b-d)) + (x-c)*(x-a)*(x-b)*y3/((d-c)*(d-a)*(d-b));
end