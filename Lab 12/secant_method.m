function [x, i] = secant_method(f, xn_1, xn, er = 1e-12, max_iter=100)
  for i=1:max_iter
    x = (xn_1*f(xn)-xn*f(xn_1))/(f(xn)-f(xn_1));
    if abs(xn-xn_1) < er || abs(f(x)) < er
      return
    endif
    xn_1=xn;
    xn=x;
  endfor
endfunction