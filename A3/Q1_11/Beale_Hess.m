function Hess = Beale_Hess(x)
% a)
% Hessian of the Beale function
    a = x(1); b = x(2);
    x11_o = 2*(b^6)+2*(b^4)-4*(b^3)-2*(b^2)-4*b+6; 
    x12_o = 12*a*(b^5)+8*a*(b^3)-12*a*(b^2)-4*a*b-4*a+15.75*(b^2)+9*b+3;
    x21_o = x12_o; 
    x22_o = 30*(a^2)*(b^4)+12*(a^2)*(b^2)-12*(a^2)*b-2*(a^2)+31.5*a*b+9*a; 
    Hess = [x11_o x21_o; x12_o x22_o];
end
