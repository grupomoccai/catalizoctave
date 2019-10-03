% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Ejercicio 38
% 
% Regresion polinomica - Capacidad calorifica propano
%
% Buscamos encontrar los coeficientes de regresion, considerando polinomios
% de grado 2 y 3,. Ingresamos los datos experimentales en dos matrices (T y Cp).

T_exp  = [ 50 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 ];
Cp_exp = [ 34.06 41.3 56.07 73.93 94.01 112.59 128.7 142.67 154.77 163.35 174.6 182.67 189.74 195.85 201.21 205.89];

% Buscamos los coeficientes de ambos polinomios:

Cp2 = polyfit(T_exp,Cp_exp,2); % Coeficientes polinomio grado 2
Cp3 = polyfit(T_exp,Cp_exp,3); % Coeficientes polinomio grado 3

T = 50:10:1500;

% Obtenemos los polinomios correspondientes para graficar y comparar.

poli2 = polyval(Cp2,T);
poli3 = polyval(Cp3,T);

scatter(T_exp,Cp_exp,10,'filled')
xlim([0 1500])
xlabel ('Temperatura','fontsize',14)
ylabel ('Capacidad calorifica','fontsize',14)
hold on
plot(T,poli2,'r--','linewidth',3)
plot(T,poli3,'k-','linewidth',3)
hold off

% Interpretar los resultados obtenidos
