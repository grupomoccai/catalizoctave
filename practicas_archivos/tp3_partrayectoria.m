% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%

close all
clear all

% vector columna de instantes de tiempo entre 0 y 3pi
N = 3*180;
tt= linspace(0,3*pi,N)';

% funciones parametricas de las posiciones en (x,y,z)
x=@(t) t.*cos(t)/2;
y=@(t) t.*sin(t)/3;
z=@(t) t;

% vector posicion
r=@(t) [x(t), y(t), z(t)];

%----------------------------------------------------------
% 1.1) Graficamos la trayectoria entre 0 y 3pi
figure(1);clf
plot3(x(tt),y(tt),z(tt),'r-','linewidth',2);
axis equal
xlabel('x(t)','fontsize',20)
ylabel('y(t)','fontsize',20)
zlabel('z(t)','fontsize',20)
set(gca,'fontsize',20)

%----------------------------------------------------------
% 1.2) Calculo de la longitud de la trayectoria entre 0 y 3pi

% calculo de la longitud recorrida en funcion de t
ss=zeros(N,1);

%==> completar

figure(4);clf
plot(tt,ss,'r-','linewidth',2);
xlabel('t','fontsize',20)
ylabel('s(t)','fontsize',20)
set(gca,'fontsize',20)



