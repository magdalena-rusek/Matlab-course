% Zadanie domowe nr 6a
% 21.11.2018
% Metoda Rungego-Kutty
clc; clear; close all;

t=1:8;
figure(1);
kutta1(@odefun, t, 4)
kutta2(@odefun, t, 4)
kutta3(@odefun, t, 4)
kutta4(@odefun, t, 4)
