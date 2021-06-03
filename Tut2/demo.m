A=[1,2,3,4;1,2,3,4;1,2,3,4;1,2,3,4];
B=zeros(4,4);
for i=1:4
    for j=1:4
        B(i,j)=A(i,:)*A(:,j);
    end
end