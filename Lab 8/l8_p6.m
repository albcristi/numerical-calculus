
x = [0.5];
n = [4 10];
f = @(t) exp(-t.^2);
real_value = [0.5204998];
for i=1:length(x)
  printf("------------------\n");
  printf("Aproximations for x=%d\n", x(i));
  for j=1:length(n)
    aproximation = rep_simpson(0, x(i), f, n(j));
    aproximation = aproximation*2./sqrt(pi);
    m1 = max(real_value(i), aproximation);
    m2 = min(real_value(i), aproximation);
    acc = m2./m1;
    acc = acc * 100;
    printf("Aproximation for n=%d is:\n", n(j));
    disp(aproximation);
    printf("Accuracy is: %f%%\n", acc);
  endfor
   printf("------------------\n");
endfor