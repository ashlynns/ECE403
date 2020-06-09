
x0_1 = [2 ; 3]; 
x0_2 = [-3; 3]; 
x0_3 = [2; -3]; 
x0_4 = [-3;-3]; 

epsilon = 10^-6; 

% GD Algorithm 
disp('Initial point 1:')
[xs_1,fs_1,k_1] = grad_desc('Beale_fun','Beale_grad',x0_1,epsilon);
disp('Gradient at solution produced by initial point 1:')
grad_1 = Beale_grad(xs_1)
disp('Hessian at solution produced by initial point 1:')
hess_1 = Beale_Hess(xs_1)
eig_1 = eig(hess_1)

disp('Initial point 2:')
[xs_2,fs_2,k_2] = grad_desc('Beale_fun','Beale_grad',x0_2,epsilon);
disp('Gradient at solution produced by initial point 2:')
grad_2 = Beale_grad(xs_2)
disp('Hessian at solution produced by initial point 2:')
hess_2 = Beale_Hess(xs_2)
eig_2 = eig(hess_2)


disp('Initial point 3:')
[xs_3,fs_3,k_3] = grad_desc('Beale_fun','Beale_grad',x0_3,epsilon); 
disp('Gradient at solution produced by initial point 3:')
grad_3 = Beale_grad(xs_3)
disp('Hessian at solution produced by initial point 3:')
hess_3 = Beale_Hess(xs_3)
eig_3 = eig(hess_3)

disp('Initial point 4:')
[xs_4,fs_4,k_4] = grad_desc('Beale_fun','Beale_grad',x0_4,epsilon); 
disp('Gradient at solution produced by initial point 4:')
grad_4 = Beale_grad(xs_4)
disp('Hessian at solution produced by initial point 4:')
hess_4 = Beale_Hess(xs_4)
eig_4 = eig(hess_4)

% Newton 
disp('Initial point 1:')
[xs_n1,fs_n1,k_n1] = newton('Beale_fun','Beale_grad','Beale_Hess',x0_1,0.1,epsilon);
disp('Gradient at solution produced by initial point 1:')
grad_n1 = Beale_grad(xs_n1)
disp('Hessian at solution produced by initial point 1:')
hess_n1 = Beale_Hess(xs_n1)
eig_n1 = eig(hess_n1)

disp('Initial point 2:')
[xs_n2,fs_n2,k_n2] = newton('Beale_fun','Beale_grad','Beale_Hess',x0_2,0.2,epsilon);
disp('Gradient at solution produced by initial point 2:')
grad_n2 = Beale_grad(xs_n2)
disp('Hessian at solution produced by initial point 2:')
hess_n2 = Beale_Hess(xs_n2)
eig_n2 = eig(hess_n2)

disp('Initial point 3:')
[xs_n3,fs_n3,k_n3] = newton('Beale_fun','Beale_grad','Beale_Hess',x0_3,0.3,epsilon);
disp('Gradient at solution produced by initial point 3:')
grad_n3 = Beale_grad(xs_n3)
disp('Hessian at solution produced by initial point 3:')
hess_n3 = Beale_Hess(xs_n3)
eig_n3 = eig(hess_n3)

disp('Initial point 4:')
[xs_n4,fs_n4,k_n4] = newton('Beale_fun','Beale_grad','Beale_Hess',x0_4,0.4,epsilon);
disp('Gradient at solution produced by initial point 4:')
grad_n4 = Beale_grad(xs_n4)
disp('Hessian at solution produced by initial point 4:')
hess_n4 = Beale_Hess(xs_n4)
eig_n4 = eig(hess_n4)

