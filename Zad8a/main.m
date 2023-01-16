% Zadanie domowe nr 8a
% 19.12.2018
% Regresja liniowa jednoparametrowa jednej zmiennej
clc; close all; clear;

a=dlmread('myfile.txt');
%dane=[1 1.2; 2.5 3.1 ;6 2.5 ;1.9 3; 5 6.1];
x=a(:,1);
y=a(:,2);
n=length(x);
lasum=0;
masum1=0;
sumy2=0;
sumx2=0;
%wsp a
for k=1:n
  lasum=lasum+x(k)*y(k);
  masum1=masum1+x(k)^2;
end

a=lasum/masum1
%niepewnosci
for k=1:n
  sumy2=sumy2+y(k)^2;
  sumx2=sumx2+x(k)^2;
end

da=sqrt((1/(n-2))*((sumy2/sumx2)-a^2))
%wykres
y1=fun1(x,a);
plot(x,y,'ro'); hold on;
plot(x,y1,'bo-'); hold on;
