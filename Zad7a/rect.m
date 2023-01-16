function s = rect(xp,xk,n)
  fun = @(x) exp(-x.^2).*log(x).^2;
  dx=(xk-xp)/n;
  s=0;
  xs=(xp+dx)/2;
  for k=1:n
    xn=xp+k*dx;
    fk=fun(xs);
    s=s+fk*dx;
    xs=xs+dx;
  end
  s;
end
