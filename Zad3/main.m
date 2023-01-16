% Zadanie domowe nr 3
% 31.10.2018
% Metoda po³owienia - bisekcji
clc; clear; close all;

f1=input('Podaj wzor funkcji: ', 's');
f=inline(f1);
a=input('Podaj poczatek przedzialu: ');
b=input('Podaj koniec przedzialu: ');
fa=f(a);
fb=f(b);
x0=(a+b)/2;
fx0=f(x0);
eps=0.00000001;
if fa*fb>0
  disp('Funkcja nie ma miejsc zerowych, nie spelnia zalozen');
end

if fx0==0
  x0
end

if fa*fb<0 & fx0~=0
  while abs(b-a)>eps
    fa=f(a);
    fb=f(b);
    x0=(a+b)/2;
    fx0=f(x0);
    if fa*fx0<0
      b=x0;
    end

    if fb*fx0<0
      a=x0;
    end
  end
  x0
end
