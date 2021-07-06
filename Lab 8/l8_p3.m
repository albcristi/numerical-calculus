n = [1 2 3 4 5];
f = @(x) (1-(75/110).^2*sin(x)).^(1/2);
for ind=1:length(n)
  aprox = rep_trapezium(0, 2*pi, f, n(ind));
  aprox = aprox*60*110./(110.^2-75.^2);
  printf("Aprximation for n=%d is:\n", n(ind));
  disp(aprox);
endfor