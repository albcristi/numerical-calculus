%lab 4, exercice 1
nodes = [1 1.5 2 3 4];
values = [0 0.17609 0.30103 0.47712 0.60206];
X = [2.5 3.25];

%part 1
disp("Aproximations of lg 2.5 and lg 3.25:");
aprox = newton_poly(nodes, values, X);
disp(aprox);
%part 2
i = [10:35];
yi = i ./ 10;
max_int_err = max(abs(log10(yi)-newton_poly(nodes, values, yi)));
disp("Maximum interpolation error for i = 10,35 and yi = i/10 is:");
disp(max_int_err);