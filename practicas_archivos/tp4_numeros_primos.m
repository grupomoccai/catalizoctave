% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% 
% Trabajo Practico 4


% Este script imprime los numeros primos mayores que 1 y menores que N=200
 
N=200;          %

disp("Los siguientes numeros son primos entre 1 y 200")
for i = 2:N
   for j = 2:N
      if(~mod(i,j)) 
         break; % Si existe el factor, no es primo
      end 
   end
   if(j > (i/j))
      fprintf('%d ', i);
   end
end
fprintf('\n');
