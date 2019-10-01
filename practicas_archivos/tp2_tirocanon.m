% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%

%Guia de problemas 2

%Tiro en 2D de un "canion"

%% Primer caso, ang = pi/3 y v0 = 100 m/s.

% Ecuaciones de movimiento horizontal y vertical parametrizadas en t (tiempo).
%% x = cos(ang) * v0 * t
%% y = sen(ang) * v0 * t - (g/2) * t^2
%%
%% a = cos(ang) * v0
%% b = sen(ang) * v0
%% c = g/2

a = 50;
b = 86.603;
c = 4.9;

ezplot('50*t','86.603*t-4.9*t*t',[0,17.674])
