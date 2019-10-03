% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Trabajo Practico 4

% Respuesta transitoria o dinamica de la red de 5 mezcladores 
% de la figura 12.3 (Chapra y Canale, 5ta Ed, 2007).
close all
clear all

% Q01 c01 =  50 mg/min
% Q03 c03 = 160 mg/min
% Volumen de los 5 tanques:
% V1= 50 m3, V2 = 20 m3, V3 = 40 m3, V4 = 80 m3 y V5 = 100 m3

% Sistema de cinco mezcladores acoplados como en la figura 12.3.
A=[  0.12  0.000 -0.020 0.0000  0.000;
    -0.15  0.150  0.000 0.0000  0.000;
     0.00 -0.025  0.225 0.0000  0.000; 
     0.00  0.000 -0.100 0.1375 -0.025; 
    -0.03 -0.010  0.000 0.0000  0.040];
   
b =[1;0;4;0;0];

f =@(c) (b-A*c);

N = 10000;
tt=linspace(0,100,N);
c0=zeros(5,1);

Ct =lsode(f,c0,tt);

% Graficas de respuesta transitoria de la red de mezcladores 
% ver Fig. 28.3 Chapra y Canale, 5ta Ed, 2007.
% Observe que, con el tiempo, todos los mezcladores tienden a las 
% concentraciones en estado estacionario.

figure(1);clf
plot(tt,Ct,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('c (mg/m3)','fontsize',24)
h=legend('c_1','c_2','c_3','c_4','c_5');
set(h,'fontsize',24);
set(gca,'fontsize',24)


% ===================EJERCICIO ===========================
%   1) Se produce una variacion de la concentracion en t=10min en la
%      entrada del mezclador 1 el cual se aproxima por:
%           b(1) = 1+exp(-(t-10)^2).
%       1.a) grafique el la entrada b(1) en funcion del tiempo t.
%       1.b) determine las respuestas transitorias y grafique estas 
%   2) La carga en el mezclador 3 decrece en un 25% de forma abrupta en t=10min.
%      Luego de media hora se restablece subitamente el valor de entrada.
%       2.1) Cree una funcion carga3_escalon.m que modele el valor 
%            en la entrada b(t) en funcion del tiempo. Grafique b3(t).
%       2.2) determine las respuestas transitorias y grafique estas
%   3) Realice el ejercicio anterior, pero considerando que la carga
%      en el mezclador 3 se restablece de forma lineal, comenzando a los 30
%      minutos despues de detenerse, y alcanzando el valor original 30
%      minutos mas tarde.   

% === 1)

% Definimos la funcion de la variacion
qc1=@(t) 1+exp(-(t-10).^2)
% Expresamos luego el nuevo vector de carga b:
b2 =@(t) [qc1(t);0;4;0;0];
% Quedando la  funcion a resolver como:
f2 =@(c,t) (b2(t)-A*c);

Ct2= lsode(f2,c0,tt);


figure(2);clf
plot(tt,qc1(tt),'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('b_1 (mg/(s m3))','fontsize',24)
h=legend('b_1(t)');
set(h,'fontsize',24);
set(gca,'fontsize',24)

figure(3);clf
plot(tt,Ct2,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('c (mg/m3)','fontsize',24)
h=legend('c_1','c_2','c_3','c_4','c_5');
set(h,'fontsize',24);
set(gca,'fontsize',24)

% === 2)

bEsc3 = zeros(N,1);

for i=1:N
  QCentr   = tp4_carga3_escalon(tt(i));
  bEsc3(i) = QCentr(3);
end

figure(4);clf
plot(tt,bEsc3,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('b_3 (mg/(s m3))','fontsize',24)
h=legend('b_3(t)');
set(h,'fontsize',24);
set(gca,'fontsize',24)

f3=@(c,t) (tp4_carga3_escalon(t) - A*c);

Ct3= lsode(f3,c0,tt);

figure(5);clf
plot(tt,Ct3,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('c (mg/m3)','fontsize',24)
h=legend('c_1','c_2','c_3','c_4','c_5');
set(h,'fontsize',24);
set(gca,'fontsize',24)

% === 3)

bRam3 = zeros(N,1);

for i=1:N
  QCentr_  = tp4_carga3_rampa(tt(i));
  bRam3(i) = QCentr_(3);
end

figure(6);clf
plot(tt,bRam3,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('b_3 (mg/(s m3))','fontsize',24)
h=legend('b_3(t)');
set(h,'fontsize',24);
set(gca,'fontsize',24)

f3=@(c,t) (tp4_carga3_rampa(t) - A*c);

Ct3= lsode(f3,c0,tt);

figure(7);clf
plot(tt,Ct3,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('c (mg/m3)','fontsize',24)
h=legend('c_1','c_2','c_3','c_4','c_5');
set(h,'fontsize',24);
set(gca,'fontsize',24)
