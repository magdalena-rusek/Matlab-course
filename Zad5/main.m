% Zadanie domowe nr 5
% 14.11.2018
% Metoda gradientu prostego
clc; clear; close all;

x0(1)=input('podaj x0-x ')
x0(2)=input('podaj x0-y ') %wprowadzamy pkt startowy x0
e=0.05; %poczatkowa dl kroku
beta=0.1; %wspolczynnik zmniejszania kroku
eps=0.001;
norm_g=inf;
dmin=0.000001;
dx=inf;
minn=0;
maxx=1000;
syms x y;
%f=(x+2)^2+(y+3)^2;
f=2*x.^2 + 4*y.^2;
g=[diff(f,x),diff(f,y)]; %pochodne czastkowe
g0=subs(g, [x,y], [x0(1), x0(2)]) ; %g(x0)
k=-g0 %kierunek poszukiwan
x_=x0;
figure;
fcontour(f); hold on;
while (norm_g >= eps && dx >= dmin && minn <= maxx)
  %kryterium stopu
   x_n=x_ + e*k;

   gn=(subs(g, [x,y], [x_n(1), x_n(2)]));

   norm_g=norm(gn);

   plot([x_(1), x_n(1)], [x_(2), x_n(2)],'bo-')
   hold on;
   pause
   minn=minn+1;
   dx = norm(x_n-x_); %kryt stop
   x_=x_n;
   k=-gn;
end
