% To implement the gradient descent algorithm.
function [xs, k] = LRBC_GD(fname,gname,x0,epsi, X, y)
format compact
format long
k = 1;
y = y(:)';
[N,P] = size(X);
N1 = N + 1;
Ine = 1e-10*eye(N1);
ind = 1:1:P;
indp = find(y > 0);
indn = setdiff(ind,indp);
Xh = [X; ones(1,P)];
Xp = Xh(:,indp);
Xn = Xh(:,indn);
Xw = [Xp -Xn];
xk = x0;
gk = feval(gname, xk, Xw);
dk = -gk;
ak = bt_lsearch2019(xk,dk, fname,gname,Xw);
adk = ak*dk;
er = norm(adk);
while er >= epsi,
  xk = xk + adk;
  gk = feval(gname,xk, Xw);
  dk = -gk
  ak = bt_lsearch2019(xk,dk, fname,gname,Xw);
  adk = ak*dk;
  er = norm(adk)
  k = k + 1;
end
disp('solution:')
xs = xk + adk
format short
disp('number of iterations performed:')
k