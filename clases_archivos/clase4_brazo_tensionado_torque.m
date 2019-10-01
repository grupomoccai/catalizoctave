% Ejercicio: mecanica vectorial

% coordenadas del "brazo" donde se fija el tensor
brazo = [0.0,0.0,0.0; 
         0.0,0.0,2.1;
         1.7,0.0,2.1];
           

% El punto B se fija a una rueda de radio R=sqrt(1.3^2+0.7^2)
% ubicada en el plano xy (z=0).
% Definimos las posiciones del punto B como aquellos sobre un 
% circulo de radio R parametrizadas por alfa en [0,2pi];
Rten=sqrt(0.7^2+1.3^2);
alfa=linspace(0,2*pi,360)';
posB=Rten*[cos(alfa), sin(alfa),zeros(360,1)] + [1.7, 0, 0];

% Graficamos el esquema del brazo bajo tension
clase4_BrazoTensionado_plot(posB);

%=========================================================
% Calculamos y graficamos el momento torsor en O que realizado
% el cable tensor, T, parametrizado por el angulo alfa que determina
% la posicion del punto B en el plano xy.

T = 2.5; %norma de la tension en el cable en kN
Mnorm=zeros(360,1);

for i=1:360
  rB = posB(i,:);
  nT = (rB-rA)/norm(rB-rA);
  MOA= cross(rA,T*nT);
  Mnorm(i) = norm(MOA);
end

figure(2);clf
plot(alfa, Mnorm, 'r-', 'linewidth', 4)
xlabel('\alpha [rad]','fontsize',24)
ylabel('|M_O| [kJ]','fontsize',24)
xlim([0,2*pi])
set(gca,'fontsize',20,'linewidth',1,'xtick',[0,pi,2*pi],...
        'xticklabel',['0';'\pi'; '2\pi'])
set(gcf, "numbertitle", "off", "name", "Norma Momento Torsor en O")
