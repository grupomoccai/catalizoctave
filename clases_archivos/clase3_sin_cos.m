% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Este es un ejercicio para probar las posibilidades con plot
clear
close all

x=[-2*pi:pi/6:2*pi];
figure(10);clf
pause(3)

hold on
plot(x,sin(x),'ro-','linewidth',2)
plot(x,cos(x),'bx--','linewidth',2)
hold off
pause(3)

title('Funciones seno(x) y coseno(x)','fontsize',20)
xlabel('angulo en radianes','fontsize',20)
ylabel('valor de la funcion','fontsize',20)
leg=legend('sen','cos')
axis([-7,7,-1.5,1.5])
axis('on'), grid
pause(3)

set(leg,'fontsize',16)
set(gca,'fontsize',16)
set(gcf,"numbertitle","off","name","trigonometricas")
