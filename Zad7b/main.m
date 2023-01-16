% Zadanie domowe nr 7b
% 05.12.2018
% Rejection sampling
clc; clear; close all;

n=10^5;
probkax = rand(n,1);
wart_prob = fun(probkax);
max_wart = max(wart_prob);
ok = rand(n,1) < (wart_prob/max_wart);
probkki = probkax(ok);
histogram(probkki,1000,'Normalization','pdf')
hold on;
plot(probkax,fun(probkax),'m.')
%subplot(1,2,1)
%plot(probkax, fun(probkax),'b.')
%subplot(1,2,2)
%hist(probkki,1000)

