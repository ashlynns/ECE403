function out = Beale_fun(x)
% The Beale function 
    a = x(1); b = x(2);
    out = (a*b-a+1.5)^2+(a*(b^2)-a+2.25)^2+(a*(b^3)-a+2.625)^2;
end