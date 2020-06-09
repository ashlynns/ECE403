function Grad = Beale_grad(x)
% a)
% Gradient of the Beale function 
    a = x(1); b = x(2);
    x1_o = 2*a*(b^6)+2*a*(b^4)+5.25*(b^3)-4*a*(b^3)+4.5*(b^2)-2*a*(b^2)+3*b-4*a*b+6*a-12.75;
    x2_o = 6*(a^2)*(b^5)+4*(a^2)*(b^3)-6*(a^2)*(b^2)-2*(a^2)*(b)-2*(a^2)+15.75*a*(b^2)+9*a*b+3*a; 
    Grad = [x1_o;x2_o];
end