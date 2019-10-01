%ejemplo switch-case-otherwise

x = ceil(rand(1,1)*10);

printf("\tVariable x=%d\n",x);


switch (x)
	case 1
		disp("variable is 1")
	case {6, 7}
		disp("variable is either 6 or 7")
	otherwise
		disp("variable is neither 1, 6 nor 7")
end