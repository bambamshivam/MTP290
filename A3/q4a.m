A=[10 1;1 10];
b=[11;11];
X1=[0.5;0.5];
err=10^-4;
GS(A,b,X1,err);
function [X,c]=GS(A,b,X1,err)
    n=size(A,1);
    X=X1;
    c=0;
    p=5;%initialised to some large value just for first iteration
    while p>err && c<1000 %maximum number of iterations after which this process to be stopped in case it doesnot converge to a solution
        X1=X;
        for i=1:n
            k=A(i,:);
            k(1,i)=0;
            s=k*X; %here the updated values of X are used.
            X(i)=(1/A(i,i))*(b(i)-s);
        end
        c=c+1;
        p=norm((X1-X),inf);
    end
    disp(X);
end