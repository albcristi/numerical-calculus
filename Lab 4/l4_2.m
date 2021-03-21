%lab 4, exercice 2
nodes = [1 2 3 4 5];
values = [22 23 25 30 28];

%pct. a
X = [2.5];
result = newton_poly(nodes, values, X);
disp("Pounds of potates from a lot with 2.5 pounds of fertilizer");
disp(result);

%pct. b
X = linspace(0,6,1000);
clf;
hold on;
plot(nodes, values, 'p', 'markerfacecolor', 'red');
plot(X, newton_poly(nodes, values, X));
hold off;