% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%

%% NOTA: se recomienda no emplear acentos y otros caracteres que no son del "english".

%% Guia de problemas 2

%% Inciso a)

%% Punto P(x0,y0,z0)
x0 = 0.5;
y0 = 0.5;
z0 = 0.5;

%% Ecuacion del plano ax + by + cz + d = 0
a = 1;
b = 1;
c = 1;
d = -sqrt(3);

%% Funcion distancia: d = abs(a*x0+b*y0+c*z0+d)/sqrt(a^2+b^2+c^2);
d = abs(a*x0+b*y0+c*z0+d)/sqrt(a^2+b^2+c^2)

ezsurf('-x-y+sqrt(3)')

%% Inciso b)

%% Inciso c)

