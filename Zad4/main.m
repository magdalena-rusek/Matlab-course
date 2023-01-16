% Zadanie domowe nr 4
%
% Aproksymacja szeregiem Taylora
clc; clear; close all;

y1=20;
y2=-20;
x1=input('Podaj lewa str przedzialu: ')
x2=input('Podaj prawa str przedzialu: ')
n=input('Podaj rzad aproksymacji: ')
a=input('Podaj pkt wokol ktorego chcesz aproksymowac: ')
syms x;
y=sin(x);
ezplot(y,[x1,x2]);
axis tight;
hold on;
y0=subs(y,x,a);
sz=y0;
for m=1:1:n
  dy=diff(y);
  yn=(subs(dy,x,a))*((x-a)^m)/factorial(m);
  sz=sz+yn;
  ezplot(sz,[x1,x2]);
  xlim([x1,x2]);
  ylim([y2,y1]);
  hold on;
  pause;
  y=dy;
end
