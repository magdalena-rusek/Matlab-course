% Zadanie domowe nr 1
% 17.10.2018
% Program rysuj�cy wielok�ty
clc; clear; close all;
disp('Program rysuj�cy wielok�ty');

subplot = input('Wybierz liczb� wykres�w na subplocie (1,2,4 lub 6): ');
polygon = input('Podaj liczb� wielok�t�w na ka�dym z wykres�w: ');
angle = input('Ile k�t�w maj� mie� te wielok�ty? ');

draw_polygons(subplot,polygon,angle);

