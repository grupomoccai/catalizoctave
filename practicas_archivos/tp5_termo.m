% Trabajo Practico 5
% 
% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%


% Planteamos las ecuaciones siguientes dentro de una funcion

% q(1)=10^(-9)*[(To+273)^4-(T(1)+273)^4];
% q(2)=4*(T(1)-T(2));
% q(3)=1.3*(T(2)-T(3))^(4/3);
% q1=q2=q3
% q1-q2 = q3-q2 = 0

clear all
close all

T0 = 90;
T3 = linspace(10,30,20);
T1 = zeros(20,1);
T2 = zeros(20,1);
Ti =[0,0] %<==== COMPLETAR CON SEMILLAS ADECUADAS

for i=1:20
    F=@(T) [0,0]; %<==== COMPLETAR CON ECUACIONES ADECUADAS
    [Tvec,fval]=fsolve(F,Ti);
    T1(i)=Tvec(1);
    T2(i)=Tvec(2);
end

plot(T3,T1,'-r','linewidth',3)
xlabel('T3','fontsize',14)
ylabel('T','fontsize',14)
hold on
plot(T3,T2,'-b','linewidth',3)
title("Temperaturas dentro del termo en funcion de T3",'fontsize',14)
legend ({"T1", "T2"}, "location", "northeast");

