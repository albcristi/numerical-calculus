function ncheby(N)
  # ex2, part b
  x = linspace(-1,1,100)
  hold on
  T0 = @(x) ones(size(x))
  if N>=0
    plot(x, T0(x))
  endif
  T1 = @(x) x
  if N>=1
    plot(x, T1(x))
  endif
  for t=2:N
    T2 = @(x) 2*x.*T1(x)-T0(x)
    plot(x, T2(x))
    T0 = T1
    T1 = T2
  endfor
  hold off
