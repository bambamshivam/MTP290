n=15;
for i=1:n
    for j=1:n
        if i-j>0
            result=(n -i + j +1);
        end
        if i-j<=0
            result=(j-i+1);
        end
        fprintf('%d ',result);
    end
    disp(" ");
end