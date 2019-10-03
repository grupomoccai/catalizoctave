function b = tp4_carga3_escalon(t)
%
% Esta funcion devuelve para cada instante de tiempo 
% el vector de carga del sistema de 5 mezcladores quimicos.
% La funcion modela el comportamiento de la tercer 
% componente de "b" en forma de un pulso escalon negativo.
% 
% Trabajo Practico 4
% 
% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)

if (t>=10) && (t<40)
    b = [1;0;3;0;0];
  else
    b = [1;0;4;0;0];
endif

