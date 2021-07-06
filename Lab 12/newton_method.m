function [x, i] = newton_method(f, df,x, er = 1e-12, max_iter=100)
  for i=1:max_iter
    x0 = x - f(x)/df(x);
    if abs(x-x0) < er || abs(f(x0)) < er
      return
    endif
    x=x0;
  endfor
endfunction