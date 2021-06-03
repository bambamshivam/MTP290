q(10,50,-100,@(x) x^3-5*x*x);
function [U,V]=q(n,u,v,f)
% u and v are initial values of the sequences un and vn and n is the
% length of the sequences desired (10 specifically) and f is function using which the
% sequences are generated. U and V are row matrices storing values of the
% sequences un and vn respectively.
    U=zeros(1,n); %initialising the matrices
    V=zeros(1,n);
    U(1)=u;
    V(1)=v;
    i=2; %to keep track of the length of the sequences and to use it as loop terminator.
    while i<=n %f(u) and f(v) have to have different signs to get the desired sequences of opposite signs in function f.
        w=(u*f(v) - v*f(u))/(f(v) - f(u));
        if (f(w)*f(u)>0) %f(u) and f(v) have same sign.
            u=w;
            
        elseif (f(w)*f(u)>0)
            v=w;
        else %if f(w) is 0 then I keep it in the positive sequence. 
            if (f(u)>=0)
                u=w;
            else
                v=w;
            end
        end
        U(i)=u; %storing u_ith and v_ith values.
        V(i)=v;
        i=i+1; %incrementing the length of the sequences.
    end
    disp(U);
    disp(V);
end
