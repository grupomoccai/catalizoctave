function b = tp4_carga3_rampa(t)
%
% Esta funcion devuelve para cada instante de tiempo 
% el vector de carga del sistema de 5 mezcladores quimicos.
% La funcion modela el comportamiento de la tercer 
% componente de "b" en forma de un pulso escalon negativo, 
% que luego se restablece de forma gradual.
% 
% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Trabajo Practico 4

if (t>=10) && (t<40)
    b = [1;0;3;0;0];
elseif (t>=40) && (t<70)
    q3=0; %<==== COMPLETAR
    b = [1;0;q3;0;0];
  else
    b = [1;0;4;0;0];
endif

