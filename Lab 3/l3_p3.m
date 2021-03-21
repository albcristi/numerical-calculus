nodes = linspace(0,10,21);
f = @(x) (1+cos(x*pi))./(1+x);
values = f(nodes);
clc;
hold on;
plot(nodes, values, 'h', 'markerfacecolor', 'red');
x = l3_p1(nodes,values,
hold off;