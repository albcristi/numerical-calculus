[X,Y] = ginput();
clf;
hold on;
plot(X, Y, 'o');
P = polyfit(X, Y, 4);
Pc = linspace(0,2,100);
plot(Pc, polyval(P, Pc));
hold off;