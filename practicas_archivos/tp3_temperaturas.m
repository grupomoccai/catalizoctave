% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%

%%Farenheit en funcion de Celsius
C=0:0.1:100;
F=1.8*C+32;

%%Celsius en funcion de Farenheit
f=32:0.1:212;
c=(f-32)/1.8;



figure(1)
plot(C,F,'linewidth',2)
title('Farenheit en funcion de Celsius','fontsize',14)       
xlabel('Celsius','fontsize',14)
ylabel('Farenheit','fontsize',14)
grid on

figure(2)
plot(f,c,'linewidth',2)
title('Celsius en funcion de Farenheit','fontsize',14)       
xlabel('Celsius','fontsize',14)
ylabel('Farenheit','fontsize',14)
grid on

