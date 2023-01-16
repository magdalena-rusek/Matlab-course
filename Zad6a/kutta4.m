function [t,x] = kutta4(fun,t,x0)
  h = 1.2;
  x = zeros(length(x0),length(t));
  x(1)= x0;
  for k = 1:length(t)-1
    k1 = h * fun(t(k),x(k));
    k2 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k1*h);
    k3 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k2*h);
    k4 = h * fun(t(k) + h, x(k) + k3*h);
    x(k+1) = x(k) + 1/6*(k1 + 2*k2 + 2*k3 + k4);
  end

  plot(t,x,'mo-');
  hold on;
  t = t(:);
  x = x';
end
