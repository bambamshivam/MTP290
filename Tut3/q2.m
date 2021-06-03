A=[1 0 0;1 1 0;3 .5 1];
b=[1;2;1];
lo_tr(A,b);
function [X]=lo_tr(A,b)
    X=zeros(size(A,1),1);
    X(1)=b(1)/A(1,1);
    for i=2:size(A,1)
        s=0;
        for j=1:i-1
            s=s+(A(i,j)*X(j));
        end
        X(i)=(b(i)-s)/A(i,i);
    end
    disp(X);
end