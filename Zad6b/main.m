% Zadanie domowe nr 6b
% 21.11.2018
% Przyk³ad chaosu deterministycznego
% Uk³ad Lorentza
clc; clear; close all;

[t,y] = ode45(@loren,[0 100],[0 0.5 1]);
comet3(y(:,1),y(:,2),y(:,3))
