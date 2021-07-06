function R = rep_trapezium(a, b, f, n)
  h = (b-a)/n;
  x = a:h:b;
  R = ((b-a)/(2*n))*(f(a)+f(b)+2*sum(f(x(2:end-1))));
endfunction
