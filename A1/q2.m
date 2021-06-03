f=@(x) x*x*x*x - 16*x*x*x + 89*x*x - 194*x + 120;
D=@(x) (f(x + f(x)) - f(x))/f(x);
x0=1.5;
%Taking x0=0.5 doesnot lead to the convergence of the above function and we
%get an infinite loop(it diverges to negative side). Taking values rather greater than 1 does lead to the
%convergence of the function to the actual root.
e=10^(-10);
ab(f,D,x0,e);
function [root,i]=ab(f,D,x0,e)
    k=0;
    enp=0;%to store error value at n+1 th step 
    en=0;%to store error value at nth step
    while (abs(f(x0))>e)%second condtition to stop the infinite loop when x0=0.5.
        x=x0;
        x0=x0- (f(x0)/D(x0));
        k=k+1;
        enm=en;%to store error value at n-1 th step
        en=enp;
        enp=abs(x0-x);
        if (k>=3)%error at every iteration after 3rd step.
            disp(log(enp/en)/log(en/enm));
        end 
    end
    root=x0;
    i=k;
    disp(root)
end