f = @(x) 1./(4+sin(20*x));
n = [10 30];
for ind=1:length(n)
  aprox = rep_simpson(0, pi, f, n(ind));
  printf("Aproximation for n=%d is\n", n(ind));
  disp(aprox);
endfor