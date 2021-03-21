%lab 4, ex 3
nodes = linspace(0,6,13);
values = exp(sin(nodes));

clf;
hold on;
plot(nodes, values, 'p','markerfacecolor', 'red');

X = linspace(0,6,100);
fct_v = exp(sin(X));
plot(X, fct_v, 'r');
plot(X, newton_poly(nodes, values, X), 'b');
title('exp(sin(x)) on [0,6]');
h = legend({"fct(nodes)","Function plot", "Newton interpolation plot"}, "location", "east")
legend("right");
set(h, "textposition", "left");
set(h, "textcolor", [1 0 1]);
hold off;