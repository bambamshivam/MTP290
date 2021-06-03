n=10;
A=zeros(n);
for i=1:n
    A(i,n-i+1)=-1;
end
disp(A)
