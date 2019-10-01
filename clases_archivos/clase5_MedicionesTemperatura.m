clc 
close all
clear all

datos=dlmread('test_data.csv');
tiempo=1:length(datos);

figure(1)
hold on
title('Humedad','fontsize',30)
plot(tiempo,datos(:,1))
xlabel('Tiempo','fontsize',20)
ylabel('% Humedad','fontsize',20)
hold off

% datos de temperatura medidos en la incuvadora
T1=datos(:,2);
Tf2=datos(:,3);
Tf3=datos(:,4);

figure(2)
hold on
title('Temperaturas sin corregir','fontsize',30)
plot(tiempo,T1,'b',tiempo,Tf2,'g',tiempo,Tf3,'r')
xlabel('Tiempo','fontsize',20)
ylabel('Temperatura','fontsize',20)
hold off

%%Modelo de regresion lineal
C2=polyfit(Tf2,T1,2)
T2=(C2(1).*Tf2.**2)+(C2(2)*Tf2)+C2(3);
C3=polyfit(Tf3,T1,2)
T3=(C3(1).*Tf3.**2)+(C3(2)*Tf3)+C3(3);

figure(3)
hold on 
title('Temperaturas corregidas','fontsize',30)
plot(tiempo,T1,'b',tiempo,T2,'g',tiempo,T3,'r')
xlabel('Tiempo','fontsize',20)
ylabel('Temperatura','fontsize',20)
hold off

















