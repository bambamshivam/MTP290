a=-0.20; % number whose reciprocal is to be calculated.
f=@(x) a*x - 1; % function whose root is 1/a.(Solving f(x)=0 gives x=1/a.)
df=@(x) a; % differentiation of above function with respect to x.
x0=1;  % Initial value to start newton raphson because df/dx is always defined except when a is not equal to 0 which is already given in the question so x0 can be 1. 
e=10^(-10); % Stopping criteria of iteration.
abc(f,df,x0,e);
% Using newton raphson method to calculate the root of f = a*x - 1 as df/dx
% is always defined (as a~=0) so the root will give the value of 1/a as
% solving f=0 gives x=1/a.

function [root,i]=abc(f,df,x0,e)
    k=0;
    while abs(f(x0))>e % stopping criteria for newtons method.
        x0=x0- (f(x0)/df(x0)); % updating x0 in newtons method.
        k=k+1;
    end
    root=x0;
    i=k;
    disp(root);
end