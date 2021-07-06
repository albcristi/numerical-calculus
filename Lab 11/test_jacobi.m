n = 10;
A = diag(-ones(n-1,1), -1) +...
  diag(-ones(n-1,1), 1) +...
  diag(3*ones(n,1),0);
b = [2; ones(n-2, 1) ;2];

disp("Computed with Jacobi - col 1");
x_j = jacobi(A, b, 20);

disp("Computed with Gauss-Seidel - col 2");
x_g = gauss_seidel(A,b,20);

disp("Computed with SOR - col 3");
x_s = sor_method(A,b,20,1.15);
disp("Real solution");
disp(A\b);

disp([x_j, x_g,x_s]);