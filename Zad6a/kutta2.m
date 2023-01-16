function [t,x] = kutta2(fun,t,x0)
  h = 1.2;
  x= zeros(1,length(t));
  x(1)= x0;
  for k = 1:length(t)-1
    k1 = h * fun(t(k),x(k));
    k2 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k1);
    x(k+1) = x(k) + k2;
  end

  plot(t,x,'bo-');
  hold on;
  t = t(:);
  x = x';
end
