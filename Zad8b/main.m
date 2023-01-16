% Zadanie domowe nr 8b
% 19.12.2018
% Regresja liniowa dwuparametrowa jednej zmiennej
clc; close all; clear;

a=dlmread('myfile.txt');
%dane=[1 1.2; 2.5 3.1 ;6 2.5 ;1.9 3; 5 6.1];
x=a(:,1);
y=a(:,2);
n=length(x);
lasum=0;
masum1=0;
masum2=0;
lbsumx=0;
lbsumy=0;
sumy2=0;
sumxy=0;
sumy=0;
sumx2=0;
sumx=0;
%wsp a
for k=1:n
  lasum=lasum+x(k)*y(k);
  masum1=masum1+x(k)^2;
  masum2=masum2+x(k);
end

a=(n*lasum-lasum)/(n*masum1-(masum2)^2)
%wsp b
for k=1:n
  lbsumx=lbsumx+x(k);
  lbsumy=lbsumy+y(k);
end

b=(lbsumy-a*lbsumx)/n
%niepewnosci
for k=1:n
  sumy2=sumy2+y(k)^2;
  sumxy=sumxy+x(k)*y(k);
  sumy=sumy+y(k);
  sumx2=sumx2+x(k)^2;
  sumx=sumx+x(k);
end

da=sqrt((n/(n-2))*(sumy2-a*sumxy-b*sumy)/(n*sumx2-(sumx)^2))
db=sqrt(sumx2/n)*da
%wykres
y1=fun1(x,a,b);
plot(x,y,'ro'); hold on;
plot(x,y1,'bo-'); hold on;
