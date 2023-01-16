% Zadanie domowe nr 2
% 24.10.2018
% Wielomian i wzory Viete'a
clc; clear; close all;

degree=input('Podaj stopieñ wielomianu: ');
x0=rand(degree,1);
a=poly(x0) %wspó³czynniki
x=-5:0.001:5;
y=polyval(a,x);

figure;
plot(x,y,'b-'); hold on;
plot(x0,polyval(a,x0),'ro');
f=x1^2+x1*a(2)/a(1)+a(3)/a(1);
f=0;
r=roots(f);
x2=a(3)/a(1) - x1;
