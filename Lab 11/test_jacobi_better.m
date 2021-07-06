n = 10;
A = diag(-ones(n-1,1), -1) +...
  diag(-ones(n-1,1), 1) +...
  diag(3*ones(n,1),0);
b = [2; ones(n-2, 1) ;2];


[x, iterations] = jacobi_better(A,b);
x
iterations
