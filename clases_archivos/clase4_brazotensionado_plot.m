function clase4_BrazoTensionado_plot(posB)
% Esta funcion grafica el esquema del brazo tensionado del curso de Ingeniate en Octave
%
% (C) MOCCAI - 2019
% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% coordenadas del "brazo" donde se fija el tensor
brazo = [0.0,0.0,0.0; 
         0.0,0.0,2.1;
         1.7,0.0,2.1];
tenB=[1.7,0.0,2.1;
      2.4,1.3,0.0];
auxP=[1.7,0.0,2.1;
      1.7,0.0,0.0;
      2.4,1.3,0.0];
      
%=====================================================
% A continuacion se representa graficamente el problema bajo
% estudio.
nB=[tenB(2,1)-tenB(1,1), tenB(2,2)-tenB(1,2), tenB(2,3)-tenB(1,3)];
nB=nB/norm(nB);

figure(1);clf
hold on
plot3(brazo(:,1),brazo(:,2),brazo(:,3),'ko-','markersize',12,'linewidth',8)
plot3( tenB(:,1), tenB(:,2), tenB(:,3),'bo-','markersize',12,'linewidth',4)
plot3( posB(:,1), posB(:,2), posB(:,3),'r--','linewidth',4)
plot3( posB(1,1), posB(1,2), posB(1,3),'rs','linewidth',4,'markersize',12)
plot3( auxP(:,1), auxP(:,2), auxP(:,3),'k--o','linewidth',3)
quiver3(tenB(1,1), tenB(1,2), tenB(1,3), nB(1), nB(2), nB(3), 'linewidth',4,'markersize',12)
hold off
text( 0.2,-0.2, 0.2,'O','fontsize',24)
text( 1.7, 0.0, 2.3,'A','fontsize',24)
text( 2.4, 1.3, 0.2,'B','fontsize',24)
text( mean(tenB(:,1)), mean(tenB(:,2)), mean(tenB(:,3)),'T','fontsize',24)
xlabel('x [m]','fontsize',20)
ylabel('y [m]','fontsize',20)
zlabel('z [m]','fontsize',20)
set(gca,'fontsize',20,'linewidth',1)
grid
box off
axis equal
xlim([-0.1,3.2])
ylim([-1.6,1.6])
zlim([-0.1,2.3])
fig1 = gcf ();
set(fig1, "numbertitle", "off", "name", "Mecánica Vectorial")

