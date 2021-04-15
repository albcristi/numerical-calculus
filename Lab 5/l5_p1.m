nodes=[0 3 5 8 13];
values=[0 225 383 623 993];
der_values=[75 77 80 74 72];
% get result for t=10
[H,D] = hermite_poly(nodes, values, der_values, [10]);
disp("Estimative position at t=10");
disp(H);
disp("Estimative speed at t=10");
disp(D);

%plot values in [0,13]
x = linspace(0,13,500);
[H,D] = hermite_poly(nodes, values, der_values, x);
clf;

subplot(1,2,1);
grid on;
hold on;
plot(nodes, values, 'p','markerfacecolor', 'red');
plot(x, H, 'r');
h = legend({"original values","hermite poly"}, "location", "east")
legend("right");
set(h, "textposition", "left");
set(h, "textcolor", [1 0 1]);
title('time-distance');

subplot(1,2,2);
grid on;
hold on;
plot(nodes, der_values, 'p','markerfacecolor', 'red');
plot(x, D, 'b');
title('time-speed');
h = legend({"original values","hermite deriv"}, "location", "east")
legend("right");
set(h, "textposition", "left");
set(h, "textcolor", [1 0 1]);
hold off;