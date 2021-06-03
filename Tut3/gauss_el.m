function [X]=gauss_el(A,b)
    n=size(A,1);
    for i=2:n
        for j=i:n
            c=A(j,i-1)/A(i-1,i-1);
            A(j,:)=A(j,:)-(c*A(i-1,:));
            b(j)=b(j)-(c*b(i-1));
        end
    end
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