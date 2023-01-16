function [t,x] = kutta1(fun,t,x0)
  h = 1.2;
  x= zeros(1,length(t));
  x(1)= x0;
  for k = 1:length(t)-1
    k1 = h * fun(t(k),x(k));
    x(k+1) = x(k) + k1;
  end

  plot(t,x,'ro-');
  hold on;
  t = t(:);
  x = x';
end
