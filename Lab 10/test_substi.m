
A = randi(10, 5, 5);
A = triu(A); %put zeros
b = randi(10, 5, 1);

x = backwards_substitution(A, b)

disp(b);
disp(A*x);