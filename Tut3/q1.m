A=diag([1,2,3]);
b=[1;1;1];
diag_solve(A,b);
function [X]=diag_solve(A,b)
    X=zeros(size(A,1),1);
    for i=1:size(A,1)
        X(i)=b(i)/A(i,i);
    end
    disp(X);
end