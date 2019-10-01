function val=clase4_raizpote(x,y)
% Esta funcion recibe dos numeros enteros y los suma. 
% Si la suma es par devuelve la raiz de la suma.
% Si la suma es impar devuelve la suma al cuadrado.
%
% Ejemplo:
% x=ceil(rand(1,1)*10);
% y=ceil(rand(1,1)*10);
% val = raizpote(x,y)
%
%
% (C) Octave 2019. FCAI-UNCuyo.

s=x+y;

if (mod(s,2)) %1 verdadero = impar
  disp('La suma de x e y es impar')
  val = s*s;
else
  disp('La suma de x e y es par')
  val = sqrt(s);
end