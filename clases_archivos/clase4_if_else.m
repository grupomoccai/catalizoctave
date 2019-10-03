% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
%ejemplo if-elseif-else 

x = ceil(rand(1,1)*10);
printf("\tVariable x=%d\n",x);

if (x==1)
		disp("Variable is 1")
elseif (x==6 || x==7)
		disp("Variable is either 6 or 7")
else
		disp("Variable is neither 1, 6 nor 7")
end
