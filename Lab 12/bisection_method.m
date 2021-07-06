function [c, i] = bisection_method(f, a, b, er = 1e-12, max_iter=100)
  for i=1:max_iter
    c = (a+b)/2;
    if abs(a-b) < er || abs(f(c)) < er
      return
    endif
    if f(a)*f(c) < 0
      b = c;
    else
      a = c;
    endif
  endfor
endfunction