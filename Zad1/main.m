% Zadanie domowe nr 1
% 17.10.2018
% Program rysuj¹cy wielok¹ty
clc; clear; close all;
disp('Program rysuj¹cy wielok¹ty');

subplot = input('Wybierz liczbê wykresów na subplocie (1,2,4 lub 6): ');
polygon = input('Podaj liczbê wielok¹tów na ka¿dym z wykresów: ');
angle = input('Ile k¹tów maj¹ mieæ te wielok¹ty? ');

draw_polygons(subplot,polygon,angle);

