% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
% 
% Interpolacion lineal de datos en tablas termodinamicas
%
% Ejercicio 36
% 1) Definir las columnas a partir de las cuales interpolamos (en este
% caso las columnas Temperatura y Energia interna)

T = [100, 160, 200, 240, 300, 400, 500];
u = [2506.7, 2597.8, 2658.1, 2718.5, 2810.4, 2967.9, 3131.6];


plot(T,u,'-bo','linewidth',2,'markersize',15)
xlabel ("Temperatura");
ylabel ("Energia interna");
hold on


% 2) Utilizar la funcion de interpolacion lineal para los siguientes casos:
% 2.a) Energia interna para T = 225 °C

T1 = 225;
E1 = interp1(T,u,T1);
plot(T1,E1,'ks','markersize',15,'linewidth',2)
hold on

% 2.b) Temperatura para u =  2735 kJ/kg.

E2 = 2735;
T2 = interp1(u,T,E2);
plot(T2,E2,'rs','markersize',15,'linewidth',2)
hold on
