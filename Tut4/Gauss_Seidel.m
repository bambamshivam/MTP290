function [X,c]=Gauss_Seidel(A,b,X1,err)
    n=size(A,1);
    X=X1;
    c=0;
    p=5;
    while p>err && c<1000 
        X1=X;
        for i=1:n
            k=A(i,:);
            k(1,i)=0;
            s=k*X; 
            X(i)=(1/A(i,i))*(b(i)-s);
        end
        c=c+1;
        p=norm((X1-X),2);
    end
    disp(X);
end