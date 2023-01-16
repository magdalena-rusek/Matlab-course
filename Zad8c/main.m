% Zadanie domowe nr 8
% 19.12.2018
% Regresja liniowa dwóch zmiennych
clc; close all; clear;

a=dlmread('myfile1.txt');
y=a(:,1);
x1=a(:,2);
x2=a(:,3)
%y=[7;2;9;-5;-2;10;0;6;6;5];
%x1=[-22;0;-5;1;7;-2;15;11;-31;3];
%x2=[1;0;5;-3;-1;7;0;2;12;9];
b0=0;
b1=0;
b2=0;
n=length(y);
x=ones(n,3);
x(:,2)=x1(:,1);
x(:,3)=x2(:,1);
b=[b0;b1;b2];
b=inv((x')*x)*(x')*y
plot3(x1,x2,y,'ro'); hold on; grid on;
[xx,yy]=meshgrid(x1,x2)
y1=b(1)+b(2)*xx+b(3)*yy;
mesh(x1,x2,y1,'edgecolor', 'g'); hold on;
