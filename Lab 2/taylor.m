function taylor(N)  # lab 2 problem 3  clf # clear plot  T = @(x) ones(size(x))  x = linspace(-1,3,200);  l = {'exp'}  if N>=0    hold on # put on the same graph multiple functions    plot(x, exp(x))    for n=1:N      T = @(x) T(x) + x.^n/factorial(n)      plot(x, T(x))      l{end+1}=['T' num2str(n)]
    endfor    legend(l)    hold off
  endif
