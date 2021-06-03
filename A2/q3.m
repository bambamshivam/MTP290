X=Tridiagsolve([4 1 0 0;5 1 2 0;0 1 1 6;0 0 6 6],[-2;4;6;6]);
disp(X);
disp([4 1 0 0;5 1 2 0;0 1 1 6;0 0 6 6]\[-2;4;6;6]); % to compare from inbuilt matlab function
function X=Tridiagsolve(A,s) %A is coefficient matrix having three central diagonals and s is constant matrix of RHS
    n=size(A,1);
    X=zeros(n,1); 
    C=zeros(n-1,1);% calculating c' s and storing in matrix of size n-1
    C(1)=A(1,2)/A(1,1);
    D=zeros(n,1);% calculating d' s and storing in matrix of size n
    D(1)=s(1)/A(1,1);
    for i=2:n-1
        C(i)=A(i,i+1)/(A(i,i)- A(i,i-1)*C(i-1)); %applying formulas given in the question
        D(i)=(s(i)- A(i,i-1)*D(i-1))/(A(i,i)- A(i,i-1)*C(i-1));
    end
    D(n)=(s(n)- A(n,n-1)*D(n-1))/(A(n,n)- A(n,n-1)*C(n-1)); %since above loop runs till n-1
    X(n)=D(n);%since x_n=d'_n
    for i=1:n-1
        t=n-i;%values are calculated in reverse order
        X(t)=D(t) - C(t)*X(t+1);
    end
end