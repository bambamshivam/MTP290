function v=Gaus2p(a,b,f)
    v=((b-a)/2)*(f((b-a)*(1/sqrt(3))/2 + (a+b)/2) + f((b-a)*(-1/sqrt(3))/2 + (a+b)/2));
end