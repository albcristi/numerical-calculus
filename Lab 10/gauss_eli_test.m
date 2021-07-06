
A = randi(10, 5, 5);
b = randi(10, 5, 1);

x = gauss_elimination(A, b);

disp(b);
disp(A*x);