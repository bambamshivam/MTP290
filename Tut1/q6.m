f=1;
i=1;
while true
    c=0;
    f=f*i;
    m=f;
    i=i+1;
    while m>0
        r=rem(m,10);
        m=(m-r)/10;
        c=c+1;
    end
    if c>100
        break;
    end
end
disp(i-1)