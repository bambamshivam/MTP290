a=[1,1,2];
max=a(1);
for i=2:3
    if a(i)>max
        max=a(i);
    end
end
disp(max)
