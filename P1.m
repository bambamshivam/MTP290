disp(FRIEND(5,7));
function [Q]=FRIEND(n,m)
    Q=zeros(2*n,2*m);
    A=10*ones(n,m);
    B=200*ones(n,m);
    C=2*ones(n,m);
    D=400*ones(n,m);
    Q(1:n,1:m)=A;
    Q(1:n,m+1:2*m)=B;
    Q(n+1:2*n,1:m)=C;
    Q(n+1:2*n,m+1:2*m)=D;
end