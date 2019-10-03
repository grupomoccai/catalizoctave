% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% 
% Trabajo Practico 4

% Este script suma los elementos de un vector x.

x=[2 5 4 8 9 5 8 6 8 2 9 6 6 4];

total = 0;

for j = 1:length(x)
  total = total + x(j);
end

fprintf(1,"La suma de los elementos de x es %d\n", total)


