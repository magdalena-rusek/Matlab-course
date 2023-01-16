function [t,x] = kutta3(fun,t,x0)
  h = 1.2;
  x = zeros(length(x0),length(t));
  x(1)= x0;
  for k = 1:length(t)-1
    k1 = h * fun(t(k),x(k));
    k2 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k1*h);
    k3 = h * fun(t(k) + h, x(k) -k1*h + 2*k2*h);
    x(k+1) = x(k) + 1/6*(k1 + 4*k2 + k3);
  end

  plot(t,x,'go-');
  hold on;
  t = t(:);
  x = x';
end
