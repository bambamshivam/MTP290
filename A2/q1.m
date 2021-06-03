A=[4 1 -1;5 1 2;6 1 1];
b=[-2;4;6];
[X,L,U]=GaEl(A,b); %verifying my solution
disp(L);%displaying matrices for verification
disp(U);
disp(X);
disp(A\b);% to compare from inbuilt matlab function
function [X,L,U]=GaEl(A,b)
% Q1  a)
    n=size(A,1);
    D=ones(1,n); %since diagonal of L contains 1
    L=diag(D);%initialising Lower triangular matrix with diagonals 1 and rest 0
    for i=2:n % i-1 represents the variable to be eliminated from i to n rows.
        for j=i:n %iterating over following rows to eliminate the i-1 th variable.
            c=A(j,i-1)/A(i-1,i-1); % m_(j,i-1)
            L(j,i-1)=c; % forming Lower triangular matrix
            A(j,:)=A(j,:)-(c*A(i-1,:)); %eliminating variable i-1 by multiplying correspondig m and subtraction from the entire jth row.
            b(j)=b(j)-(c*b(i-1)); % same for b matrix
        end
    end
    U=A; %since A is converted to an upper triangular matrix.
    % Q1(b)
    X=zeros(n,1); %initialising solution matrix
    X(n)=b(n)/A(n,n); %by last equation x_n can be obtained directly.
    for t=1:n-1
        s=0;
        i=n-t; % variables are solved in reverse order by construction of the method.
        for j=i+1:size(A,1)
            s=s+(A(i,j)*X(j)); %all these variables are already solved and help in getting i_th variable.
        end
        X(i)=(b(i)-s)/A(i,i);
    end
end