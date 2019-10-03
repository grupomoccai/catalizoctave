% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
% Trabajo Practico 4
%

% Analisis Oasis Sur de Mendoza - Temperaturas Estacion INTA Rama Caida
clear all
close all


% Leemos los datos del archivo .csv
[fecha,hora,temp]=textread('temperaturas_INTARamaCaida_2016-2017.csv',"%s %s %f");

% 1) Graficar las temperaturas en funcion del tiempo

N=length(temp);
ndias=(1:N)/48;

figure(1);clf
plot(ndias, temp)
xlim([0,365])
xlabel('#dias','fontsize',20)
ylabel('ºC','fontsize',20)
set(gca,'fontsize',20,'linewidth',2)
  
% 2) Graficar la temperatura maxima diaria en funcion del tiempo
% 3) Graficar la temperatura minima diaria en funcion del tiempo
% 4) Graficar la temperatura media diaria en funcion del tiempo

%temperaturas diarias (48 mediciones)
tmin=zeros(1,N/48);
tmax=zeros(1,N/48);
tmed=zeros(1,N/48);

for id=1:N/48
  elemI = (id-1)*48+1:id*48;
  tempI = temp(elemI);
  tmin(id)=min(tempI);
  tmax(id)=max(tempI);
  tmed(id)=mean(tempI);
end

figure(2);clf
hold on
plot(tmin,'b-')
plot(tmax,'r-')
plot(tmed,'k-')
hold off
xlabel('#dias','fontsize',20)
ylabel('ºC','fontsize',20)
h=legend('T_{min}', 'T_{max}', 'T_{med}', "location","northwest");
xlim([0,365])
set(h,'fontsize',20)
set(gca,'fontsize',20,'linewidth',2)
set(gcf, "numbertitle", "off", "name", "Estacion Rama Caida")

% 5) Verifica que los valores reportados en el informe del INTA son correctos.
[tabs1,iabs1]=min(temp);
[tabs2,iabs2]=max(temp);

fprintf(1,'### La temperatura mínima es %4.2f ºC\n', tabs1);
fprintf(1,'### La temperatura máxima es %4.2f ºC\n', tabs2);
fprintf(1,'### La temperatura media  es %4.2f ºC\n', mean(temp));
 
% 6) Determinar el dia en que se han obtenido los valores de temperatura media, 
%    maxima y minima absoluta reportados en el informe del inta.

diamax = fecha{iabs1};
diamin = fecha{iabs2};
fprintf(1,'### La temperatura minima fue el %s\n', diamin);
fprintf(1,'### La temperatura maxima fue el %s\n', diamax);


% Determinamos el dia que tiene la minima temperatura y
%              el dia que tiene la maxima temperatura
[tminabs,idmin] = min(tmin);
[tmaxabs,idmax] = max(tmax);

figure(3);clf
hold on
plot(1:365, tmin,'b-')
plot(1:365, tmax,'r-')
plot(1:365, tmed,'k-')
plot(idmin, tminabs,'ks','markerfacecolor','cyan','markersize',15)
plot(idmax, tmaxabs,'ks','markerfacecolor','red','markersize',15)
hold off
xlabel('#dias','fontsize',20)
ylabel('ºC','fontsize',20)
h=legend('T_{min}', 'T_{max}', 'T_{med}', "location","northwest");
xlim([0,365])
set(h,'fontsize',20)
set(gca,'fontsize',20,'linewidth',2)
set(gcf, "numbertitle", "off", "name", "Estacion Rama Caida")
