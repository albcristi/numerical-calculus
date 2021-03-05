function cheby(n)
  # ex 2, point a
  T = @(n) @(t) cos(n*acos(t))
  x=linspace(-1,1,100);
  hold on
  for i=1:n
    plot(x, T(i)(x));
  endfor
  hold off
