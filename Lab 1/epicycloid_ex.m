##epicycloid exercice

x = @(t,a,b) (a+b)*cos(t)-b*cos((a/b+1)*t);
y = @(t,a,b) (a+b)*sin(t)-b*sin((a/b+1)*t);

t = linspace(0,10*pi,1000);
a = 7; 
b = 3;
##plot(x(t,a,b),y(t,a,b))

## last exercice
g = @(x, y) exp(-((x-1/2).^2+(y-1/2).^2));
rangeForX = linspace(-2,2,100);
rangeForY = linspace(-4,4,200);

[X,Y] = meshgrid(rangeForX, rangeForY);
surf(X,Y,g(X,Y));