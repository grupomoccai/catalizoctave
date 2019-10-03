% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%

x = randn(1,1000); %Generamos vector

y = 100 + (x)*5; %Aplicamos la transformacion

%Calculamos media, desviacion estandar y variable
ymean = mean(y);
ystd = std(y);
yvar = var(y);

%Imprimimos los valores en la ventana de comandos
fprintf('La media es: %d\n',ymean)
fprintf('La desviacion estandar es: %d\n',ystd)
fprintf('La varianza es: %d\n',yvar);

%Determinamos maximo, minimo y los valores pedidos.
ymin = min(y)
ymax = max(y)
ymed = median(y)
yquan = quantile(y);
yquar1 = yquan(2) 
yquar3 = yquan(4)


