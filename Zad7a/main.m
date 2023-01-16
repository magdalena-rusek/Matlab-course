% Zadanie domowe nr 7a
% 05.12.2018
% Ca³kowanie numeryczne metod¹ prostok¹tów
clc; clear; close all;

xp=0;
xk=0.5;
xl=1:50;
fun = @(x) exp(-x.^2).*log(x).^2;

q=integral(fun,xp,xk);
plot(xl,q,'k.');
for p=1:50
  hold on;
  o=rect(xp,xk,p);
  plot(p,o,'m.');
  hold on;
end
