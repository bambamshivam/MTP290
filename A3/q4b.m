A=[4 1 -1;2 7 1;1 -3 12];
b=[3;19;31];
X1=[0;0;0];
err=10^-10;
GJ(A,b,X1,err);
function [X,c]=GJ(A,b,X1,err)
    n=size(A,1);
    X=X1;
    c=0;
    p=5;
    while p>err && c<1000
        X1=X;
        for i=1:n
            k=A(i,:);
            k(1,i)=0;
            s=k*X1;%here older values of x are used and after all the variables are updated then they are used in next iteration of Gauss Jacobi method.
            X(i)=(1/A(i,i))*(b(i)-s);
        end
        c=c+1;
        p=norm(X1-X,inf);
    end
    disp(X);
end