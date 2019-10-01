% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
figure(1);clf %% le da un numero a la figura
hold on
ez1 = ezplot("sqrt(1-x^2)/2",[-1,1])  %% primera figura
ez2 = ezplot("x^2/2",[-1,1])          %% segunda figura
set(ez1,'color',[0 0 0],'linewidth',2)
set(ez2,'color',[0 0 0],'linewidth',2)  %% Ayuda: [R G B]
hold off
title(' ','fontsize',14)       
xlabel(' ','fontsize',14)
ylabel('  ','fontsize',14)
axis([-1.1,1.1,-0.1,0.6])
axis equal