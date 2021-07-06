%a
f=@(x) 2./(1+x.^2);
aprox = rep_trapezium(0, 1, f,1);
printf("Aproximation of I using trapezium is %s\n", num2str(aprox));
%b
clf;
hold on;
pkg load matgeom;
poly = [ 0 0; 0 f(0); 1 f(1); 1 0];
drawPolygon(poly, 'r');
x = linspace(0,1,100);
plot(x, f(x), 'b');
hold off;
%c 
aprox = rep_simpson(0, 1, f, 1);
printf("Aproximation of I using Simpson is %s\n", num2str(aprox));