
% test for faseParaSequencia.m
clear all
close all
clc

ar= pol2cart( deg2rad(120),1);
a= complex(ar(1),ar(2));
%caso 1 sistema equilibrado
fases=[110 110*a 110*(a^2)];
disp (faseParaSequencia(fases));

%caso 2 sequencia negativa
fases1=[110 110*a^2 110*a];
disp (faseParaSequencia(fases1));

% caso 3 sequencia zero
fases3=[110 110 110];
disp (faseParaSequencia(fases3));
