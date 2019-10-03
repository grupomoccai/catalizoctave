% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Trabajo Practico 4

% Este es un script que contiene una funcion rampa(x).
% Primero se crea la funcion y finalmente se comprueba que funcione.

clear 
close all
clc

% ---------------------------------------------------------------
% 1) Creamos la funcion:

function y=rampa(x)
  % Esta funcion le asigna un valor de y a x, siguiendo dos criterios diferentes,
  % los cuales se encontraran en el practico del curso. 

  % se crea un vector de ceros "y" donde se pretenden guardar
  % los valores de la funcion
  y = zeros(size(x));
    
  %para cada elemento de x se calcula el valor de y
  for i = 1:length(x)
    if x(i) >= 4
      y(i) = (x(i)-6)^2;
    else 
      y(i) = x(i);
    end
  end
endfunction 

% ---------------------------------------------------------------
% 2) Comprobamos que la funcion tp4_rampa funciona correctamente
x=linspace(0,8,41);
y=rampa(x);
plot(x,y,'ro-','linewidth',2)
xlabel('x','fontsize',20)
ylabel('y','fontsize',20)
set(gca,'fontsize',16)
