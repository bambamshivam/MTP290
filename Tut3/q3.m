A=[1 -1 3;0 2 -3;0 0 -6.5];
b=[1;7;6.5];
up_tr(A,b);
function [X]=up_tr(A,b)
    X=zeros(size(A,1),1);
    n=size(A,1);
    X(n)=b(n)/A(n,n);
    for t=1:n-1
        s=0;
        i=n-t;
        for j=i+1:size(A,1)
            s=s+(A(i,j)*X(j));
        end
        X(i)=(b(i)-s)/A(i,i);
    end
    disp(X);
end