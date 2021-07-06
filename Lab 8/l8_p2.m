f = @(x, y) log(x+2*y);
aprox = doub_trap(1.4, 2, 1, 1.5, f);
printf("Aproximation is: \n");
disp(aprox);