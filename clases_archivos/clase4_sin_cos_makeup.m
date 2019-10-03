% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Archivo de ordenes: sin_cos_makeup.m

t=linspace(0,2*pi,20)';

figure(1);clf
hold on
plot(t,cos(t),'ro- ','linewidth',3)
plot(t,sin(t),'bs--','linewidth',3)
hold off
axis tight
xlabel('t','fontsize',20)
hlg=legend('cos(t)','sin(t)','location','north');
legend boxoff
set(gca,'fontsize',20)
set(hlg,'fontsize',20,'fontweight','bold')
set(gca,'Xtick',0:pi/2:2*pi)
set(gca,'XtickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi'})
set(gcf,'numbertitle','off','name','Funciones Trigonometricas')

