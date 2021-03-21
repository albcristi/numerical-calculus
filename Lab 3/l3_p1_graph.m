nodes = [1930:10:1980];
values = [123203,131669,150697,179323,203212,226505];
clf;
hold on;
plot(nodes, values, 'p','markerfacecolor', 'red');
x = linspace(1930,1980,1000);
plot(x, l3_p1(nodes,values,x));
hold off;