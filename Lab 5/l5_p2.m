nodes = [1 2];
values = [0 0.6931];
d_values = [1 0.5];
x = [1.5];
[H, D] = hermite_poly(nodes, values, d_values, x);
disp("Actual value for ln 1.5");
disp(log(x));
disp("Hermite poly value for ln 1.5");
disp(H);
printf("Absolute error for ln 1.5: %s\n", num2str(abs(log(x)-H)));
lower_bound = 0.1;
for iteration=1:10
  x = linspace(lower_bound,2,1000);
  [H, D] = hermite_poly(nodes, values, d_values, x);
  printf("Absolute error on interval: [%s ; 2] ---> ", mat2str(lower_bound));
  disp(max(abs(log(x)-H)));
  lower_bound = lower_bound / 10;
endfor