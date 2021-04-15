%Plot, in the same figure, the graphs of the function f : [5; 5] ! R; f(x) =
%sin 2x and of the corresponding Hermite interpolation polynomial, considering
%15 equidistant nodes in [5; 5]

nodes = linspace(-5,5,15);
values = sin(2*nodes);
der_values = 2.*cos(2*nodes);

X = linspace(-5,5,500);

[H, D] = hermite_poly(nodes, values, der_values, X);

hold on;
plot(nodes, values, 'p','markerfacecolor', 'red');
plot(X, sin(2.*X), 'r');
plot(X, H, 'b');
title('sinus(2x)');
h = legend({"original values","fct sin(2x)", "hermite poly"}, "location", "east")
legend("right");
set(h, "textposition", "left");
set(h, "textcolor", [1 0 1]);
hold off;