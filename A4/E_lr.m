function [E_lr_out] = E_lr(w) 
   X = [-1 0 2 0 1 2 ; -1 1 0 -2 0 -1]; 
   y = [1 1 1 -1 -1 -1]';  
   z = zeros(5, length(X));
   for i = 1:length(X)
       x1 = X(1,i);
       x2 = X(2,i);
       
       z(1,i) = x1;
       z(2,i) = x2;
       z(3,i) = x1^2;
       z(4,i) = x1*x2; 
       z(5,i) = x2^2; 
   end 
   w_padded = repmat(w,1,length(X));
   zdw = dot(z, w_padded, 1);
   exp_val = exp((-y)'.*zdw);
   sum_val = sum(log(1+exp_val));
   E_lr_out = sum_val/length(X);
end 