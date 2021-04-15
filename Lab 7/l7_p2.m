nodes = [0 10 20 30 40 60 80 100];
values = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];
degrees = [7];
clf;
hold on;
plot(nodes, values, 'o');
X = linspace(1, 100, 5000);
for i=1:length(degrees)
  P = polyfit(nodes, values, degrees(i));
  printf("Deegre is: %i\n", degrees(i));
  val = polyval(P, 45);
  printf("Aprox: %s ---> real val: 0.095848\n", num2str(val));
  plot(X, polyval(P, X));
endfor